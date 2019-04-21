package com.jason.module.article.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.article.dao.ArticleLogMapper;
import com.jason.module.article.entity.Article;
import com.jason.module.article.dao.ArticleMapper;
import com.jason.module.article.entity.ArticleLog;
import com.jason.module.article.enums.ArticleStatusEnum;
import com.jason.module.article.service.ArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.security.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

    @Autowired
    private ArticleLogMapper articleLogMapper;

    @Override
    public void draft(Article article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DRAFT.getCode());
        article.setUpdateTime(now);
        this.saveOrUpdate(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleContent(article.getContent());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DRAFT.getCode());
        articleLogMapper.insert(log);
    }

    @Override
    public void approve(Article article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.APPROVE.getCode());
        article.setUpdateTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleContent(article.getContent());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.APPROVE.getCode());
        articleLogMapper.insert(log);
    }

    @Override
    public void reject(Article article, UserDto userDto, String comment) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DRAFT.getCode());
        article.setUpdateTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleContent(article.getContent());
        log.setArticleTitle(article.getTitle());
        log.setOperator(userDto.getUsername());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DRAFT.getCode());
        log.setComment(comment);
        articleLogMapper.insert(log);
    }

    @Override
    public void pass(Article article, UserDto userDto, String comment) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.PUBLISH.getCode());
        article.setUpdateTime(now);
        article.setPublishTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleContent(article.getContent());
        log.setArticleTitle(article.getTitle());
        log.setOperator(userDto.getUsername());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.PUBLISH.getCode());
        log.setComment(comment);
        articleLogMapper.insert(log);
    }

    @Override
    public Page<Article> getPageList(Integer pageNo, Integer pageSize, QueryWrapper<Article> queryWrapper) {
        Page<Article> page = new Page<>();
        page.setCurrent(pageNo);
        page.setSize(pageSize);
        IPage<Article> iPage = baseMapper.selectPage(page,queryWrapper);
        page.setRecords(iPage.getRecords());
        page.setTotal(iPage.getTotal());
        return page;
    }

    @Override
    public void delete(Article article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DELETED.getCode());
        article.setUpdateTime(now);
        updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleContent(article.getContent());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DELETED.getCode());
        articleLogMapper.insert(log);
    }
}
