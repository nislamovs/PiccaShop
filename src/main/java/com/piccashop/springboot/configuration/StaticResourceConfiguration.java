package com.piccashop.springboot.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@Profile("docker")
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("css/**")
                .addResourceLocations("./classpath:static/css/");

        registry.addResourceHandler("js/**")
                .addResourceLocations("./classpath:static/js/");

        registry.addResourceHandler("fonts/**")
                .addResourceLocations("./classpath:static/fonts/");

        registry.addResourceHandler("images/**")
                .addResourceLocations("./classpath:static/images/");
    }
}