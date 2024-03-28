package com.nixagh.web.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author nghia.nguyen-dinh
 * @since 3/28/2024 at 1:25 PM
 */
@RestController
public class PingController {
    @GetMapping("/ping")
    public String ping() {
        return "Pong";
    }
}
