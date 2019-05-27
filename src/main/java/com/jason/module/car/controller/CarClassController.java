package com.jason.module.car.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.car.entity.CarClass;
import com.jason.module.car.service.CarClassService;
import com.jason.module.car.vo.CarClassQueryVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 汽车款式 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@RestController
@RequestMapping("/carClass")
public class CarClassController {

    @Autowired
    private CarClassService carClassService;
    /**
     *
     * @param queryVO
     * @return
     */
    @GetMapping(value="/list",name="获取车型")
    public JsonResponse<List<CarClass>> getList(CarClassQueryVO queryVO){
        QueryWrapper<CarClass> queryWrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(queryVO.getLetter())){
            queryWrapper.eq("letter",queryVO.getLetter());
        }
        if(StringUtils.isNotEmpty(queryVO.getBrand())){
            queryWrapper.eq("band",queryVO.getBrand());
        }
        if(StringUtils.isNotEmpty(queryVO.getModel())){
            queryWrapper.eq("model",queryVO.getModel());
        }
        List<CarClass> list =  carClassService.list(queryWrapper);
        return JsonResponse.buildSuccess(list);
    }

    @PostMapping(value="/add",name="添加车型")
    public JsonResponse add(CarClass carClass){
        if(StringUtils.isEmpty(carClass.getName())){
            return JsonResponse.buildFail("名称不能为空");
        }
        if(carClass.getPrice() == null){
            return JsonResponse.buildFail("价格不能为空");
        }
        carClassService.save(carClass);
        return JsonResponse.buildSuccess();
    }

    @PostMapping(value = "/update",name="修改车型")
    public JsonResponse update(CarClass carClass){
        if(carClass.getId() == null){
            return JsonResponse.buildFail("ID不能为空");
        }
        if(StringUtils.isEmpty(carClass.getName())){
            return JsonResponse.buildFail("名称不能为空");
        }
        if(carClass.getPrice() == null){
            return JsonResponse.buildFail("价格不能为空");
        }
        carClassService.updateById(carClass);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping(value = "/{id}",name="删除车型")
    public JsonResponse del(@PathVariable("id")Long id){
        carClassService.remove(new QueryWrapper<CarClass>().eq("id",id));
        return JsonResponse.buildSuccess();
    }
}

