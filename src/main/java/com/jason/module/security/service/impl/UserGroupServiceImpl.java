package com.jason.module.security.service.impl;

import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.dao.UserGroupMapper;
import com.jason.module.security.service.UserGroupService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户组表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class UserGroupServiceImpl extends ServiceImpl<UserGroupMapper, UserGroup> implements UserGroupService {

}
