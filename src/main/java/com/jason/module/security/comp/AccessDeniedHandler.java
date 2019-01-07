package com.jason.module.security.comp;

import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import org.springframework.http.MediaType;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class AccessDeniedHandler implements org.springframework.security.web.access.AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException, ServletException {
        if (isAjaxRequest(httpServletRequest)) {
            httpServletResponse.setStatus(HttpServletResponse.SC_FORBIDDEN);
            httpServletResponse.setContentType(MediaType.APPLICATION_JSON_UTF8.toString());
            httpServletResponse.getWriter().write(new JsonResponse(ResponseCode.FAILURE.getCode(),e.getLocalizedMessage()).toString());
        }else{
            httpServletResponse.sendRedirect("/403");
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
