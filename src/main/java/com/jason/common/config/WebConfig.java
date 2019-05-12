package com.jason.common.config;


import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @Bean
    public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
        MappingJackson2HttpMessageConverter jsonConverter = new MappingJackson2HttpMessageConverter();
        //设置解析JSON工具类
        ObjectMapper objectMapper = new ObjectMapper();
        //设置解析日期的工具类
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss") {
            @Override
            public Date parse(String source) throws ParseException {
                try {
                    return super.parse(source);//支持解析指定pattern类型。
                } catch (Exception e) {
                    throw new RuntimeException("日期格式非法：" + e);
                }
            }
        };
        objectMapper.setDateFormat(dateFormat);
        //忽略未知属性 防止解析报错
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        jsonConverter.setObjectMapper(objectMapper);
        List<MediaType> list = new ArrayList<>();
        list.add(MediaType.APPLICATION_JSON_UTF8);
        jsonConverter.setSupportedMediaTypes(list);
        return jsonConverter;
    }

}
