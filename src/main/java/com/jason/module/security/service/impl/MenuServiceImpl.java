package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.dao.MenuMapper;
import com.jason.module.security.entity.Permission;
import com.jason.module.security.entity.PermissionMenuRe;
import com.jason.module.security.enums.PermissionType;
import com.jason.module.security.service.MenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.security.service.PermissionMenuReService;
import com.jason.module.security.service.PermissionService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * <p>
 * 菜单 服务实现类
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
    public void deleteMenu(Long id) {
        PermissionMenuRe permissionMenuRe = permissionMenuReService.getOne(new QueryWrapper<PermissionMenuRe>().eq("menu_id", id));
        if (permissionMenuRe != null) {
            permissionService.remove(new QueryWrapper<Permission>().eq("id", permissionMenuRe.getPermissionId()));
        }
        baseMapper.delete(new QueryWrapper<Menu>().eq("id", id));
    }

    @Override
    public void updateMenu(Menu menu) {
        baseMapper.updateById(menu);
    }

    @Override
    public List<MenuDto> getMenuList(List<Long> roleIdList) {
        List<MenuDto> list = baseMapper.queryMenuListByRole(roleIdList);
        return getTree(list);
    }

    @Override
    public Map<String,Object> getMenuTree(Long roleId,List<Long> userRoleIds) {
        //当前用户的菜单权限
        List<MenuDto> list = baseMapper.queryMenuListByRole(userRoleIds);
        List<MenuDto> userMenus = baseMapper.queryMenuListByRole(Arrays.asList(roleId));
        Map<String,Object> map = new HashMap<>();
        map.put("allMenu",getTree(list));
        map.put("checkedMenu",userMenus);
        return map;
    }

    @Override
    public Map<String,Object> getMenuTree(Long roleId) {
        List<MenuDto> userMenus = baseMapper.queryMenuListByRole(Arrays.asList(roleId));
        List<MenuDto> list = baseMapper.queryAllMenu();
        Map<String,Object> map = new HashMap<>();
        map.put("allMenu",getTree(list));
        map.put("checkedMenu",userMenus);
        return map;
    }

    @Override
    public List<MenuDto> getMenu() {
        List<MenuDto> orgList = baseMapper.queryAllMenu();
        return getTree(orgList);
    }

    private List<MenuDto> getTree(List<MenuDto> orgList) {
        List<MenuDto> rootList = new ArrayList<>();
        for (MenuDto dto : orgList) {
            if (dto.getPid() == 0) {
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
            if (dto.getChildren() != null && !dto.getChildren().isEmpty()) {
                dto.setChecked(isAllChecked(dto.getChildren()));
                Collections.sort(dto.getChildren());
            }
        }
        Collections.sort(rootList);
        return rootList;
    }

    private boolean isAllChecked(List<MenuDto> list){
        for(MenuDto dto:list){
            if(!dto.isChecked()){
                return false;
            }
        }
        return true;
    }
}
