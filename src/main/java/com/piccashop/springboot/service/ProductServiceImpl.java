package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Product;
import com.piccashop.springboot.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("productsService")
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Product getProductById(Long id) {
        return productRepository.findOne(id);
    }

    public Product getProductByName(String name) {
        return productRepository.findByName(name);
    }

    public Page<Product> getAllProducts(Integer pageSize, Integer pageNumber, String orderDirection, String orderBy) {
        if (pageNumber == null) pageNumber = 1;
        if (pageSize == null) pageSize = 5;
        if (orderDirection == null) orderDirection = "asc";
        if (orderBy == null) orderBy = "id";

        Pageable selectedRecords = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.fromString(orderDirection), orderBy);
        return productRepository.findAll(selectedRecords);
    }

    public void saveProduct(Product product) {
        productRepository.save(product);
    }

    public void updateProduct(Product product) {
        saveProduct(product);
    }

    public void deleteProduct(Long id) {
        productRepository.delete(id);
    }

    public void deleteAllProducts() {
        productRepository.deleteAll();
    }

    public boolean isProductExist(Product product) {
        return getProductByName(product.getName()) != null;
    }

    public byte[] getProductImage(Long id) {
        return productRepository.findOne(id).getImage();
    }

    public long getProductCount() { return productRepository.count(); }

}
