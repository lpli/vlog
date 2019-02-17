package com.jason.module.security.controller;

import com.jason.module.security.entity.User;
import com.jason.module.security.util.HttpUtil;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpMediaTypeException;
import org.springframework.web.bind.annotation.*;
import sun.plugin.liveconnect.SecurityContextHelper;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

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




    /**
     * 主页
     * @return
     */
    @RequestMapping(value={"/index","/"},produces = "text/html")
    public String index(){
        return "index";
    }

    @RequestMapping(value={"/403"},produces = "text/html")
    public String forbidden(){
        return "forbidden";
    }

}
