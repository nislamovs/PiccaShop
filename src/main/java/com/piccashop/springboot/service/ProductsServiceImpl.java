package com.piccashop.springboot.service;

import com.piccashop.springboot.model.Products;
import com.piccashop.springboot.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("productsService")
@Transactional
public class ProductsServiceImpl implements ProductsService{

    @Autowired
    private ProductsRepository productsRepository;

    public Products findById(Long id) {
        return productsRepository.findOne(id);
    }

    public Products findByName(String name) {
        return productsRepository.findByName(name);
    }
}
