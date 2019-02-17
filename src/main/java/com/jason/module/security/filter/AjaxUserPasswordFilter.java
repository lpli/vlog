package com.jason.module.security.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jason.module.security.wrapper.ContentCacheRequestWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class AjaxUserPasswordFilter extends UsernamePasswordAuthenticationFilter {

    @Autowired
    private ObjectMapper mapper;

    private HttpSessionRequestCache requestCache = new HttpSessionRequestCache();

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
        requestCache.saveRequest(request,response);
        return super.attemptAuthentication(request, response);
    }

    @Override
    protected String obtainPassword(HttpServletRequest request) {
        return this.getParameterFromBody(request,this.SPRING_SECURITY_FORM_PASSWORD_KEY);
    }

    @Override
    protected String obtainUsername(HttpServletRequest request) {
        return this.getParameterFromBody(request,this.SPRING_SECURITY_FORM_USERNAME_KEY);
    }

    private String getParameterFromBody(HttpServletRequest request,String key){
        InputStream in = null;
        try {
            String content = new String(((ContentCacheRequestWrapper)request).getBody());
            Map<String,String> map = mapper.readValue(content, HashMap.class);
            return map.get(key);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(in!=null){
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
