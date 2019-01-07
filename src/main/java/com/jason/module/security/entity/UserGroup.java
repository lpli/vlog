package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 用户组表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class UserGroup extends Model<UserGroup> {

    private static final long serialVersionUID = 1L;

    private Long id;

    /**
     * 组名
     */
    private String name;

    /**
     * 父id
     */
    private Long pid;

    private String desc;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "UserGroup{" +
        "id=" + id +
        ", name=" + name +
        ", pid=" + pid +
        ", desc=" + desc +
        "}";
    }
}
