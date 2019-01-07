package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Permission;
import com.jason.module.security.dao.PermissionMapper;
import com.jason.module.security.service.PermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements PermissionService {

}
