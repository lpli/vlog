package com.jason.module.security.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.User;
import com.jason.module.security.entity.UserAuthority;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.service.RoleService;
import com.jason.module.security.service.UserGroupService;
import com.jason.module.security.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Component
@CacheConfig(cacheNames = "tokenCache")
@Slf4j
public class TokenUserDetailService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserGroupService userGroupService;

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
        UserGroup userGroup = userGroupService.getGroup(username);
        UserDto userDto = new UserDto();
        BeanUtils.copyProperties(user,userDto);
        userDto.setUserGroup(userGroup);
        userDto.setGroupId(userGroup.getId());
        userDto.setUserAuthorityList(userAuthorities);
        return userDto;
    }


    /**
     * token缓存
     * @param token
     * @param userDto
     * @return
     */
    @CachePut(value="tokenCache",key="#token")
    public UserDto saveToken(String token, UserDto userDto){
        log.info("放入token缓存:{},username:{}",token,JSONObject.toJSONString(userDto));
        return userDto;
    }

    /**
     * 获取缓存
     * @param token
     * @return
     */
    @Cacheable(value = "tokenCache",key = "#token")
    public UserDto getToken(String token){
        log.info("获取缓存token:{}",token);
        return null;
    }

    /**
     * 缓存清理
     * @param token
     * @return
     */
    @CacheEvict(key = "#token",value = "tokenCache")
    public String removeToken(String token){
        log.info("清理缓存token:{}",token);
        return token;
    }
}
