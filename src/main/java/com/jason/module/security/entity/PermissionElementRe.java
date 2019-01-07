package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 权限-元素关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class PermissionElementRe extends Model<PermissionElementRe> {

    private static final long serialVersionUID = 1L;

    private Long permissionId;

    private Long elementId;


    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    public Long getElementId() {
        return elementId;
    }

    public void setElementId(Long elementId) {
        this.elementId = elementId;
    }

    @Override
    protected Serializable pkVal() {
        return this.permissionId;
    }

    @Override
    public String toString() {
        return "PermissionElementRe{" +
        "permissionId=" + permissionId +
        ", elementId=" + elementId +
        "}";
    }
}
