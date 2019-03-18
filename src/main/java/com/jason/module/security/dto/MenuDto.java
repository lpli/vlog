package com.jason.module.security.dto;

import com.jason.module.security.entity.Menu;

import java.util.List;

public class MenuDto extends Menu implements Comparable<MenuDto> {

    private boolean checked;

    private Long permissionId;

    public MenuDto() {

    }

    public MenuDto(Menu menu) {
        this.setId(menu.getId());
        this.setName(menu.getName());
        this.setPid(menu.getPid());
        this.setSeq(menu.getSeq());
        this.setUrl(menu.getUrl());
        this.setIcon(menu.getIcon());
        this.setCode(menu.getCode());
    }

    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    private List<MenuDto> children;

    public List<MenuDto> getChildren() {
        return children;
    }

    public void setChildren(List<MenuDto> children) {
        this.children = children;
    }

    @Override
    public int compareTo(MenuDto o) {
        return this.getSeq().compareTo(o.getSeq());
    }
}
