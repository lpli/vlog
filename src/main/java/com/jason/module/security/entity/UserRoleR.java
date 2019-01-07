package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 用户-角色关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class UserRoleR extends Model<UserRoleR> {

    private static final long serialVersionUID = 1L;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 角色id
     */
    private Long roleId;


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    @Override
    protected Serializable pkVal() {
        return this.userId;
    }

    @Override
    public String toString() {
        return "UserRoleR{" +
        "userId=" + userId +
        ", roleId=" + roleId +
        "}";
    }
}
