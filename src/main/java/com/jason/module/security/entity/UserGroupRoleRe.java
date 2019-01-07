package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 用户组-角色关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class UserGroupRoleRe extends Model<UserGroupRoleRe> {

    private static final long serialVersionUID = 1L;

    private Long groupId;

    private Long roleId;


    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    @Override
    protected Serializable pkVal() {
        return this.groupId;
    }

    @Override
    public String toString() {
        return "UserGroupRoleRe{" +
        "groupId=" + groupId +
        ", roleId=" + roleId +
        "}";
    }
}
