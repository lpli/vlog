package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.User;
import com.jason.module.security.entity.UserAuthority;
import com.jason.module.security.service.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
@CacheConfig(cacheNames = "tokenCache")
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userService.getOne(new QueryWrapper<User>().eq("user_name", username));
        if (user == null) {
            throw new UsernameNotFoundException("用户不存在");
        }
        List<Role> roleList = roleService.getRoleList(user.getId());
        List<UserAuthority> userAuthorities = new ArrayList<>();
        roleList.forEach((role) -> {
            userAuthorities.add(new UserAuthority(role));
        });
        UserDto userDto = new UserDto();
        BeanUtils.copyProperties(user,userDto);
        userDto.setUserAuthorityList(userAuthorities);
        return userDto;
    }

    @CacheEvict(key = "'user_'+#username")
    public String removeToken(String username){
        return "delete cache:"+username;
    }
}
