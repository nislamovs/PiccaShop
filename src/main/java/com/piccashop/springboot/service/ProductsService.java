package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Products;
import com.piccashop.springboot.service.responses.ResponseMetadata;

import java.io.IOException;
import java.util.List;

public interface ProductsService {

    Products findById(Long id);

    Products findByName(String name);

    ResponseMetadata save(Products product) throws IOException;

    byte[] getDocumentFile(Long id);

    List<Products> findAll();
}
