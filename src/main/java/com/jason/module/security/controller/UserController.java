package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.entity.User;
import com.jason.module.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 分页查询
     * @param pageSize
     * @param pageNo
     * @return
     */
    @GetMapping("/pageList")
    public JsonResponse<Page<User>> list(long pageSize,long pageNo){
        JsonResponse<Page<User>> json = new JsonResponse<>();
        Page<User> page = new Page<>();
        page.setSize(pageSize);
        page.setCurrent(pageNo);
        IPage<User> userIPage = userService.page(page, new QueryWrapper<User>().select(User.class,i->!i.getColumn().equals("password")));
        page.setRecords(userIPage.getRecords());
        page.setTotal(userIPage.getTotal());
        json.setCode(ResponseCode.SUCCESS.getCode());
        json.setData(page);
        return json;
    }


    /**
     * 添加用户
     * @param user
     * @return
     */
    @PostMapping("/create")
    public JsonResponse add(User user){
        userService.saveUser(user);
        return JsonResponse.buildSuccess();
    }


    @PutMapping("/update")
    public JsonResponse update(User user){
        JsonResponse jsonResponse = new JsonResponse();
        if(user.getId() == null){
            jsonResponse.setCode(ResponseCode.FAILURE.getCode());
            jsonResponse.setMsg("用户id不能为空");
            return jsonResponse;
        }
        userService.updateById(user);
        return JsonResponse.buildSuccess();
    }

    /**
     * 启用
     * @param id
     * @return
     */
    @PatchMapping("/{id}/enable")
    public JsonResponse enable(@PathVariable("id") Long id){
        User user = new User();
        user.setId(id);
        userService.enableUser(user);
        return JsonResponse.buildSuccess();
    }

    @PatchMapping("/{id}/disable")
    public JsonResponse disable(@PathVariable("id")Long id){
        User user = new User();
        user.setId(id);
        userService.disableUser(user);
        return JsonResponse.buildSuccess();
    }


}

