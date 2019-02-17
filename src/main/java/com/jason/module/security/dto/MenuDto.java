package com.jason.module.security.dto;

import com.jason.module.security.entity.Menu;

import java.util.List;

public class MenuDto extends Menu {

    public MenuDto() {

    }

    public MenuDto(Menu menu) {
        this.setId(menu.getId());
        this.setName(menu.getName());
        this.setPid(menu.getPid());
        this.setSeq(menu.getSeq());
        this.setUrl(menu.getUrl());
    }

    private List<MenuDto> children;

    public List<MenuDto> getChildren() {
        return children;
    }

    public void setChildren(List<MenuDto> children) {
        this.children = children;
    }
}
