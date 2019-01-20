package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Operation;
import com.jason.module.security.dao.OperationMapper;
import com.jason.module.security.entity.Role;
import com.jason.module.security.service.OperationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.security.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 操作表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class OperationServiceImpl extends ServiceImpl<OperationMapper, Operation> implements OperationService {

    @Autowired
    private RoleService roleService;

    @Override
    public List<Operation> getOperationList(List<Long> roleIdList) {
        return baseMapper.queryOperationListByRole(roleIdList);
    }

    @Override
    public List<Operation> getOperationList(Long roleId) {
        return baseMapper.queryOperationListByRoleId(roleId);
    }

    @Override
    public Map<String, List<Operation>> getRoleOperationMap() {
        Map<String, List<Operation>> map = new HashMap<>();
        List<Role> roleList = roleService.list();
        roleList.forEach((role)->{
            List<Operation> operations = getOperationList(role.getId());
            map.put(role.getCode(),operations);
        });
        return map;
    }

    @Override
    public Map<String, List<Role>> getOperationRoleMap() {
        Map<String, List<Role>> map = new HashMap<>();
        List<Operation> operations = this.list();
        operations.forEach((op)->{
            List<Role> roleList = roleService.getRoleListByOpId(op.getId());
            map.put(op.getUrl(),roleList);
        });
        return map;
    }
}
