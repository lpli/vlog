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
        httpServletResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());
        httpServletResponse.getWriter().write(new JsonResponse(ResponseCode.FAILURE.getCode(),e.getLocalizedMessage()).toString());
    }

    private boolean isAjaxRequest(SavedRequest savedRequest){
        List<String> list =  savedRequest.getHeaderValues("X-Requested-With");
        if(!list.isEmpty()&&list.contains("XMLHttpRequest")){
            return true;
        }
        return false;
    }
}
