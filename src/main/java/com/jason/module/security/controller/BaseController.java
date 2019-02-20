package com.jason.module.security.controller;

import com.jason.module.security.service.impl.TokenUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseController {

    @Autowired
    private TokenUserDetailService tokenUserDetailService;

    protected UserDetails getTokenInfo(HttpServletRequest request, HttpServletResponse response){


        return null;
    }
}
