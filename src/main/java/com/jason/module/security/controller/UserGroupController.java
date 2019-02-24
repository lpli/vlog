package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.GroupDto;
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
public class UserGroupController extends BaseController{

    @Autowired
    private UserGroupService userGroupService;

    @Autowired
    private UserGroupReService userGroupReService;

    @PostMapping("/create")
    public JsonResponse create(@RequestBody UserGroup userGroup) {
        if(userGroup.getPid() == 0){
            Long pid = getToken().getUserGroup().getId();
            userGroup.setPid(pid);
        }
        userGroupService.save(userGroup);
        return JsonResponse.buildSuccess();
    }

    @PutMapping("/update")
    public JsonResponse update(@RequestBody UserGroup userGroup) {
        userGroupService.updateById(userGroup);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping("/{id}/delete")
    public JsonResponse delete(@PathVariable("id") Long id) {
        int ugcount = userGroupReService.count(new QueryWrapper<UserGroupRe>().eq("group_id", id));
        if(ugcount>0){
            return JsonResponse.buildFail("有关联用户");
        }
        userGroupService.remove(new QueryWrapper<UserGroup>().eq("id",id));
        return JsonResponse.buildSuccess();
    }

    @GetMapping("/list")
    public JsonResponse<List<GroupDto>> list(){
        Long pid = this.getToken().getUserGroup().getId();
        JsonResponse<List<GroupDto>> json  = new JsonResponse<>();
        List<GroupDto> list = userGroupService.getGroupListByPid(pid);
        json.setCode(ResponseCode.SUCCESS.getCode());
        json.setData(list);
        return json;
    }
}

