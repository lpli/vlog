package com.jason.module.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    /**
     * 登录页面
     * @return
     */
    @GetMapping(value = "/login",produces = "text/html")
    public String loginPage(){
        return "login";
    }


    /**
     * 主页
     * @return
     */
    @RequestMapping(value={"/index","/"},produces = "text/html")
    public String index(){
        return "index";
    }



}
