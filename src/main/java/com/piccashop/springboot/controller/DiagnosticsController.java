package com.piccashop.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "/api")
public class DiagnosticsController {

    public static final Logger logger = LoggerFactory.getLogger(DiagnosticsController.class);

    @RequestMapping(name="/health/", method = RequestMethod.GET)
    public ResponseEntity<?> health() {
        return new ResponseEntity<String>("Piccashop works fine!", HttpStatus.OK);
    }

}