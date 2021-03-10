package com.example.b.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login {

    /**
     * 登录
     *
     * @return
     */
    @RequestMapping("/log")
    public String logIn() {
        return "login";
    }
}
