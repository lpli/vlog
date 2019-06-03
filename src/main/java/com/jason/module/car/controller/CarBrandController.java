package com.jason.module.car.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.car.entity.CarBrand;
import com.jason.module.car.service.CarBrandService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 汽车品牌 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@RestController
@RequestMapping("/carBrand")
public class CarBrandController {

    @Autowired
    private CarBrandService carBandService;

    @GetMapping(value="/list",name="品牌列表")
    public JsonResponse<List<CarBrand>> list(@RequestParam(value = "letter",required = false)String letter){
        QueryWrapper<CarBrand> queryWrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(letter)){
            queryWrapper.eq("letter",letter);
        }
        queryWrapper.orderByAsc("letter");
        return JsonResponse.buildSuccess(carBandService.list(queryWrapper));
    }

}

