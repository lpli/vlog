package com.jason.module.car.service.impl;

import com.jason.module.car.entity.CarBrand;
import com.jason.module.car.dao.CarBrandMapper;
import com.jason.module.car.service.CarBrandService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 汽车品牌 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@Service
public class CarBrandServiceImpl extends ServiceImpl<CarBrandMapper, CarBrand> implements CarBrandService {

}
