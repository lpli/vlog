package com.jason.module.security.comp;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;
import java.util.Iterator;

/**
 * @Author liliping
 * @Date 2019/3/18
 **/
public class CustAccessDecisionManager implements AccessDecisionManager {

    private String adminRoleCode;

    public CustAccessDecisionManager() {
    }

    public CustAccessDecisionManager(String adminRoleCode) {
        this.adminRoleCode = adminRoleCode;
    }

    public String getAdminRoleCode() {
        return adminRoleCode == null?"ROLE_ADMIN":adminRoleCode;
    }

    @Override
    public boolean supports(ConfigAttribute attribute) {
        return true;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }

    @Override
    public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> configAttributes) throws AccessDeniedException, InsufficientAuthenticationException {
        if(hasRole(adminRoleCode,authentication)){
            //管理员直接放行
            return;
        }
        if(null== configAttributes || configAttributes.size() <=0) {
            return;
        }
        ConfigAttribute c;
        String needRole;
        for(Iterator<ConfigAttribute> iter = configAttributes.iterator(); iter.hasNext(); ) {
            c = iter.next();
            needRole = c.getAttribute();
            //authentication 为在注释1 中循环添加到 GrantedAuthority 对象中的权限信息集合
            if(hasRole(needRole,authentication)){
                return;
            }
        }
        throw new AccessDeniedException("no right");
    }

    private boolean hasRole(String code,Authentication authentication){
        for(GrantedAuthority ga : authentication.getAuthorities()) {
            if(code.trim().equals(ga.getAuthority())) {
                return true;
            }
        }
        return false;
    }
}
