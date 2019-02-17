package com.jason.module.security.comp;

import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.util.HttpUtil;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class SuccessAuthenticationHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        if (HttpUtil.isAjaxRequest(httpServletRequest)) {
            httpServletResponse.setStatus(HttpServletResponse.SC_OK);
            httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());
            httpServletResponse.getWriter().write(new JsonResponse(ResponseCode.SUCCESS.getCode(),authentication.getName()).toString());
        }else{
            httpServletResponse.sendRedirect("/index");
        }
    }
}
