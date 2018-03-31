package com.piccashop.springboot.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.piccashop.springboot.model.Products;
import com.piccashop.springboot.service.ProductsService;
import com.piccashop.springboot.service.responses.ResponseMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/doc")
public class ProductsController {

    @Autowired
    ProductsService productsService;

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody
    ResponseMetadata handleFileUpload(@RequestPart("Product") String pd, @RequestParam(value="image") MultipartFile file) throws IOException {
        Products product = new ObjectMapper().readValue(pd, Products.class);
        product.setImage(file.getBytes());
        System.out.println(product.toString());
        return productsService.save(product);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public HttpEntity<byte[]> getDocument(@PathVariable Long id) {
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setContentType(MediaType.IMAGE_JPEG);
        return new ResponseEntity<byte[]>(productsService.getDocumentFile(id), httpHeaders, HttpStatus.OK);
    }

    @RequestMapping(method = RequestMethod.GET)
    public @ResponseBody
    List<Products> getDocument() {
        return productsService.findAll();
    }

}
