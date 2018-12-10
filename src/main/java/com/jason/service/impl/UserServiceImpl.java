package com.jason.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jason.entity.User;
import com.jason.dao.UserMapper;
import com.jason.service.UserService;
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
