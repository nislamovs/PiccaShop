package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Product;
import org.springframework.data.domain.Page;

public interface ProductService {

    Product getProductById(Long id);

    Product getProductByName(String name);

    Page<Product> getAllProducts(Integer pageSize, Integer pageNumber, String orderDirection, String orderBy);

    void saveProduct(Product product);

    void updateProduct(Product product);

    void deleteProduct(Long id);

    void deleteAllProducts();

    boolean isProductExist(Product product);

    byte[] getProductImage(Long id);

    long getProductCount();
}
