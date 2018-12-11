package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.entity.User;
import com.jason.module.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userService.getOne(new QueryWrapper<User>().eq("name",s));
    }
}
