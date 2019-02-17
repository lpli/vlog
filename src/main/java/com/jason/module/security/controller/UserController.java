package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.security.entity.User;
import com.jason.module.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/pageList")
    @ResponseBody
    public Page<User> list(long pageSize,long pageNo){
        Page<User> page = new Page<>();
        page.setSize(pageSize);
        page.setCurrent(pageNo);
        IPage<User> userIPage = userService.page(page, new QueryWrapper<User>().select(User.class,i->!i.getColumn().equals("password")));
        page.setRecords(userIPage.getRecords());
        page.setTotal(userIPage.getTotal());
        return page;
    }
}

