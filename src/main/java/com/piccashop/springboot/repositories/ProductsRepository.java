package com.piccashop.springboot.repositories;

import com.piccashop.springboot.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsRepository extends JpaRepository<Products, Long> {

    Products findByName(String name);
}