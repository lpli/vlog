package com.jason.module.security.service;

import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 菜单表 服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface MenuService extends IService<Menu> {

    void saveMenu(Menu menu);


    void deleteMenu(Long id);


    void updateMenu(Menu menu);

    /**
     * 查询菜单
     * @param roleIdList
     * @return
     */
    List<MenuDto> getMenuList(List<Long> roleIdList);

    Map<String,Object> getMenuTree(Long roleId, List<Long> userRoleIds);

    /**
     * 管理员查询
     * @param roleId
     * @return
     */
    Map<String,Object> getMenuTree(Long roleId);
    /**
     * 获取菜单
     * @return
     */
    List<MenuDto> getMenu();
}
