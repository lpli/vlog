package com.jason.module.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    /**
     * 登录页面
     * @return
     */
    @GetMapping(value = "/loginPage",produces = "text/html")
    public String login(){
        return "login";
    }
}
