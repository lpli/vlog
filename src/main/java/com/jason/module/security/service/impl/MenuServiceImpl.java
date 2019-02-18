package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.dao.MenuMapper;
import com.jason.module.security.entity.Permission;
import com.jason.module.security.entity.PermissionMenuRe;
import com.jason.module.security.enums.PermissionType;
import com.jason.module.security.service.MenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.security.service.PermissionMenuReService;
import com.jason.module.security.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 菜单表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

    @Autowired
    private PermissionService permissionService;


    @Autowired
    private PermissionMenuReService permissionMenuReService;


    @Override
    public void saveMenu(Menu menu) {
        Permission permission = new Permission();
        permission.setType(PermissionType.MENU.getCode());
        permissionService.save(permission);
        baseMapper.insert(menu);
        PermissionMenuRe permissionMenuRe = new PermissionMenuRe();
        permissionMenuRe.setMenuId(menu.getId());
        permissionMenuRe.setPermissionId(permission.getId());
        permissionMenuReService.save(permissionMenuRe);
    }

    @Override
    public List<Menu> getMenuList(List<Long> roleIdList) {
        return baseMapper.queryMenuListByRole(roleIdList);
    }

    @Override
    public List<MenuDto> getMenu() {
        List<Menu> list = baseMapper.selectList(new QueryWrapper<>());
        List<MenuDto> orgList = new ArrayList<>();
        for (Menu menu : list) {
            orgList.add(new MenuDto(menu));
        }
        List<MenuDto> rootList = new ArrayList<>();
        for (MenuDto dto : orgList) {
            if (dto.getPid() == null) {
                rootList.add(dto);
            }
            for (MenuDto menu : orgList) {
                if (dto.getId().equals(menu.getPid())) {
                    if (dto.getChildren() == null) {
                        List<MenuDto> children = new ArrayList<>();
                        children.add(menu);
                        dto.setChildren(children);
                    } else {
                        dto.getChildren().add(menu);
                    }
                }
            }
        }
        return rootList;
    }
}
