package com.jason.module.article.vo;

import com.jason.module.article.entity.Article;
import com.jason.module.article.entity.ArticleCover;

import java.io.Serializable;
import java.util.List;

/**
 * @Author liliping
 * @Date 2019/4/22
 **/
public class ArticleVO extends Article implements Serializable {

    public String categoryName;

    private List<ArticleCover> coverList;

    public List<ArticleCover> getCoverList() {
        return coverList;
    }

    public void setCoverList(List<ArticleCover> coverList) {
        this.coverList = coverList;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer();
        sb.append("{").append(super.toString());
        sb.append(",");
        sb.append("\"coverList\":").append(coverList);
        sb.append("}");
        return sb.toString();
    }
}
