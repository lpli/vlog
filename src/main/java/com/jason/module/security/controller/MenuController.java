package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 菜单表 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @PostMapping("/create")
    public JsonResponse create(@RequestBody Menu menu) {
        menuService.saveMenu(menu);
        return JsonResponse.buildSuccess();

    }


    @DeleteMapping("/{id}/delete")
    public JsonResponse delete(@PathVariable("id") Long id) {
        menuService.remove(new QueryWrapper<Menu>().eq("id", id));
        return JsonResponse.buildSuccess();

    }


    @PutMapping("/update")
    public JsonResponse put(@RequestBody Menu menu) {
        JsonResponse response = JsonResponse.buildFail();
        if (menu.getId() != null) {
            response.setMsg("id不能为空");
            return response;
        }
        menuService.update(menu, new QueryWrapper<Menu>().eq("id", menu.getId()));
        return JsonResponse.buildSuccess();
    }

    @GetMapping("/list")
    public JsonResponse<List<MenuDto>> list(){
        List<MenuDto> list = menuService.getMenu();
        return new JsonResponse<>(ResponseCode.SUCCESS.getCode(),list);
    }

}

