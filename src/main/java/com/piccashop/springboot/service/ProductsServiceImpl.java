package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Products;
import com.piccashop.springboot.repositories.ProductsRepository;
import com.piccashop.springboot.service.responses.ResponseMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;

@Service("productsService")
@Transactional
public class ProductsServiceImpl implements ProductsService {

    @Autowired
    private ProductsRepository productsRepository;

    public Products findById(Long id) {
        return productsRepository.findOne(id);
    }

    public Products findByName(String name) {
        return productsRepository.findByName(name);
    }

    @Override
    public ResponseMetadata save(Products product) throws IOException {

        productsRepository.save(product);
        ResponseMetadata metadata = new ResponseMetadata();
        metadata.setMessage("success");
        metadata.setStatus(200);
        return metadata;
    }

    @Override
    public byte[] getDocumentFile(Long id) {
        return productsRepository.findOne(id).getImage();
    }

    @Override
    public List<Products> findAll() {
        return (List<Products>) productsRepository.findAll();
    }
}
