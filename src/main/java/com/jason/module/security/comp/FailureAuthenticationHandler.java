package com.jason.module.security.comp;

import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.BaseResponse;
import com.jason.common.vo.JsonResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Component
@Slf4j
public class FailureAuthenticationHandler implements AuthenticationFailureHandler {


    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        if (isAjaxRequest(httpServletRequest)) {
            httpServletResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());
            httpServletResponse.getWriter().write(new JsonResponse(ResponseCode.FAILURE.getCode(),e.getLocalizedMessage()).toString());
        }else{
            httpServletRequest.getSession().setAttribute("SPRING_SECURITY_LAST_EXCEPTION", e);
            httpServletResponse.sendRedirect("/login?error");
        }
    }

    private boolean isAjaxRequest(HttpServletRequest httpServletRequest){
        String header =  httpServletRequest.getHeader("X-Requested-With");
        if(("XMLHttpRequest").equals(header)){
            return true;
        }
        return false;
    }
}
