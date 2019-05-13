package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.User;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.service.RoleService;
import com.jason.module.security.service.UserGroupService;
import com.jason.module.security.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@RestController
@RequestMapping("/user")
public class UserController extends  BaseController{

    @Autowired
    private UserService userService;

    @Value("${app.default-password}")
    private String defaultPassword;

    @Autowired
    @Qualifier("myPasswordEncoder")
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserGroupService userGroupService;

    @Autowired
    private RoleService roleService;

    /**
     * 分页查询
     * @param pageSize
     * @param pageNo
     * @return
     */
    @GetMapping(value="/pageList",name="用户分页列表")
    public JsonResponse<Page<User>> list(long pageSize,long pageNo,UserDto userDto){
        JsonResponse<Page<User>> json = new JsonResponse<>();
        Page<User> page = new Page<>();
        page.setSize(pageSize);
        page.setCurrent(pageNo);
        if(userDto.getGroupId() == null){
            userDto.setGroupId(this.getToken().getGroupId());
            page = userService.selectSubUserByGroupId(page,userDto);
        }else{
            page = userService.selectAllUserByGroupId(page,userDto);
        }

        json.setCode(ResponseCode.SUCCESS.getCode());
        json.setData(page);
        return json;
    }


    /**
     * 添加用户
     * @param userDto
     * @return
     */
    @PostMapping(value="/create",name="新增用户")
    public JsonResponse add(@RequestBody UserDto userDto){
        userDto.setCreateTime(new Date());
        userDto.setPassword(passwordEncoder.encode(defaultPassword));
        return user(userDto,userDto.getGroupId());
    }

    private JsonResponse user(UserDto userDto,Long groupId){
        if(userDto.getGroupId() == null){
            return new JsonResponse(ResponseCode.FAILURE.getCode(),"用户组不能为空");
        }
        if(userDto.getRoleId() == null){
            return new JsonResponse(ResponseCode.FAILURE.getCode(),"角色不能为空");
        }
        UserGroup userGroup = new UserGroup();
        userGroup.setId(groupId);
        userService.saveUser(userDto,userGroup,userDto.getRoleId());
        return JsonResponse.buildSuccess();
    }


    @PutMapping(value="/update",name="修改用户")
    public JsonResponse update(@RequestBody UserDto userDto){
        JsonResponse jsonResponse = new JsonResponse();
        if(userDto.getId() == null){
            jsonResponse.setCode(ResponseCode.FAILURE.getCode());
            jsonResponse.setMsg("用户id不能为空");
            return jsonResponse;
        }
        return user(userDto,userDto.getGroupId());
    }

    /**
     * 启用
     * @param id
     * @return
     */
    @PatchMapping(value="/{id}/enable",name="启用用户")
    public JsonResponse enable(@PathVariable("id") Long id){
        User user = new User();
        user.setId(id);
        userService.enableUser(user);
        return JsonResponse.buildSuccess();
    }

    @PatchMapping(value="/{id}/disable",name="禁用用户")
    public JsonResponse disable(@PathVariable("id")Long id){
        User user = new User();
        user.setId(id);
        userService.disableUser(user);
        return JsonResponse.buildSuccess();
    }

    @GetMapping(value="/{username}/group",name="获取用户部门")
    public JsonResponse<UserGroup> getGroup(@PathVariable("username")String  username){
        UserGroup userGroup = userGroupService.getGroup(username);
        return new JsonResponse<>(ResponseCode.SUCCESS,userGroup);
    }

    @GetMapping(value="/{username}/role",name="获取用户角色")
    public JsonResponse<Role> getRole(@PathVariable("username")String  username){
        Role role = roleService.getRole(username);
        return new JsonResponse<>(ResponseCode.SUCCESS,role);
    }

    @GetMapping(value="/check",name="校验用户")
    public JsonResponse checkUser(UserDto userDto){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        if(userDto.getId()!=null){
            queryWrapper = queryWrapper.ne("id",userDto.getId());
        }
        if(StringUtils.isNotEmpty(userDto.getUsername())){
            int count = userService.count(queryWrapper.eq("user_name",userDto.getUsername()));
            if(count > 0){
                return JsonResponse.buildFail("用户名已被使用");
            }
        }else if(StringUtils.isNotEmpty(userDto.getNickName())){
            int count = userService.count(queryWrapper.eq("nick_name",userDto.getNickName()));
            if(count > 0){
                return JsonResponse.buildFail("昵称已被使用");
            }
        }else if(StringUtils.isNotEmpty(userDto.getPhone())){
            int count = userService.count(queryWrapper.eq("phone",userDto.getPhone()));
            if(count > 0){
                return JsonResponse.buildFail("手机号已被注册");
            }
        }else if(StringUtils.isNotEmpty(userDto.getEmail())){
            int count = userService.count(queryWrapper.eq("email",userDto.getEmail()));
            if(count > 0){
                return JsonResponse.buildFail("邮箱已被注册");
            }
        }
        return JsonResponse.buildSuccess();
    }


}

