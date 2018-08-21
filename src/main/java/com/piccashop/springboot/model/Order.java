package com.piccashop.springboot.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name="orders")
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Order implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    @Column(name="order_details_id", nullable=false)
    private Long order_details_id;

    @NotEmpty
    @Column(name="request_datetime", nullable=false)
    private Timestamp request_datetime;

    @Column(name="delivery_datetime")
    private Timestamp delivery_datetime;

    @NotEmpty
    @Column(name="client", nullable=false)
    private String client;

    @NotEmpty
    @Column(name="address", nullable=false)
    private String address;

    @NotEmpty
    @Column(name="phonenumber", nullable=false)
    private String phonenumber;

    @Column(name="doorcode")
    private String doorcode;

    @Column(name="client_comments")
    private String client_comments;

    @Column(name="courier_comments")
    private String courier_comments;

    @NotEmpty
    @Column(name="payment_type", nullable=false)
    private Long payment_type;

    @NotEmpty
    @Column(name="courier", nullable=false)
    private String courier;

    @NotEmpty
    @Column(name="call_operator", nullable=false)
    private String call_operator;

    @NotEmpty
    @Column(name="email", nullable=false)
    private String email;

    @NotEmpty
    @Column(name="is_company", nullable=false)
    private String is_company;

    @Column(name="company_name")
    private String company_name;

    @NotEmpty
    @Column(name="total_cost", nullable=false)
    private Double total_cost;

    @NotEmpty
    @Column(name="delivery_cost", nullable=false)
    private Double delivery_cost;

    @NotEmpty
    @Column(name="tax_percent", nullable=false)
    private Long tax_percent;

    @NotEmpty
    @Column(name="discount_percent", nullable=false)
    private Long discount_percent;

    @NotEmpty
    @Column(name="total_cost_with_tax", nullable=false)
    private Double total_cost_with_tax;

    @Column(name="order_finalized")
    private String order_finalized;
}
