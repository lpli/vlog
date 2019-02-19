package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.entity.UserGroupRe;
import com.jason.module.security.entity.UserGroupRoleRe;
import com.jason.module.security.service.UserGroupReService;
import com.jason.module.security.service.UserGroupRoleReService;
import com.jason.module.security.service.UserGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * <p>
 * 用户组表 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@RestController
@RequestMapping("/group")
public class UserGroupController {

    @Autowired
    private UserGroupService userGroupService;

    @Autowired
    private UserGroupReService userGroupReService;

    @PostMapping("/create")
    public JsonResponse create(UserGroup userGroup) {
        userGroupService.save(userGroup);
        return JsonResponse.buildSuccess();
    }

    @PutMapping("/update")
    public JsonResponse update(UserGroup userGroup) {
        userGroupService.updateById(userGroup);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping("/{id}/delete")
    public JsonResponse delete(Long id) {
        int ugcount = userGroupReService.count(new QueryWrapper<UserGroupRe>().eq("group_id", id));
        if(ugcount>0){
            return JsonResponse.buildFail("有关联用户");
        }
        userGroupService.remove(new QueryWrapper<UserGroup>().eq("id",id));
        return JsonResponse.buildSuccess();
    }

    @GetMapping("/list")
    public JsonResponse<List<UserGroup>> list(){
        JsonResponse<List<UserGroup>> json  = new JsonResponse<>();
        List<UserGroup> list = userGroupService.list();
        json.setCode(ResponseCode.SUCCESS.getCode());
        json.setData(list);
        return json;
    }
}

