package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jason.module.security.entity.User;
import com.jason.module.security.dao.UserMapper;
import com.jason.module.security.service.UserService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2018-12-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
