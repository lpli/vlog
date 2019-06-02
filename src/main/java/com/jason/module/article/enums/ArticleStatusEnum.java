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
    PUBLISH(2, "已发布"),
    REJECTED(3, "未通过"),
    DELETED(-1,"删除");

    private int code;

    private String name;

    ArticleStatusEnum(int code, String name) {
        this.code = code;
        this.name = name;
    }

    public static ArticleStatusEnum get(int code){
        for(ArticleStatusEnum en:ArticleStatusEnum.values()){
            if(code == en.getCode()){
                return en;
            }
        }
        return null;
    }

    public static String getNameByCode(int code){
        for(ArticleStatusEnum en:ArticleStatusEnum.values()){
            if(code == en.getCode()){
                return en.getName();
            }
        }
        return null;
    }

    public int getCode() {
        return code;
    }

    public String getName() {
        return name;
    }
}


