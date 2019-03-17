package com.jason.module.security.dto;

import com.jason.module.security.entity.Operation;

public class OperationDto extends Operation {

    private boolean isChecked;

    private Long permissionId;

    public OperationDto() {
    }

    public OperationDto(Operation operation) {
        this.setId(operation.getId());
        this.setCode(operation.getCode());
        this.setName(operation.getName());
        this.setPid(operation.getPid());
        this.setUrl(operation.getUrl());
    }

    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    public boolean isChecked() {
        return isChecked;
    }

    public void setChecked(boolean checked) {
        isChecked = checked;
    }


}
