package com.jason.module.security.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.entity.UserRoleR;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface UserService extends IService<User> {

    /**
     * 添加用户
     * @param user 用户
     * @param userGroup 组
     * @param roleId 用户角色ID
     */
    void saveUser(User user, UserGroup userGroup, Long roleId);



    /**
     * 禁用用户
     * @param user
     */
    void disableUser(User user);

    /**
     * 启用用户
     * @param user
     */
    void enableUser(User user);


    Page<User> selectSubUserByGroupId(IPage<User> page, UserDto query);
    Page<User> selectAllUserByGroupId(IPage<User> page, UserDto query);

}
