package com.jason.module.article.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.article.entity.Article;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.article.vo.ArticleVO;
import com.jason.module.security.dto.UserDto;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
public interface ArticleService extends IService<Article> {

    /**
     * 保存草稿
     * @param article
     */
    void draft(ArticleVO article);

    /**
     * 提交审稿
     * @param article
     */
    void approve(ArticleVO article);

    /**
     * 驳回
     * @param article
     */
    void reject(Article article, UserDto userDto,String comment);

    /**
     * 通过
     * @param article
     */
    void pass(Article article, UserDto userDto,String comment);

    void revert(Article article,UserDto userDto);

    /**
     * 稿件列表
     * @param pageNo
     * @param pageSize
     * @param queryWrapper
     * @return
     */
    Page<ArticleVO> getPageList(Integer pageNo, Integer pageSize, QueryWrapper<Article> queryWrapper);

     void delete(Article article);

}
