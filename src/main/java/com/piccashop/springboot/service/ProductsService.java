package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Products;

public interface ProductsService {

    Products findById(Long id);

    Products findByName(String name);
}
