package com.piccashop.springboot;

import com.piccashop.springboot.configuration.JpaConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;


@Import(JpaConfiguration.class)
//@EnableAutoConfiguration
@SpringBootApplication(scanBasePackages={"com.piccashop.springboot"})
public class PiccaShop {

	public static void main(String[] args) {
		SpringApplication.run(PiccaShop.class, args);
	}

//	@Override
//	public void configurePathMatch(PathMatchConfigurer configurer) {
//		super.configurePathMatch(configurer);
//
//		configurer.setUseSuffixPatternMatch(false);
//	}
}
