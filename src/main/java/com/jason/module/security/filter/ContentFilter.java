package com.jason.module.security.filter;

import com.jason.module.security.wrapper.ContentCacheRequestWrapper;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class ContentFilter extends GenericFilterBean {


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ContentCacheRequestWrapper requestWrapper = new ContentCacheRequestWrapper((HttpServletRequest) servletRequest);
        filterChain.doFilter(requestWrapper,servletResponse);
    }



}
