package com.jason.module.article.controller;


import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.article.entity.CarCategory;
import com.jason.module.article.service.CarCategoryService;
import com.jason.module.article.vo.CarCategoryQueryVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.misc.IOUtils;
import sun.misc.Resource;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-04-21
 */
@RestController
@RequestMapping("/carCategory")
@Slf4j
public class CarCategoryController {

    @Value("json/car-category.json")
    private ClassPathResource resource;
    @Autowired
    private CarCategoryService carCategoryService;

    /**
     *
     * @return
     */
    @GetMapping(value="/config",name="获取车型配置")
    public JsonResponse<JSONObject> getCategory(){
        try {
            String str = new String(IOUtils.readFully(resource.getInputStream(),-1,true));
            return JsonResponse.buildSuccess(JSONObject.parseObject(str));
        } catch (IOException e) {
            log.error("读取配置异常",e);
        }
        return JsonResponse.buildFail();
    }

    @PostMapping(value="/config",name="更新车型配置")
    public JsonResponse putCategory(JSONObject object){
        OutputStream outputStream = null;
        try {
            outputStream = new FileOutputStream(resource.getFile());
            org.apache.commons.io.IOUtils.write(object.toJSONString(),outputStream,"UTF-8");
            return JsonResponse.buildSuccess();
        } catch (IOException e) {

        }finally {
            if(outputStream!=null){
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return JsonResponse.buildFail();
    }


    /**
     *
     * @param queryVO
     * @return
     */
    @GetMapping(value="/list",name="获取车型")
    public JsonResponse<List<CarCategory>> getList(CarCategoryQueryVO queryVO){
        QueryWrapper<CarCategory> queryWrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(queryVO.getLetter())){
            queryWrapper.eq("letter",queryVO.getLetter());
        }
        if(StringUtils.isNotEmpty(queryVO.getBand())){
            queryWrapper.eq("band",queryVO.getBand());
        }
        if(StringUtils.isNotEmpty(queryVO.getModel())){
            queryWrapper.eq("model",queryVO.getModel());
        }
        List<CarCategory> list =  carCategoryService.list(queryWrapper);
        return JsonResponse.buildSuccess(list);
    }

    @PostMapping(value="/add",name="添加车型")
    public JsonResponse add(CarCategory carCategory){
        if(StringUtils.isEmpty(carCategory.getName())){
            return JsonResponse.buildFail("名称不能为空");
        }
        if(carCategory.getPrice() == null){
            return JsonResponse.buildFail("价格不能为空");
        }
        carCategoryService.save(carCategory);
        return JsonResponse.buildSuccess();
    }

    @PostMapping(value = "/update",name="修改车型")
    public JsonResponse update(CarCategory carCategory){
        if(carCategory.getId() == null){
            return JsonResponse.buildFail("ID不能为空");
        }
        if(StringUtils.isEmpty(carCategory.getName())){
            return JsonResponse.buildFail("名称不能为空");
        }
        if(carCategory.getPrice() == null){
            return JsonResponse.buildFail("价格不能为空");
        }
        carCategoryService.updateById(carCategory);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping(value = "/{id}",name="删除车型")
    public JsonResponse del(@PathVariable("id")Long id){
        carCategoryService.remove(new QueryWrapper<CarCategory>().eq("id",id));
        return JsonResponse.buildSuccess();
    }
}

