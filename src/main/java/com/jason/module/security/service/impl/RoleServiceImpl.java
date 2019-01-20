package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Role;
import com.jason.module.security.dao.RoleMapper;
import com.jason.module.security.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Override
    public List<Role> getRoleList(Long userId) {
        List<Role> list = baseMapper.queryRoleByUserId(userId);
        List<Role> rlist = baseMapper.queryGroupRoleListByUserId(userId);
        for(Role role:rlist){
            if(!list.contains(role)){
                list.add(role);
            }
        }
        return list;
    }

    @Override
    public List<Role> getRoleListByOpId(Long operationId) {
        return baseMapper.queryRoleListByOpId(operationId);
    }
}
