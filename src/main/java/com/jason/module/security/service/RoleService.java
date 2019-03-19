package com.jason.module.security.service;

import com.jason.module.security.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  角色服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface RoleService extends IService<Role> {

    List<Role> getRoleList(Long userId);

    List<Role> getRoleListByOpId(Long operationId);

    /**
     * 给角色授权
     * @param permissionIds 权限id
     * @param roleId 角色id
     */
    void authorization(List<Long> permissionIds,Long roleId);

    Role getRole(String username);
}
