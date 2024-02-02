package com.example.helloexample;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/")
    public String holaMundo() {
        return "Hola mundo, mi nombre es Alejandro.";
    }
}