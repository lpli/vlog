package com.jason.module.article.dao;

import com.jason.module.article.entity.Article;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jason.module.article.vo.ArticleStatusCount;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
public interface ArticleMapper extends BaseMapper<Article> {

    List<ArticleStatusCount> getCount(@Param("username") String username);
}
