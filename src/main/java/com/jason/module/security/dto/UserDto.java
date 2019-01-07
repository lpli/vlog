package com.jason.module.security.dto;

import com.jason.module.security.entity.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

public class UserDto extends User implements UserDetails {

    private List<UserAuthority> userAuthorityList;

    private List<Menu> menuList;

    private List<Element> elementList;

    private List<Operation> operationList;

    public List<UserAuthority> getUserAuthorityList() {
        return userAuthorityList;
    }

    public void setUserAuthorityList(List<UserAuthority> userAuthorityList) {
        this.userAuthorityList = userAuthorityList;
    }

    public List<Menu> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<Menu> menuList) {
        this.menuList = menuList;
    }

    public List<Element> getElementList() {
        return elementList;
    }

    public void setElementList(List<Element> elementList) {
        this.elementList = elementList;
    }

    public List<Operation> getOperationList() {
        return operationList;
    }

    public void setOperationList(List<Operation> operationList) {
        this.operationList = operationList;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.userAuthorityList;
    }

    @Override
    public String getUsername() {
        return this.getUserName();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
