package com.jason.module.security.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jason.module.security.service.impl.TokenUserDetailService;
import com.jason.module.security.util.HttpUtil;
import com.jason.module.security.wrapper.ContentCacheRequestWrapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.session.NullAuthenticatedSessionStrategy;
import org.springframework.security.web.authentication.session.SessionAuthenticationStrategy;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    private final static String TOKEN_HEADER = "EV-Token";

    @Autowired
    private TokenUserDetailService tokenUserDetailService;
    private SessionAuthenticationStrategy sessionStrategy = new NullAuthenticatedSessionStrategy();

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        if(HttpUtil.isAjaxRequest(request)&& !this.requiresAuthentication(request,response)){
            //ajax请求且不是登录
            String token = request.getHeader(TOKEN_HEADER);
            UserDetails userDetails = tokenUserDetailService.getToken(token);
            if(StringUtils.isEmpty(token)|| userDetails == null){
                unsuccessfulAuthentication(request, (HttpServletResponse) res, new BadCredentialsException("Token已失效"));
                return;
            }
            UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(userDetails.getUsername(), userDetails.getPassword());
            authRequest.setDetails(userDetails);
            this.sessionStrategy.onAuthentication(authRequest, request, response);
            this.successfulAuthentication(request, response, chain, authRequest);
            chain.doFilter(request,response);
            return;
        }
        super.doFilter(req, res, chain);
    }

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
