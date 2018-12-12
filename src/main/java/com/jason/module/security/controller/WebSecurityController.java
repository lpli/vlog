package com.jason.module.security.controller;

import com.jason.common.vo.BaseResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author liliping
 * @Date 2018/12/10
 **/
@RestController
@Slf4j
public class WebSecurityController {


    /**
     * 原请求信息的缓存及恢复
     */
    private RequestCache requestCache = new HttpSessionRequestCache();

    /**
     * 用于重定向
     */
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    /**
     * 当需要身份认证的时候，跳转过来
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/authentication/require")
    @ResponseStatus(code = HttpStatus.UNAUTHORIZED)
    public BaseResponse requireAuthenication(HttpServletRequest request, HttpServletResponse response) throws IOException {
        SavedRequest savedRequest = requestCache.getRequest(request, response);
        if (savedRequest != null) {
            String targetUrl = savedRequest.getRedirectUrl();
            log.info("引发跳转的请求是:" + targetUrl);
            if (!isAjaxRequest(savedRequest)) {
                redirectStrategy.sendRedirect(request, response, "/login");
            }
        }
        return new BaseResponse("访问的服务需要身份认证，请引导用户到登录页");
    }

    /**
     * 是否来源于ajax请求
     * @param savedRequest
     * @return
     */
    private boolean isAjaxRequest(SavedRequest savedRequest){
        List<String> requestWith = savedRequest.getHeaderValues("X-Requested-With");
        if(requestWith.isEmpty() || !requestWith.contains("XMLHttpRequest")){
            return false;
        }
        return true;
    }

}
