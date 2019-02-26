package com.jason.module.security.controller;

import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.UserAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class BaseController {


    protected UserDto getToken(){
        return (UserDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }

    protected List<Long> getRoleIds(){
        List<Long> ids = new ArrayList<>();
        List<UserAuthority>  list = (List<UserAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        for(UserAuthority authority:list){
            ids.add(authority.getRole().getId());
        }
        return ids;
    }

    protected  boolean isAdmin(String code){
        List<UserAuthority>  list = (List<UserAuthority>) getToken().getAuthorities();
        for(UserAuthority authority:list){
            if(code.equals(authority.getAuthority())){
                return true;
            }
        }
        return false;
    }

}
