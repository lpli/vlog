package com.jason.module.security.entity;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;

@Data
public class UserAuthority implements GrantedAuthority {

    private Role role;

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public UserAuthority(Role role) {
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return role.getCode();
    }


}
