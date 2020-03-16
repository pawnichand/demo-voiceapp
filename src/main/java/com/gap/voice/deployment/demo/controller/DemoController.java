package com.gap.voice.deployment.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    @GetMapping("/")
    public String deployed () {
        return "Application successfully deployed using Jenkins through voice command";
    }
}
