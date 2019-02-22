package com.jason.module.security.controller;

import com.jason.module.security.entity.UserAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.List;

public class BaseController {


    protected UserDetails getTokenInfo(){
        return (UserDetails) SecurityContextHolder.getContext().getAuthentication().getDetails();
    }

    protected List<Long> getRoleIds(){
        UserDetails userDetails =  getTokenInfo();
        List<UserAuthority> userAuthorities = (List<UserAuthority>) userDetails.getAuthorities();
        List<Long> roleIds = new ArrayList<>();
        for(UserAuthority userAuthority:userAuthorities){
            roleIds.add(userAuthority.getRole().getId());
        }
        return roleIds;
    }

}
