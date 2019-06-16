package com.jason.module.article.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.Article;
import com.jason.module.article.entity.ArticleCover;
import com.jason.module.article.entity.ArticleLog;
import com.jason.module.article.enums.ArticleStatusEnum;
import com.jason.module.article.enums.QueryTypeEnum;
import com.jason.module.article.service.ArticleCategoryService;
import com.jason.module.article.service.ArticleCoverService;
import com.jason.module.article.service.ArticleLogService;
import com.jason.module.article.service.ArticleService;
import com.jason.module.article.vo.ArticleQueryVO;
import com.jason.module.article.vo.ArticleStatusCount;
import com.jason.module.article.vo.ArticleVO;
import com.jason.module.security.comp.PermissionIgnore;
import com.jason.module.security.controller.BaseController;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.service.UserService;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.management.Query;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
@RestController
@RequestMapping("/article")
public class ArticleController extends BaseController {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private UserService userService;

    @Autowired
    private ArticleCoverService articleCoverService;

    @Autowired
    private ArticleLogService articleLogService;

    @Autowired
    private ArticleCategoryService articleCategoryService;

    /**
     * 保存草稿
     *
     * @param article
     * @return
     */
    @PostMapping(value="/draft",name="保存草稿")
    public JsonResponse draft(@RequestBody ArticleVO article) {
        UserDto user = this.getToken();
        article.setAuthorId(user.getUsername());
        article.setCreateTime(new Date());
        articleService.draft(article);
        return JsonResponse.buildSuccess();
    }

    /**
     * 发布
     *
     * @param article
     * @return
     */
    @PostMapping(value="/toApprove",name="提交审核")
    public JsonResponse publish(@RequestBody ArticleVO article) {
        UserDto user = this.getToken();
        article.setAuthorId(user.getUsername());
        articleService.approve(article);
        return JsonResponse.buildSuccess();
    }

