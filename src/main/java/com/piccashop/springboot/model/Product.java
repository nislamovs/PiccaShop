package com.piccashop.springboot.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="products")
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    @Column(name="CATEGORY", nullable=false)
    private String category;

    @NotEmpty
    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "COST", nullable = false)
    private Double cost;

    @Column(name = "IMAGE", nullable = false)
    @Lob
    private byte[] image;
}