package com.jason.module.security.comp;

import com.jason.module.security.service.impl.TokenUserDetailService;
import com.jason.module.security.util.TokenUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author liliping
 * @Date 2019/2/22
 **/
public class LogoutHandler implements LogoutSuccessHandler {

    private TokenUserDetailService userService;

    public LogoutHandler(TokenUserDetailService userService) {
        this.userService = userService;
    }

    @Override
    public void onLogoutSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        String token = TokenUtil.getToken(httpServletRequest);
        if(!StringUtils.isEmpty(token)){
            userService.removeToken(token);
        }
        SecurityContextHolder.clearContext();
    }
}
