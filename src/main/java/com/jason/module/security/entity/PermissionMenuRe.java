package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 权限-菜单关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class PermissionMenuRe extends Model<PermissionMenuRe> {

    private static final long serialVersionUID = 1L;

    private Long permissionId;

    private Long menuId;


    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    @Override
    protected Serializable pkVal() {
        return this.permissionId;
    }

    @Override
    public String toString() {
        return "PermissionMenuRe{" +
        "permissionId=" + permissionId +
        ", menuId=" + menuId +
        "}";
    }
}
