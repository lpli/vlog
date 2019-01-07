package com.jason.module.security.enums;

public enum PermissionType {

    MENU(1, "菜单"),
    HTML_ELEMENT(2, "页面元素"),
    OPERATION(3, "功能操作");
    private int code;
    private String desc;

    PermissionType(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
