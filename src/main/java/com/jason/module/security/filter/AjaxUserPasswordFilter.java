package com.jason.module.security.filter;

import com.alibaba.fastjson.JSONObject;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.service.impl.TokenUserDetailService;
import com.jason.module.security.util.HttpUtil;
import com.jason.module.security.wrapper.ContentCacheRequestWrapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.authentication.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
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
import java.util.HashMap;
import java.util.Map;

/**
 *  用户名密码获取过滤器
 */
public class AjaxUserPasswordFilter extends UsernamePasswordAuthenticationFilter {


    private final static String TOKEN_HEADER = "EV-Token";
    private boolean postOnly = true;

    private TokenUserDetailService tokenUserDetailService;
    private SessionAuthenticationStrategy sessionStrategy = new NullAuthenticatedSessionStrategy();

    public void setTokenUserDetailService(TokenUserDetailService tokenUserDetailService) {
        this.tokenUserDetailService = tokenUserDetailService;
    }

    @Override
    public void setPostOnly(boolean postOnly) {
        this.postOnly = postOnly;
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        if(HttpUtil.isAjaxRequest(request)&& !this.requiresAuthentication(request,response)){
            //ajax请求且不是登录
            String token = request.getHeader(TOKEN_HEADER);
            UserDto userDto = tokenUserDetailService.getToken(token);
            if(StringUtils.isEmpty(token)|| userDto == null){
                unsuccessfulAuthentication(request, (HttpServletResponse) res, new BadCredentialsException("Token已失效"));
                return;
            }
            UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(userDto, userDto.getPassword());
            authRequest.setDetails(userDto);
            this.sessionStrategy.onAuthentication(authRequest, request, response);
            this.getSuccessHandler().onAuthenticationSuccess(request,response,authRequest);
            chain.doFilter(request,response);
            return;
        }
        super.doFilter(req, res, chain);
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
        if ( this.postOnly && !request.getMethod().equals("POST")) {
            throw new AuthenticationServiceException(
                    "Authentication method not supported: " + request.getMethod());
        }

        String username = obtainUsername(request);
        String password = obtainPassword(request);

        if (username == null) {
            username = "";
        }

        if (password == null) {
            password = "";
        }

        username = username.trim();

        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(
                username, password);

        // Allow subclasses to set the "details" property
        setDetails(request, authRequest);

        Authentication authentication = this.getAuthenticationManager().authenticate(authRequest);
        checkAuthentication(authentication);
        return authentication;
    }

    private void checkAuthentication(Authentication authentication) throws AccountStatusException {
        UserDto userDto = (UserDto) authentication.getPrincipal();
        if(userDto.getUserGroup() == null){
            throw new DisabledException("用户所属组为空，系统无法登录，请联系管理员");
        }
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
        try {
            String content = new String(((ContentCacheRequestWrapper) request).getBody());
            Map<String, String> map = JSONObject.parseObject(content,HashMap.class);
            return map.get(key);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
