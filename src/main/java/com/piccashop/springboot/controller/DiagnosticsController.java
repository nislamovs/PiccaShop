package com.piccashop.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.net.URL;
import java.net.URLClassLoader;


@RestController
@RequestMapping(value = "/api")
public class DiagnosticsController {

    public static final Logger logger = LoggerFactory.getLogger(DiagnosticsController.class);

    @RequestMapping(name="/health/", method = RequestMethod.GET)
    public ResponseEntity<?> health() {

        ClassLoader cl = ClassLoader.getSystemClassLoader();

        URL[] urls = ((URLClassLoader)cl).getURLs();
        String response = "";
        for(URL url: urls){
            response += url.getFile();
        }

        return new ResponseEntity<String>(response, HttpStatus.OK);
    }

}