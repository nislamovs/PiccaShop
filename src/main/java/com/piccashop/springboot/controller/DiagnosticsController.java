package com.piccashop.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.ws.rs.BadRequestException;


@RestController
@RequestMapping(value = "/api")
public class DiagnosticsController {

    public static final Logger logger = LoggerFactory.getLogger(DiagnosticsController.class);

    @RequestMapping(value="/health/", method = RequestMethod.GET)
    public ResponseEntity<?> healthcheck() {
        return new ResponseEntity<String>("Piccashop works fine!", HttpStatus.OK);
    }

    @RequestMapping(value="/exception/{responseCode}", method = RequestMethod.GET)
    public ResponseEntity<?> raiseException(@PathVariable("responseCode") int responseCode) throws Exception {

        if (responseCode == 404)
            throw new BadRequestException("Bad request exception test.");
        else if (responseCode == 500)
            throw new Exception("Internal server error exception test.");

        return new ResponseEntity<String>("Nothing was thrown!!! Requested response code : " +
                String.valueOf(responseCode), HttpStatus.OK);
    }

}