package com.jason.module.security.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jason.module.security.dto.MenuDto;
import com.jason.module.security.entity.Menu;

import java.util.List;

/**
 * <p>
 * 菜单表 Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface MenuMapper extends BaseMapper<Menu> {
    List<MenuDto> queryMenuListByRole(List<Long> roleIdList);

    List<MenuDto> queryAllMenu();
}
