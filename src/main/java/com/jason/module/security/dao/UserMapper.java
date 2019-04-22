package com.jason.module.security.dao;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface UserMapper extends BaseMapper<User> {

    List<User> selectSubUserByGroupId(IPage<User> page,@Param("query") UserDto query);
    List<String> selectUserByGroupId(@Param("query") UserDto query);
    List<User> selectAllUserByGroupId(IPage<User> page,@Param("query") UserDto query);
}
