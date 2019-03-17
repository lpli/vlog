package com.jason.module.security.dto;

import java.io.Serializable;
import java.util.List;

public class RoleAuthorizationDto implements Serializable {

    private List<Long> permissionIds;

    private Long roleId;

    public List<Long> getPermissionIds() {
        return permissionIds;
    }

    public void setPermissionIds(List<Long> permissionIds) {
        this.permissionIds = permissionIds;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
}
