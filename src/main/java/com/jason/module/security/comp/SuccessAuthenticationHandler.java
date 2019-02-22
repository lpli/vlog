package com.jason.module.security.comp;

import com.alibaba.fastjson.JSONObject;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.service.impl.TokenUserDetailService;
import com.jason.module.security.util.HttpUtil;
import com.jason.module.security.util.TokenUtil;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
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
            this.userService.saveToken(token, authentication.getName());
            httpServletResponse.setStatus(HttpServletResponse.SC_OK);
            httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());

            JsonResponse<String> json = new JsonResponse<>(ResponseCode.SUCCESS.getCode(), "登录成功");
            json.setData(token);
            httpServletResponse.getWriter().write(JSONObject.toJSONString(json));
        } else {
            httpServletResponse.sendRedirect("/index");
        }
    }
}
