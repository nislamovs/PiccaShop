package com.piccashop.springboot.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.piccashop.springboot.model.Product;
import com.piccashop.springboot.service.ProductService;
import com.piccashop.springboot.util.CustomErrorType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/api")
public class ProductController {

    public static final Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    ProductService productService; //Service which will do all data retrieval/manipulation work

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ResponseEntity<List<Product>> listAllProducts(@RequestParam(value="PageSize", required = false, defaultValue = "5") Integer pageSize,
                                                         @RequestParam(value="PageNumber", required = false, defaultValue = "1") Integer pageNumber,
                                                         @RequestParam(value="OrderDirection", required = false, defaultValue = "asc") String orderDirection,
                                                         @RequestParam(value="OrderBy", required = false, defaultValue = "id") String orderBy) {

        System.out.println(pageSize + " : " + pageNumber + " : " + orderBy + " : " + orderDirection);
        Page<Product> products = productService.getAllProducts(pageSize, pageNumber, orderDirection, orderBy);
        long count = productService.getProductCount();

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("product-count", String.valueOf(count));

        return ObjectUtils.isEmpty(products) ? new ResponseEntity(HttpStatus.NO_CONTENT)
                                             : new ResponseEntity<List<Product>>(products.getContent(), responseHeaders, HttpStatus.OK);
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> getProduct(@PathVariable("id") long id) {
        Product product = productService.getProductById(id);
        return ObjectUtils.isEmpty(product) ? new ResponseEntity(HttpStatus.NO_CONTENT)
                                            : new ResponseEntity<Product>(product, HttpStatus.OK);
    }

    @RequestMapping(value = "/product/image/{id}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getProductImage(@PathVariable Long id) {

        byte[] image = productService.getProductImage(id);

        if(image.length == 0) {
            return new ResponseEntity<byte[]>(HttpStatus.NO_CONTENT);
        } else {
            HttpHeaders httpHeaders = new HttpHeaders();
            httpHeaders.setContentType(MediaType.IMAGE_JPEG);
            return new ResponseEntity<byte[]>(image, httpHeaders, HttpStatus.OK);
        }
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public ResponseEntity<?> createProduct(@RequestPart("Product") String prod,
                                           @RequestParam(value="image") MultipartFile file) throws IOException {

        logger.info("Creating Product : {}", prod);

        Product product = new ObjectMapper().readValue(prod, Product.class);
        product.setImage(file.getBytes());

        if (productService.isProductExist(product)) {
            logger.error("Unable to create. A Product with name {} already exist", product.getName());
            return new ResponseEntity(new CustomErrorType("Unable to create. A Product with name " +
                    product.getName() + " already exist."),HttpStatus.CONFLICT);
        }
        productService.saveProduct(product);

        return new ResponseEntity<String>(HttpStatus.CREATED);
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> updateProduct(@PathVariable("id") long id,
                                           @RequestPart("Product") String prod,
                                           @RequestParam(value="image") MultipartFile file) throws IOException {

        Product product = new ObjectMapper().readValue(prod, Product.class);
        product.setImage(file.getBytes());
        long paramId = product.getId();

        if (product.getId() != id) {
            logger.error("Id from payload not equal to id from path param. {}, {}", paramId, id);
            return new ResponseEntity(new CustomErrorType("Id from payload {" + id + "} not equal to id from path param {" + paramId + "}"),
                    HttpStatus.BAD_REQUEST);
        }

        Product currentProduct = productService.getProductById(id);
        if (currentProduct == null) {
            logger.error("Unable to update. Product with id {} not found.", id);
            return new ResponseEntity(new CustomErrorType("Unable to update. Product with id " + id + " not found."),
                    HttpStatus.NOT_FOUND);
        }

        logger.info("Updating product with id {}", product.getId());

        productService.updateProduct(product);
        return new ResponseEntity<Product>(product, HttpStatus.OK);
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> deleteUser(@PathVariable("id") long id) throws IOException {
        logger.info("Fetching & Deleting product with id {}", id);

        Product product = productService.getProductById(id);
        if (product == null) {
            logger.error("Unable to delete. Product with id {} not found.", id);
            return new ResponseEntity(new CustomErrorType("Unable to delete. Product with id " + id + " not found."),
                    HttpStatus.NOT_FOUND);
        }
        productService.deleteProduct(id);
        return new ResponseEntity<Product>(HttpStatus.NO_CONTENT);
    }

    @RequestMapping(value = "/product", method = RequestMethod.DELETE)
    public ResponseEntity<Product> deleteAllProducts() throws IOException {
        logger.info("Deleting All Products");

        productService.deleteAllProducts();
        return new ResponseEntity<Product>(HttpStatus.NO_CONTENT);
    }
}
