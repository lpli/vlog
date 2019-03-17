package com.jason.module.security.service;

import com.jason.module.security.dto.OperationDto;
import com.jason.module.security.entity.Operation;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.security.entity.Role;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 操作表 服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface OperationService extends IService<Operation> {

    void saveOperation(Operation operation);

    List<OperationDto> getOperationList(List<Long> roleIdList);
    List<OperationDto> getOperationList(Long roleId);

    Map<String, List<OperationDto>> getRoleOperationMap();

    Map<String,List<Role>> getOperationRoleMap();

    Map<String,Object> getUserOperationList(Long roleId,List<Long> roleIdList);
    Map<String,Object> getUserOperationList(Long roleId);
}
