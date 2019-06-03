package com.jason.module.car.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.car.entity.CarModel;
import com.jason.module.car.service.CarModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 汽车型号 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@RestController
@RequestMapping("/carModel")
public class CarModelController {

    @Autowired
    private CarModelService carModelService;

    @GetMapping(value="/list",name="获取车系列表")
    public JsonResponse<List<CarModel>> list(@RequestParam("brand")String brand){
        QueryWrapper<CarModel> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("brand",brand);
        return JsonResponse.buildSuccess(carModelService.list(queryWrapper));
    }
}

