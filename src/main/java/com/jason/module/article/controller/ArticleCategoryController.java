package com.jason.module.article.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.ArticleCategory;
import com.jason.module.article.service.ArticleCategoryService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping("/category")
public class ArticleCategoryController {

    @Autowired
    private ArticleCategoryService articleCategoryService;

    /**
     * 栏目
     *
     * @return
     */
    @GetMapping(value = "/list", name = "栏目列表")
    public JsonResponse<List<ArticleCategory>> getCategory() {
        QueryWrapper<ArticleCategory> queryWrapper = new QueryWrapper<>();
        List<ArticleCategory> list = articleCategoryService.list(queryWrapper);
        return JsonResponse.buildSuccess(list);
    }

    @GetMapping(value = "nameList", name = "栏目列表名称")
    public JsonResponse<List<ArticleCategory>> getCategoryName() {
        QueryWrapper<ArticleCategory> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("id", "name");
        List<ArticleCategory> list = articleCategoryService.list(queryWrapper);
        return JsonResponse.buildSuccess(list);
    }

    /**
     * @return
     */
    @PostMapping(value = "/add", name = "添加栏目")
    public JsonResponse addCategory(@RequestBody ArticleCategory articleCategory) {
        articleCategoryService.save(articleCategory);
        return JsonResponse.buildSuccess();
    }

    @PostMapping(value = "/update", name = "更新栏目")
    public JsonResponse updateCategory(@RequestBody ArticleCategory articleCategory) {
        if (articleCategory.getId() == null) {
            return JsonResponse.buildFail("栏目不存在");
        }
        articleCategoryService.updateById(articleCategory);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping(value = "/{id}", name = "删除栏目")
    public JsonResponse deleteCategory(@PathVariable("id") Long id) {
        QueryWrapper<ArticleCategory> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("pid", id);
        int count = articleCategoryService.count(queryWrapper);
        if(count > 0 ){
            return JsonResponse.buildFail("请先删除子栏目!");
        }
        articleCategoryService.remove(new QueryWrapper<ArticleCategory>().eq("id",id));
        return JsonResponse.buildSuccess();
    }

    @GetMapping(value = "/check", name = "校验")
    public JsonResponse check(ArticleCategory articleCategory) {
        QueryWrapper<ArticleCategory> queryWrapper = new QueryWrapper<>();
        if (articleCategory.getId() != null) {
            queryWrapper = queryWrapper.ne("id", articleCategory.getId());
        }
        if (StringUtils.isNotEmpty(articleCategory.getName())) {
            int count = articleCategoryService.count(queryWrapper.eq("name", articleCategory.getName()));
            if (count > 0) {
                return JsonResponse.buildFail("名称已被使用");
            }
        }
        if (articleCategory.getLevel() !=null && articleCategory.getLevel() > 1 && articleCategory.getPid() == null) {
            return JsonResponse.buildFail("请选择上级栏目");
        }
        return JsonResponse.buildSuccess();
    }

}

