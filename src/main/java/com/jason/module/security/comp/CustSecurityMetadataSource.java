package com.jason.module.security.comp;

import com.jason.module.security.entity.Role;
import com.jason.module.security.service.OperationService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 加载资源权限
 */
@Configuration
public class CustSecurityMetadataSource implements FilterInvocationSecurityMetadataSource, InitializingBean {


    @Autowired
    private OperationService operationService;


    private Map<String, Collection<ConfigAttribute>> resourceMap = null;


    /**
     * 加载所有资源的角色列表
     */
    private void loadResouceMap(){
        if(resourceMap == null){
            resourceMap = new ConcurrentHashMap<>();
        }else{
            resourceMap.clear();
        }
        Map<String, List<Role>> map = operationService.getOperationRoleMap();
        for(Map.Entry<String,List<Role>> en:map.entrySet()){
            String url = en.getKey();
            List<Role> roleList = en.getValue();
            Collection<ConfigAttribute> collection = new ArrayList<>();
            for(Role role:roleList){
                collection.add(new SecurityConfig(role.getCode()));
            }
            resourceMap.put(url,collection);
        }

    }

    /**
     * 获取资源需要的角色
     * @param o
     * @return
     * @throws IllegalArgumentException
     */
    @Override
    public Collection<ConfigAttribute> getAttributes(Object o) throws IllegalArgumentException {
        HttpServletRequest request = ((FilterInvocation)o).getRequest();
        TreeMap<String,Collection<ConfigAttribute>> treeMap = new TreeMap<>(resourceMap);
        Iterator<String> iterator = treeMap.keySet().iterator();
        RequestMatcher urlMatcher;
        Collection<ConfigAttribute> attrSet = new HashSet<>();
        while (iterator.hasNext()) {
            String resURL = iterator.next();
            urlMatcher = new AntPathRequestMatcher(resURL);
            if (urlMatcher.matches(request)|| StringUtils.equals(request.getRequestURI(),resURL)) {
                attrSet.addAll(treeMap.get(resURL));
            }
        }
        return attrSet;
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        loadResouceMap();
    }
}
