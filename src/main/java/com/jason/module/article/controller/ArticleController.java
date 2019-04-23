package com.jason.module.article.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.Article;
import com.jason.module.article.entity.ArticleCover;
import com.jason.module.article.enums.ArticleStatusEnum;
import com.jason.module.article.service.ArticleCoverService;
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

    /**
     * 保存草稿
     *
     * @param article
     * @return
     */
    @PostMapping("/draft")
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
    @PostMapping("/toApprove")
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
    @PostMapping("/approve/{id}/reject")
    public JsonResponse reject(@PathVariable("id") String id, String comment) {
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
    @PostMapping("/approve/{id}/pass")
    public JsonResponse pass(@PathVariable("id") String id, String comment) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        articleService.pass(article, this.getToken(), comment);
        return JsonResponse.buildSuccess();
    }

    /**
     * 稿件详情
     *
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    public JsonResponse<ArticleVO> detail(@PathVariable("id") String id) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        Article article = articleService.getOne(queryWrapper);
        if (article == null) {
            return JsonResponse.buildFail("稿件不存在");
        }
        ArticleVO vo = new ArticleVO();
        BeanUtils.copyProperties(article,vo);
        List<ArticleCover> coverList = articleCoverService.list(new QueryWrapper<ArticleCover>().eq("article_id",article.getId()));
        vo.setCoverList(coverList);
        return JsonResponse.buildSuccess(vo);
    }

    /**
     * 逻辑删除稿件
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
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
    @GetMapping("/myList")
    public JsonResponse<Page<ArticleVO>> myList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                                @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id", this.getToken().getUsername());
        queryWrapper.ne("status",ArticleStatusEnum.DELETED.getCode());
        queryWrapper.orderByDesc("id");
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
    @GetMapping("/approveList")
    public JsonResponse<Page<ArticleVO>> approveList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                                     @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        if(!this.isAdmin()){
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

}

