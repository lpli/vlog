package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.User;
import com.jason.module.security.dao.UserMapper;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.entity.UserGroupRe;
import com.jason.module.security.entity.UserRoleR;
import com.jason.module.security.service.UserGroupReService;
import com.jason.module.security.service.UserGroupService;
import com.jason.module.security.service.UserRoleRService;
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

    @Autowired
    private UserRoleRService userRoleRService;

    @Override
    public void saveUser(User user, UserGroup userGroup, Long roleId) {
        this.saveOrUpdate(user);
        if (userGroup != null) {
            userGroupReService.remove(new QueryWrapper<UserGroupRe>().eq("user_id",user.getId()));
            UserGroupRe userGroupRe = new UserGroupRe();
            userGroupRe.setGroupId(userGroup.getId());
            userGroupRe.setUserId(user.getId());
            userGroupReService.save(userGroupRe);
        }
        if(roleId!=null){
            userRoleRService.remove(new QueryWrapper<UserRoleR>().eq("user_id",user.getId()));
            UserRoleR userRoleR = new UserRoleR();
            userRoleR.setRoleId(roleId);
            userRoleR.setUserId(user.getId());
            userRoleRService.save(userRoleR);
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
    public Page<User> selectSubUserByGroupId(IPage<User> page, UserDto query) {
        Page<User> pageDto = new Page<>();
        List<User> list =  baseMapper.selectSubUserByGroupId(page,query);
        pageDto.setCurrent(page.getCurrent());
        pageDto.setSize(page.getSize());
        pageDto.setTotal(page.getTotal());
        pageDto.setRecords(list);
        return pageDto;
    }

    @Override
    public Page<User> selectAllUserByGroupId(IPage<User> page, UserDto query) {
        Page<User> pageDto = new Page<>();
        List<User> list =  baseMapper.selectAllUserByGroupId(page,query);
        pageDto.setCurrent(page.getCurrent());
        pageDto.setSize(page.getSize());
        pageDto.setTotal(page.getTotal());
        pageDto.setRecords(list);
        return pageDto;
    }
}
