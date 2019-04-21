package com.jason.module.article.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.Article;
import com.jason.module.article.service.ArticleService;
import com.jason.module.security.controller.BaseController;
import com.jason.module.security.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;


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

    /**
     * 保存草稿
     *
     * @param article
     * @return
     */
    @PostMapping("/draft")
    public JsonResponse draft(@RequestBody Article article) {
        UserDto user = this.getToken();
        article.setAuthorId(user.getUsername());
        article.setCreateTime(new Date());
        articleService.draft(article);
        return JsonResponse.buildSuccess();
    }


    /**
     * 我的稿件
     * @param pageNo
     * @param pageSize
     * @return
     */
    @GetMapping("/myList")
    public JsonResponse<Page<Article>> myList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                              @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("author_id", this.getToken().getUsername());
        Page<Article> data = articleService.getPageList(pageNo, pageSize, queryWrapper);
        JsonResponse<Page<Article>> response = new JsonResponse<>();
        response.setCode(ResponseCode.SUCCESS.getCode());
        response.setData(data);
        return response;
    }

}

