package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.entity.Role;
import com.jason.module.security.dao.RoleMapper;
import com.jason.module.security.entity.RolePermissionRe;
import com.jason.module.security.service.RolePermissionReService;
import com.jason.module.security.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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


    @Autowired
    private RolePermissionReService rolePermissionReService;
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

    @Override
    public void authorization(List<Long> permissionIds,Long roleId) {
        rolePermissionReService.remove(new QueryWrapper<RolePermissionRe>().eq("role_id",roleId));
        List<RolePermissionRe> list = new ArrayList<>();
        for(Long permissionId:permissionIds){
            RolePermissionRe rolePermissionRe = new RolePermissionRe();
            rolePermissionRe.setPermissionId(permissionId);
            rolePermissionRe.setRoleId(roleId);
            list.add(rolePermissionRe);
        }
        if(!list.isEmpty()){
            rolePermissionReService.saveBatch(list);
        }

    }

    @Override
    public Role getRole(String username) {
        return baseMapper.queryRoleByUsername(username);
    }
}
