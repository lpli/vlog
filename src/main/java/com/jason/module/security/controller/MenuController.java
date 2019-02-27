package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.entity.Role;
import com.jason.module.security.service.MenuService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class MenuController extends BaseController{

    @Value("${app.admin-code}")
    private String adminCode;

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
        List<MenuDto> list;
        if(isAdmin(adminCode)){
            list = menuService.getMenu();
        }else{
            List<Long> roleIds = this.getRoleIds();
            if(roleIds.isEmpty()){
                return new JsonResponse<>(ResponseCode.SUCCESS,null);
            }
            list = menuService.getMenuList(roleIds);
        }
        JsonResponse<List<MenuDto>> json = new JsonResponse<>(ResponseCode.SUCCESS,list);
        return json;
    }


    @GetMapping("/check")
    public JsonResponse check(Menu menu) {
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        if(menu.getId()!=null){
            queryWrapper = queryWrapper.ne("id", menu.getId());
        }
        if (StringUtils.isNotEmpty(menu.getName())) {
            int count = menuService.count(queryWrapper.eq("name", menu.getName()));
            if (count > 0) {
                return JsonResponse.buildFail("名称已存在");
            }
        }else if(menu.getSeq() !=null ){
            int count = menuService.count(queryWrapper.eq("seq", menu.getSeq()));
            if (count > 0) {
                return JsonResponse.buildFail("编号已存在");
            }
        }else if(StringUtils.isNotEmpty(menu.getUrl())){
            int count = menuService.count(queryWrapper.eq("url", menu.getUrl()));
            if (count > 0) {
                return JsonResponse.buildFail("URL已存在");
            }
        }
        return JsonResponse.buildSuccess();
    }

}

