package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.User;
import com.jason.module.security.dao.UserMapper;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.entity.UserGroupRe;
import com.jason.module.security.service.UserGroupReService;
import com.jason.module.security.service.UserGroupService;
import com.jason.module.security.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Autowired
    private UserGroupReService userGroupReService;

    @Override
    public void saveUser(User user, UserGroup userGroup) {
        this.saveOrUpdate(user);
        if (userGroup != null) {
            userGroupReService.remove(new QueryWrapper<UserGroupRe>().eq("user_id",user.getId()));
            UserGroupRe userGroupRe = new UserGroupRe();
            userGroupRe.setGroupId(userGroup.getId());
            userGroupRe.setUserId(user.getId());
            userGroupReService.save(userGroupRe);
        }
    }

    @Override
    public void saveUser(User user) {
        this.saveUser(user,null);
    }

    @Override
    public void updateUser(User user, UserGroup userGroup) {
        baseMapper.updateById(user);
        if (userGroup != null) {
            //组关系变更,用户只能属于一个组
            UserGroupRe userGroupRe = new UserGroupRe();
            userGroupRe.setUserId(user.getId());
            userGroupRe.setGroupId(userGroup.getId());
            userGroupReService.update(userGroupRe, new QueryWrapper<UserGroupRe>().eq("user_id", user.getId()));
        }
    }

    @Override
    public void disableUser(User user) {
        user.setEnable(false);
        baseMapper.update(user, new QueryWrapper<User>().eq("id", user.getId()));
    }

    @Override
    public void enableUser(User user) {
        user.setEnable(true);
        baseMapper.update(user, new QueryWrapper<User>().eq("id", user.getId()));
    }

    @Override
    public Page<User> selectUserByGroupId(IPage<User> page, UserDto query) {
        Page<User> pageDto = new Page<>();
        List<User> list =  baseMapper.selectUserByGroupId(page,query);
        pageDto.setCurrent(page.getCurrent());
        pageDto.setSize(page.getSize());
        pageDto.setTotal(page.getTotal());
        pageDto.setRecords(list);
        return pageDto;
    }
}
