package com.piccashop.springboot.controller;

import com.piccashop.springboot.util.CustomErrorType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.validation.ValidationException;
import javax.ws.rs.BadRequestException;

import static java.time.LocalDateTime.now;

@Slf4j
@ControllerAdvice
public class ExceptionHandlingController {

    @Autowired
    Environment environment;

    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ExceptionHandler({ValidationException.class, BadRequestException.class})
    @ResponseBody
    public CustomErrorType handleValidationException(final Exception ex) {
        log.info("Bad requests " + ex.getMessage());
        return new CustomErrorType(ex.getMessage());
    }

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public CustomErrorType handleGenericException(final Exception ex) {
        log.error("Generic exception: ", ex);
        final String message = "Unexpected problem, please contact support team "
                + environment.getProperty("email.support")
                + " with time stamp " + now() + " and short description.";
        return new CustomErrorType(message);
    }
}
