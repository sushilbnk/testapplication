package com.example.testapplication.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("/user")
    public String sayHello() {
        return "Hello, World!";
        //
    }
    @GetMapping("/userId")
    public String sayUserId() {
        return "Sushil User ID: 007";
        //
    }

//
}
