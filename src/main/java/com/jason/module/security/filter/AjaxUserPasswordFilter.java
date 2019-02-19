package com.jason.module.security.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jason.module.security.util.HttpUtil;
import com.jason.module.security.wrapper.ContentCacheRequestWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 *  用户名密码获取过滤器
 */
public class AjaxUserPasswordFilter extends UsernamePasswordAuthenticationFilter {

    @Autowired
    private ObjectMapper mapper;


    @Override
    protected String obtainPassword(HttpServletRequest request) {
        if (HttpUtil.isAjaxRequest(request)) {
            return this.getParameterFromBody(request, UsernamePasswordAuthenticationFilter.SPRING_SECURITY_FORM_PASSWORD_KEY);
        }
        return super.obtainPassword(request);
    }

    @Override
    protected String obtainUsername(HttpServletRequest request) {
        if (HttpUtil.isAjaxRequest(request)) {
            return this.getParameterFromBody(request, UsernamePasswordAuthenticationFilter.SPRING_SECURITY_FORM_USERNAME_KEY);
        }
        return super.obtainUsername(request);
    }

    private String getParameterFromBody(HttpServletRequest request, String key) {
        InputStream in = null;
        try {
            String content = new String(((ContentCacheRequestWrapper) request).getBody());
            Map<String, String> map = mapper.readValue(content, HashMap.class);
            return map.get(key);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }
}
