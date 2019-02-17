package com.jason.module.security.util;

import javax.servlet.http.HttpServletRequest;

public class HttpUtil {

    public static boolean isAjaxRequest(HttpServletRequest httpServletRequest){
        String header =  httpServletRequest.getHeader("X-Requested-With");
        if(("XMLHttpRequest").equals(header)){
            return true;
        }
        return false;
    }
}
