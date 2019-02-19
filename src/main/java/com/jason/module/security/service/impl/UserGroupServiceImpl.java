package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.dao.UserGroupMapper;
import com.jason.module.security.entity.UserGroupRoleRe;
import com.jason.module.security.service.UserGroupRoleReService;
import com.jason.module.security.service.UserGroupService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    private UserGroupRoleReService userGroupRoleReService;

    @Override
    public void addRole(UserGroup userGroup, Role role) {
        UserGroupRoleRe userGroupRoleRe = new UserGroupRoleRe();
        userGroupRoleRe.setRoleId(role.getId());
        userGroupRoleRe.setGroupId(userGroup.getId());
        userGroupRoleReService.save(userGroupRoleRe);
    }

    @Override
    public void removeRole(UserGroup userGroup, Role role) {
        userGroupRoleReService.remove(new QueryWrapper<UserGroupRoleRe>().eq("group_id", userGroup.getId()).eq("role_id", role.getId()));
    }
}
