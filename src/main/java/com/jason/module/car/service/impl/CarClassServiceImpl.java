package com.jason.module.car.service.impl;

import com.jason.module.car.entity.CarClass;
import com.jason.module.car.dao.CarClassMapper;
import com.jason.module.car.service.CarClassService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 汽车款式 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
@Service
public class CarClassServiceImpl extends ServiceImpl<CarClassMapper, CarClass> implements CarClassService {

}