    /**
     * 审核 - 拒绝
     *
     * @param id
     * @param comment
     * @return
     */
    @GetMapping(value="/approve/{id}/reject",name="审核不通过")
    public JsonResponse reject(@PathVariable("id") String id, @RequestParam("comment") String comment) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        articleService.reject(article, this.getToken(), comment);
        return JsonResponse.buildSuccess();
    }


    /**
     * 审核 - 通过
     *
     * @param id
     * @param comment
     * @return
     */
    @GetMapping(value="/approve/{id}/pass",name="审核通过")
    public JsonResponse pass(@PathVariable("id") String id, @RequestParam(value = "comment", required = false) String comment) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        articleService.pass(article, this.getToken(), comment);
        return JsonResponse.buildSuccess();
    }


    @GetMapping(value="/{id}/revert",name="撤回")
    public JsonResponse revert(@PathVariable("id") String id) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        articleService.revert(article, this.getToken());
        return JsonResponse.buildSuccess();
    }

    /**
     * 稿件详情
     *
     * @param id
     * @return
     */
    @GetMapping(value="/{id}",name="文章详情")
    @PermissionIgnore
    public JsonResponse<ArticleVO> detail(@PathVariable("id") String id) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        ArticleVO vo = new ArticleVO();
        BeanUtils.copyProperties(article, vo);
        List<ArticleCover> coverList = articleCoverService.list(new QueryWrapper<ArticleCover>().eq("article_id", article.getId()));
        vo.setCoverList(coverList);
        return JsonResponse.buildSuccess(vo);
    }

    /**
     * 逻辑删除稿件
     *
     * @param id
     * @return
     */
    @DeleteMapping(value="/{id}",name="删除文章")
    public JsonResponse<Article> delete(@PathVariable("id") String id) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        articleService.delete(article);
        return JsonResponse.buildSuccess();
    }


    /**
     * 我的稿件
     *
     * @return
     */
    @GetMapping(value="/myList",name="我的文章")
    @PermissionIgnore
    public JsonResponse<Page<ArticleVO>> myList(@Validated ArticleQueryVO queryVO) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id", this.getToken().getUsername());
        if(queryVO.getStatus() == null){
            queryWrapper.ne("status", ArticleStatusEnum.DELETED.getCode());
        }else{
            queryWrapper.eq("status", queryVO.getStatus());
        }
        if(StringUtils.isNotEmpty(queryVO.getQueryValue())){
            if(QueryTypeEnum.TITILE_SEARCH.getCode().equals(queryVO.getQueryType())){
                queryWrapper.like("title",queryVO.getQueryValue());
            }else if(QueryTypeEnum.AUTHOR_SEARCH.getCode().equals(queryVO.getQueryType())){
                queryWrapper.like("author_id",queryVO.getQueryValue());
            }
        }
        if(queryVO.getArticleCategory() !=null){
            queryWrapper.eq("article_category",queryVO.getArticleCategory());
        }
        queryWrapper.orderByDesc("update_time");
        Page<ArticleVO> data = articleService.getPageList(queryVO.getPageNo(), queryVO.getPageSize(), queryWrapper);
        JsonResponse<Page<ArticleVO>> response = new JsonResponse<>();
        response.setCode(ResponseCode.SUCCESS.getCode());
        response.setData(data);
        return response;
    }

    /**
     * 待审核稿件
     *
     * @param pageNo
     * @param pageSize
     * @return
     */
    @GetMapping(value="/approveList",name="文章审核列表")
    @PermissionIgnore
    public JsonResponse<Page<ArticleVO>> approveList(@Validated ArticleQueryVO queryVO) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        if (!this.isAdmin()) {
            List<String> userList = userService.selectSubUserByGroupId(this.getToken());
            if(userList.isEmpty()){
                Page<ArticleVO> data = new Page<>();
                data.setTotal(0L);
                data.setCurrent(queryVO.getPageNo());
                data.setCurrent(queryVO.getPageSize());
                return JsonResponse.buildSuccess(data);
            }
            queryWrapper.in("author_id", userList);
        }
        queryWrapper.eq("status", ArticleStatusEnum.APPROVE.getCode());
        if(StringUtils.isNotEmpty(queryVO.getQueryValue())){
            if(QueryTypeEnum.TITILE_SEARCH.getCode().equals(queryVO.getQueryType())){
                queryWrapper.like("title",queryVO.getQueryValue());
            }else if(QueryTypeEnum.AUTHOR_SEARCH.getCode().equals(queryVO.getQueryType())){
                queryWrapper.like("author_id",queryVO.getQueryValue());
            }
        }
        if(queryVO.getArticleCategory() !=null){
            queryWrapper.eq("article_category",queryVO.getArticleCategory());
        }
        queryWrapper.orderByDesc("id");
        Page<ArticleVO> data = articleService.getPageList(queryVO.getPageNo(), queryVO.getPageSize(), queryWrapper);
        JsonResponse<Page<ArticleVO>> response = new JsonResponse<>();
        response.setCode(ResponseCode.SUCCESS.getCode());
        response.setData(data);
        return response;
    }


    /**
     * 获取审核未通过意见
     *
     * @param id
     * @return
     */
    @GetMapping(value="/{id}/comment",name="查看审核未通过意见")
    @PermissionIgnore
    public JsonResponse<ArticleLog> getComment(@PathVariable("id") Long id) {
        ArticleLog articleLog = articleLogService.getOne(new QueryWrapper<ArticleLog>()
                .eq("article_id", id).eq("article_status",
                        ArticleStatusEnum.REJECTED.getCode()).orderByDesc("operate_time"));
        return JsonResponse.buildSuccess(articleLog);
    }


    @GetMapping(value="/statusCount",name="状态统计")
    @PermissionIgnore
    public JsonResponse<List<ArticleStatusCount>> getCount(ArticleQueryVO queryVO){
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id",this.getToken().getUsername());
        queryWrapper.ne("status",ArticleStatusEnum.DELETED.getCode());

        queryWrapper.select("status","count(1)");
        if(StringUtils.isNotEmpty(queryVO.getQueryValue())){
            if(QueryTypeEnum.TITILE_SEARCH.getCode().equals(queryVO.getQueryType())){
                queryWrapper.like("title",queryVO.getQueryValue());
            }
        }
        if(queryVO.getArticleCategory() !=null){
            queryWrapper.eq("article_category",queryVO.getArticleCategory());
        }
        queryWrapper.groupBy("status");
        List<Map<String,Object>> list = articleService.listMaps(queryWrapper);
        List<ArticleStatusCount> statusCountList = new ArrayList<>();
        for(Map<String,Object> map:list){
            ArticleStatusCount statusCount = new ArticleStatusCount();
            Integer status = MapUtils.getInteger(map,"status");
            statusCount.setStatus(status);
            statusCount.setDesc(ArticleStatusEnum.getNameByCode(status));
            statusCount.setCount(MapUtils.getLong(map,"count(1)"));
            statusCountList.add(statusCount);
        }
        return JsonResponse.buildSuccess(statusCountList);
    }
}

