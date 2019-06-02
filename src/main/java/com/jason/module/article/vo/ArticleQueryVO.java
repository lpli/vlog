package com.jason.module.article.vo;

import com.jason.module.article.entity.Article;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

public class ArticleQueryVO extends Article implements Serializable {

    @NotNull
    private Integer pageNo;

    @NotNull
    private Integer pageSize;

    /**
     * 查询类型  1：作者；2：标题
     */
    private Integer queryType;

    private String queryValue;

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getQueryType() {
        return queryType;
    }

    public void setQueryType(Integer queryType) {
        this.queryType = queryType;
    }

    public String getQueryValue() {
        return queryValue;
    }

    public void setQueryValue(String queryValue) {
        this.queryValue = queryValue;
    }
}
