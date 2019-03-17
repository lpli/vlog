package com.jason.module.security.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jason.module.security.dto.OperationDto;
import com.jason.module.security.entity.Operation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 操作表 Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface OperationMapper extends BaseMapper<Operation> {
    List<OperationDto> queryOperationListByRole(@Param("roleIdList") List<Long> roleIdList);
    List<OperationDto> queryOperationListByRoleId(@Param("roleId") Long roleId);
    List<OperationDto> queryAll();
}
