package com.jason.module.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.module.security.dto.GroupDto;
import com.jason.module.security.entity.Role;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.dao.UserGroupMapper;
import com.jason.module.security.entity.UserGroupRe;
import com.jason.module.security.entity.UserGroupRoleRe;
import com.jason.module.security.service.UserGroupReService;
import com.jason.module.security.service.UserGroupRoleReService;
import com.jason.module.security.service.UserGroupService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 用户组表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class UserGroupServiceImpl extends ServiceImpl<UserGroupMapper, UserGroup> implements UserGroupService {

    @Autowired
    private UserGroupRoleReService userGroupRoleReService;

    @Autowired
    private UserGroupReService userGroupReService;

    @Override
    public void addRole(UserGroup userGroup, Role role) {
        UserGroupRoleRe userGroupRoleRe = new UserGroupRoleRe();
        userGroupRoleRe.setRoleId(role.getId());
        userGroupRoleRe.setGroupId(userGroup.getId());
        userGroupRoleReService.save(userGroupRoleRe);
    }

    @Override
    public void removeRole(UserGroup userGroup, Role role) {
        userGroupRoleReService.remove(new QueryWrapper<UserGroupRoleRe>().eq("group_id", userGroup.getId()).eq("role_id", role.getId()));
    }

    @Override
    public List<GroupDto> getGroupListByPid(Long pid) {
        List<GroupDto> list = baseMapper.selectListByPid(pid);
        return getTree(list,pid);
    }

    private List<GroupDto> getTree(List<GroupDto> orgList,Long pid) {
        List<GroupDto> rootList = new ArrayList<>();
        for (GroupDto dto : orgList) {
            if(dto.getId().equals(pid)){
                continue;
            }
            if (dto.getPid().equals(pid)) {
                rootList.add(dto);
            }
            for (GroupDto group : orgList) {
                if (dto.getId().equals(group.getPid())) {
                    if (dto.getChildren() == null) {
                        List<GroupDto> children = new ArrayList<>();
                        children.add(group);
                        dto.setChildren(children);
                    } else {
                        dto.getChildren().add(group);
                    }
                }
            }
            if (dto.getChildren() != null && !dto.getChildren().isEmpty()) {
                Collections.sort(dto.getChildren());
            }
        }
        Collections.sort(rootList);
        return rootList;
    }

    @Override
    public UserGroup getGroup(String username) {
        return baseMapper.selectOneByUsername(username);
    }
}
