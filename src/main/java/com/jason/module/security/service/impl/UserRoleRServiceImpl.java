package com.jason.module.security.service.impl;

import com.jason.module.security.entity.UserRoleR;
import com.jason.module.security.dao.UserRoleRMapper;
import com.jason.module.security.service.UserRoleRService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户-角色关联表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class UserRoleRServiceImpl extends ServiceImpl<UserRoleRMapper, UserRoleR> implements UserRoleRService {

}
