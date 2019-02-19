package com.jason.module.security.service;

import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

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
    List<Menu> getMenuList(List<Long> roleIdList);


    /**
     * 获取菜单
     * @return
     */
    List<MenuDto> getMenu();
}
