package com.jason.common.config;


import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @Author liliping
 * @Date 2019/3/15
 **/
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

    @Value("${app.img-path}")
    private String IMG_PATH;


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //图片访问路径
        registry.addResourceHandler("/img/**").addResourceLocations(StringUtils.join("file:", IMG_PATH));
        super.addResourceHandlers(registry);
    }
}
