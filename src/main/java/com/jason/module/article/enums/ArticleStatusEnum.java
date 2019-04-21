package com.jason.module.article.enums;

/**
 * 文章状态
 * 发布             通过
 * 草稿 --------> 审稿中 ---------> 发布
 * |              |
 * <-----------  驳回
 */
public enum ArticleStatusEnum {
    DRAFT(0, "草稿"),
    APPROVE(1, "审稿中"),
    PUBLISH(2, "发布完成"),
    DELETED(-1,"删除");

    private int code;

    private String name;

    ArticleStatusEnum(int code, String name) {
        this.code = code;
        this.name = name;
    }

    public int getCode() {
        return code;
    }

    public String getName() {
        return name;
    }
}


