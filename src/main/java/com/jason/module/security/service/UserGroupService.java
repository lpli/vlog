package com.jason.module.security.service;

import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.UserGroup;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 组管理 服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface UserGroupService extends IService<UserGroup> {

    /**
     * 组关联角色
     * @param userGroup
     * @param role
     */
    void addRole(UserGroup userGroup,Role role);

    /**
     * 组移除角色
     * @param userGroup
     * @param role
     */
    void removeRole(UserGroup userGroup,Role role);
}
