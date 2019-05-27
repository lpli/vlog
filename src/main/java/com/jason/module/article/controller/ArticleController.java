package com.jason.module.article.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.Article;
import com.jason.module.article.entity.ArticleCover;
import com.jason.module.article.entity.ArticleLog;
import com.jason.module.article.enums.ArticleStatusEnum;
import com.jason.module.article.service.ArticleCategoryService;
import com.jason.module.article.service.ArticleCoverService;
import com.jason.module.article.service.ArticleLogService;
import com.jason.module.article.service.ArticleService;
import com.jason.module.article.vo.ArticleVO;
import com.jason.module.security.controller.BaseController;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;


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
     * @param pageNo
     * @param pageSize
     * @return
     */
    @GetMapping(value="/myList",name="我的文章")
    public JsonResponse<Page<ArticleVO>> myList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                                @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id", this.getToken().getUsername());
        queryWrapper.ne("status", ArticleStatusEnum.DELETED.getCode());
        queryWrapper.orderByDesc("update_time");
        Page<ArticleVO> data = articleService.getPageList(pageNo, pageSize, queryWrapper);
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
    public JsonResponse<Page<ArticleVO>> approveList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                                     @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        if (!this.isAdmin()) {
            List<String> userList = userService.selectSubUserByGroupId(this.getToken());
            queryWrapper.in("author_id", userList);
        }
        queryWrapper.eq("status", ArticleStatusEnum.APPROVE.getCode());
        queryWrapper.orderByDesc("id");
        Page<ArticleVO> data = articleService.getPageList(pageNo, pageSize, queryWrapper);
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
    public JsonResponse<ArticleLog> getComment(@PathVariable("id") Long id) {
        ArticleLog articleLog = articleLogService.getOne(new QueryWrapper<ArticleLog>()
                .eq("article_id", id).eq("article_status",
                        ArticleStatusEnum.REJECTED.getCode()).orderByDesc("operate_time"));
        return JsonResponse.buildSuccess(articleLog);
    }



}

