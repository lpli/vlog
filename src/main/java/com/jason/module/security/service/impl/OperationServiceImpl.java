package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.security.dao.OperationMapper;
import com.jason.module.security.dto.OperationDto;
import com.jason.module.security.entity.Operation;
import com.jason.module.security.entity.Permission;
import com.jason.module.security.entity.PermissionOperationRe;
import com.jason.module.security.entity.Role;
import com.jason.module.security.enums.PermissionType;
import com.jason.module.security.service.OperationService;
import com.jason.module.security.service.PermissionOperationReService;
import com.jason.module.security.service.PermissionService;
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

    @Autowired
    private PermissionService permissionService;


    @Autowired
    private PermissionOperationReService permissionOperationReService;

    @Override
    public void saveOperation(Operation operation) {
        Permission permission = new Permission();
        permission.setType(PermissionType.OPERATION.getCode());
        permissionService.save(permission);
        baseMapper.insert(operation);
        PermissionOperationRe permissionOperationRe = new PermissionOperationRe();
        permissionOperationRe.setOperationId(operation.getId());
        permissionOperationRe.setPermissionId(permission.getId());
        permissionOperationReService.save(permissionOperationRe);
    }

    @Override
    public List<OperationDto> getOperationList(List<Long> roleIdList) {
        return baseMapper.queryOperationListByRole(roleIdList);
    }

    @Override
    public List<OperationDto> getOperationList(Long roleId) {
        return baseMapper.queryOperationListByRoleId(roleId);
    }

    @Override
    public Map<String, List<OperationDto>> getRoleOperationMap() {
        Map<String, List<OperationDto>> map = new HashMap<>();
        List<Role> roleList = roleService.list();
        roleList.forEach((role)->{
            List<OperationDto> operations = getOperationList(role.getId());
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

    @Override
    public Map<String,Object> getUserOperationList(Long roleId, List<Long> roleIdList) {
        List<OperationDto> userOps = getOperationList(roleId);

        //当前用户的操作权限
        List<OperationDto> list = getOperationList(roleIdList);
        Map<String,Object> map = new HashMap<>();
        map.put("allOps",list);
        map.put("checkedOps",userOps);
        return map;
    }

    @Override
    public Map<String,Object> getUserOperationList(Long roleId) {
        List<OperationDto> userOps = getOperationList(roleId);

        //当前用户的操作权限
        List<OperationDto> list = baseMapper.queryAll();
        Map<String,Object> map = new HashMap<>();
        map.put("allOps",list);
        map.put("checkedOps",userOps);
        return map;
    }
}
