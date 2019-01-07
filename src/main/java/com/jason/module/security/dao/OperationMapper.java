package com.jason.module.security.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jason.module.security.entity.Operation;

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
    List<Operation> queryOperationListByRole(List<Long> roleIdList);
}
