package com.jason.module.article.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.article.dao.ArticleCoverMapper;
import com.jason.module.article.dao.ArticleLogMapper;
import com.jason.module.article.dao.ArticleMapper;
import com.jason.module.article.entity.Article;
import com.jason.module.article.entity.ArticleCategory;
import com.jason.module.article.entity.ArticleCover;
import com.jason.module.article.entity.ArticleLog;
import com.jason.module.article.enums.ArticleStatusEnum;
import com.jason.module.article.service.ArticleCategoryService;
import com.jason.module.article.service.ArticleCoverService;
import com.jason.module.article.service.ArticleService;
import com.jason.module.article.vo.ArticleStatusCount;
import com.jason.module.article.vo.ArticleVO;
import com.jason.module.security.dto.UserDto;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;
import java.util.stream.Collectors;

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

    @Autowired
    private ArticleCoverService articleCoverService;

    @Autowired
    private ArticleCategoryService articleCategoryService;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void draft(ArticleVO article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DRAFT.getCode());
        article.setUpdateTime(now);
        this.saveOrUpdate(article);

        saveCover(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DRAFT.getCode());
        articleLogMapper.insert(log);
    }

    private void saveCover(ArticleVO article){
        if(CollectionUtils.isEmpty(article.getCoverList())){
            return;
        }
        QueryWrapper<ArticleCover> queryWrapper =new QueryWrapper<>();
        queryWrapper.eq("article_id",article.getId());
        articleCoverService.remove(queryWrapper);
        for(ArticleCover cover:article.getCoverList()){
            cover.setArticleId(article.getId());
        }
        articleCoverService.saveBatch(article.getCoverList());
    }
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void approve(ArticleVO article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.APPROVE.getCode());
        if(article.getCreateTime() == null){
            article.setCreateTime(now);
        }
        article.setUpdateTime(now);
        this.saveOrUpdate(article);
        saveCover(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.APPROVE.getCode());
        articleLogMapper.insert(log);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void reject(Article article, UserDto userDto, String comment) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.REJECTED.getCode());
        article.setUpdateTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(userDto.getUsername());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.REJECTED.getCode());
        log.setComment(comment);
        articleLogMapper.insert(log);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void pass(Article article, UserDto userDto, String comment) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.PUBLISH.getCode());
        article.setUpdateTime(now);
        article.setPublishTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(userDto.getUsername());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.PUBLISH.getCode());
        log.setComment(comment);
        articleLogMapper.insert(log);
    }

    @Override
    public Page<ArticleVO> getPageList(Integer pageNo, Integer pageSize, QueryWrapper<Article> queryWrapper) {
        Page<Article> page = new Page<>();
        page.setCurrent(pageNo);
        page.setSize(pageSize);

        IPage<Article> iPage = baseMapper.selectPage(page,queryWrapper);
        List<Long> articleIds = new ArrayList<>();
        List<ArticleVO> dataList =new ArrayList<>();
        List<Long> categoryIds = new ArrayList<>();
        for(Article article:iPage.getRecords()){
            articleIds.add(article.getId());
            ArticleVO vo = new ArticleVO();
            BeanUtils.copyProperties(article,vo);
            dataList.add(vo);

            categoryIds.add(article.getArticleCategory());
        }
        if(!articleIds.isEmpty()){
            QueryWrapper<ArticleCover> coverQueryWrapper = new QueryWrapper<>();
            coverQueryWrapper.in("article_id",articleIds);
            List<ArticleCover> list = articleCoverService.list(coverQueryWrapper);
            Map<Long,List<ArticleCover>> map = new HashMap<>();
            for(ArticleCover cover:list){
                if(!map.containsKey(cover.getArticleId())){
                    List<ArticleCover> arr = new ArrayList<>();
                    map.put(cover.getArticleId(),arr);
                }
                map.get(cover.getArticleId()).add(cover);
            }
            QueryWrapper<ArticleCategory> queryWrapper1 = new QueryWrapper<>();
            queryWrapper.in("id",categoryIds);
            List<ArticleCategory> categoryList = articleCategoryService.list(queryWrapper1);
            Map<Long,ArticleCategory> categoryMap = categoryList.stream().collect(Collectors.toMap(ArticleCategory::getId,a->a,(k1,k2)->k1));

            for(ArticleVO article:dataList){
                article.setCoverList(map.get(article.getId()));
                if(categoryMap.containsKey(article.getArticleCategory())){
                    article.setCategoryName(categoryMap.get(article.getArticleCategory()).getName());
                }
            }
        }
        Page<ArticleVO> pageVO = new Page<>();
        pageVO.setCurrent(pageNo);
        pageVO.setSize(pageSize);
        pageVO.setRecords(dataList);
        pageVO.setTotal(iPage.getTotal());
        return pageVO;
    }

    @Override
    public void revert(Article article, UserDto userDto) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DRAFT.getCode());
        article.setUpdateTime(now);
        article.setPublishTime(now);
        this.updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(userDto.getUsername());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DRAFT.getCode());
        articleLogMapper.insert(log);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Article article) {
        Date now = new Date();
        article.setStatus(ArticleStatusEnum.DELETED.getCode());
        article.setUpdateTime(now);
        updateById(article);
        ArticleLog log = new ArticleLog();
        log.setArticleId(article.getId());
        log.setArticleTitle(article.getTitle());
        log.setOperator(article.getAuthorId());
        log.setOperateTime(now);
        log.setArticleStatus(ArticleStatusEnum.DELETED.getCode());
        articleLogMapper.insert(log);
    }

    @Override
    public List<ArticleStatusCount> getCount(String username) {
        return baseMapper.getCount(username);
    }
}
