package com.jason.module.article.controller;


import com.jason.module.article.entity.Article;
import com.jason.module.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.xml.ws.Response;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
@Controller
@RequestMapping("/articleCategory")
public class ArticleCategoryController {

    @Autowired
    private ArticleService articleService;


}

