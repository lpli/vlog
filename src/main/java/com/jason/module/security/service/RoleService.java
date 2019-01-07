package com.jason.module.security.service;

import com.jason.module.security.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface RoleService extends IService<Role> {

    List<Role> getRoleList(Long userId);
}
