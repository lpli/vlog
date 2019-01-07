package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Menu;
import com.jason.module.security.dao.MenuMapper;
import com.jason.module.security.service.MenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

    @Override
    public List<Menu> getMenuList(List<Long> roleIdList) {
        return baseMapper.queryMenuListByRole(roleIdList);
    }
}
