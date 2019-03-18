package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.service.MenuService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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
public class MenuController extends BaseController {

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
        if (menu.getId() == null) {
            response.setMsg("id不能为空");
            return response;
        }
        menuService.update(menu, new QueryWrapper<Menu>().eq("id", menu.getId()));
        return JsonResponse.buildSuccess();
    }


    @GetMapping("/list")
    public JsonResponse<List<MenuDto>> list() {
        List<MenuDto> list;
        if (isAdmin()) {
            list = menuService.getMenu();
        } else {
            List<Long> roleIds = this.getUserRoleIds();
            if (roleIds.isEmpty()) {
                return new JsonResponse<>(ResponseCode.SUCCESS, null);
            }
            list = menuService.getMenuList(roleIds);
        }
        JsonResponse<List<MenuDto>> json = new JsonResponse<>(ResponseCode.SUCCESS, list);
        return json;
    }

    @GetMapping("/{roleId}/tree")
    public JsonResponse<Map<String, Object>> listByRoleId(@PathVariable("roleId") Long roleId) {
        Map<String, Object> map;
        if (isAdmin()) {
            map = menuService.getMenuTree(roleId);
        } else {
            map = menuService.getMenuTree(roleId, this.getUserRoleIds());
        }
        return new JsonResponse<>(ResponseCode.SUCCESS, map);
    }

    @GetMapping("/check")
    public JsonResponse check(Menu menu) {
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        if (menu.getId() != null) {
            queryWrapper = queryWrapper.ne("id", menu.getId());
        }
        if (StringUtils.isNotEmpty(menu.getName())) {
            int count = menuService.count(queryWrapper.eq("name", menu.getName()));
            if (count > 0) {
                return JsonResponse.buildFail("名称已存在");
            }
        }

        if (menu.getCode() != null) {
            int count = menuService.count(queryWrapper.eq("code", menu.getCode()));
            if (count > 0) {
                return JsonResponse.buildFail("编号已存在");
            }
            if (menu.getSeq() != null) {
                count = menuService.count(queryWrapper.eq("seq", menu.getSeq()));
                if (count > 0) {
                    return JsonResponse.buildFail("序列号已存在");
                }
            }
        }
        if (StringUtils.isNotEmpty(menu.getUrl())) {
            int count = menuService.count(queryWrapper.eq("url", menu.getUrl()));
            if (count > 0) {
                return JsonResponse.buildFail("URL已存在");
            }
        }
        return JsonResponse.buildSuccess();
    }

}

