package com.jason.module.car.service.impl;

import com.jason.module.car.entity.CarModel;
import com.jason.module.car.dao.CarModelMapper;
import com.jason.module.car.service.CarModelService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 汽车型号 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@Service
public class CarModelServiceImpl extends ServiceImpl<CarModelMapper, CarModel> implements CarModelService {

}
