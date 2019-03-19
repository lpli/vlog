package com.jason.module.security.dao;

import com.jason.module.security.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface RoleMapper extends BaseMapper<Role> {

    List<Role> queryRoleByUserId(Long userId);

    List<Role> queryGroupRoleListByUserId(Long userId);

    List<Role> queryRoleListByOpId(Long operationId);

    Role queryRoleByUsername(@Param("username") String username);
}
