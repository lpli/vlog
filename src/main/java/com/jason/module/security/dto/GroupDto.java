package com.jason.module.security.dto;

import com.jason.module.security.entity.UserGroup;

import java.util.List;


public class GroupDto extends UserGroup implements Comparable<GroupDto> {

    private List<GroupDto> children;

    public GroupDto() {
    }

    public GroupDto(UserGroup group) {
        this.setId(group.getId());
        this.setName(group.getName());
        this.setRemark(group.getRemark());
        this.setPid(group.getPid());
    }

    public List<GroupDto> getChildren() {
        return children;
    }

    public void setChildren(List<GroupDto> children) {
        this.children = children;
    }

    @Override
    public int compareTo(GroupDto o) {
        return this.getId().compareTo(o.getId());
    }
}
