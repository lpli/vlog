package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 角色-权限关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class RolePermissionRe extends Model<RolePermissionRe> {

    private static final long serialVersionUID = 1L;

    /**
     * 角色id
     */
    private Long roleId;

    /**
     * 权限id
     */
    private Long permissionId;


    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    @Override
    protected Serializable pkVal() {
        return this.roleId;
    }

    @Override
    public String toString() {
        return "RolePermissionRe{" +
        "roleId=" + roleId +
        ", permissionId=" + permissionId +
        "}";
    }
}
