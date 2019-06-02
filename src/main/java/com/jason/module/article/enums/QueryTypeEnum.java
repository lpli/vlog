package com.jason.module.article.enums;

public enum QueryTypeEnum {
    TITILE_SEARCH(1,"标题查询"),
    AUTHOR_SEARCH(2,"作者查询");

    private Integer code;

    private String desc;

    QueryTypeEnum(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public Integer getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
