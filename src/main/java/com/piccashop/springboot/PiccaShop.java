package com.piccashop.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.piccashop.springboot.configuration.JpaConfiguration;


@Import(JpaConfiguration.class)
@SpringBootApplication(scanBasePackages={"com.piccashop.springboot"})
public class PiccaShop {

	public static void main(String[] args) {
		SpringApplication.run(PiccaShop.class, args);
	}
}
