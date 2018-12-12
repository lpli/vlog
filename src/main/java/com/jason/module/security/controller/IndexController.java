package com.jason.module.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IndexController {
    /**
     * 登录页面
     * @return
     */
    @GetMapping(value = "/loginPage",produces = "text/html")
    public String loginPage(){
        return "login";
    }


    @PostMapping("/login")
    public String login(String username,String password){
        return "index";
    }
}
