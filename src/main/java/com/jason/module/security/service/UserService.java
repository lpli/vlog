package com.jason.module.security.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.security.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.security.entity.UserGroup;

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
     */
    void saveUser(User user, UserGroup userGroup);

    void saveUser(User user);
    /**
     * 更新用户
     * @param user
     * @param userGroup
     */
    void updateUser(User user,UserGroup userGroup);


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


    Page<User> selectUserByGroupId(IPage<User> page,Long groupId);

}
