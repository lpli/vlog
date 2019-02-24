package com.jason.module.security.dao;

import com.jason.module.security.dto.GroupDto;
import com.jason.module.security.entity.UserGroup;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 用户组表 Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface UserGroupMapper extends BaseMapper<UserGroup> {

    List<GroupDto> selectListByPid(Long pid);

    UserGroup selectOneByUsername(String username);
}
