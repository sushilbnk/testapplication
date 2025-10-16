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
    @GetMapping("/userid")
    public String sayUserId() {
        return "Sushil User ID: 007";
        //
    }
    @GetMapping("/username")
    public String sayUserName() {
        return "User name is : Lenin";
        //
    }
    @GetMapping("/userphone")
    public String sayUserphone() {
        return "User phone number is : 9988776655";
        //
    }

//
}
