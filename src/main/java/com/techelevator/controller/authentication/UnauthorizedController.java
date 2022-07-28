package com.techelevator.controller.authentication;


import com.techelevator.authentication.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class UnauthorizedController {
    @ExceptionHandler(UnauthorizedException.class)
    public String displayUnauthorizedPage(){
        return "authentication/unauthorized";
    }

}