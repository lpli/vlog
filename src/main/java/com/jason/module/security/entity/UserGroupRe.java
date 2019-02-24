package com.jason.module.security.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;

import java.io.Serializable;

/**
 * <p>
 * 用户-用户组关联表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class UserGroupRe extends Model<UserGroupRe> {

    private static final long serialVersionUID = 1L;

    private Long userId;

    private Long groupId;


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    @Override
    protected Serializable pkVal() {
        return this.userId;
    }

    @Override
    public String toString() {
        return "UserGroupRe{" +
                "userId=" + userId +
                ", groupId=" + groupId +
                "}";
    }
}
