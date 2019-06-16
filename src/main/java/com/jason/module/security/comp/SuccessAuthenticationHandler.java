package com.jason.module.security.comp;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.PropertyFilter;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.UserDto;
import com.jason.module.security.entity.UserGroup;
import com.jason.module.security.service.impl.TokenUserDetailService;
import com.jason.module.security.util.HttpUtil;
import com.jason.module.security.util.TokenUtil;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用户名密码验证成功后处理类
 */
public class SuccessAuthenticationHandler implements AuthenticationSuccessHandler {

    private TokenUserDetailService userService;

    private RequestMatcher requiresAuthenticationRequestMatcher = new AntPathRequestMatcher("/login");

    public SuccessAuthenticationHandler(TokenUserDetailService userService) {
        this.userService = userService;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        if (HttpUtil.isAjaxRequest(httpServletRequest)) {
            //ajax请求
            if(!requiresAuthenticationRequestMatcher.matches(httpServletRequest)){
                //登录以外的访问 直接 交给后续过滤器处理
                return;
            }
            String token = TokenUtil.getRandomToken();
            UserDto userDto = (UserDto) authentication.getPrincipal();
            this.userService.saveToken(token, userDto);
            userDto.setToken(token);
            httpServletResponse.setStatus(HttpServletResponse.SC_OK);
            httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());
            JsonResponse<UserDto> json = new JsonResponse<>(ResponseCode.SUCCESS.getCode(), "登录成功");
            json.setData(userDto);
            httpServletResponse.getWriter().write(JSONObject.toJSONString(json, new PropertyFilter() {
                @Override
                public boolean apply(Object o, String s, Object o1) {
                    if("password".equalsIgnoreCase(s)){
                        return false;
                    }
                    return true;
                }
            }));
        } else {
            httpServletResponse.sendRedirect("/index");
        }
    }
}
