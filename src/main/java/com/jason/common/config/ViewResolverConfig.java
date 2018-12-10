package com.jason.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

/**
 * @Author liliping
 * @Date 2018/12/10
 **/
@Configuration
public class ViewResolverConfig {
    @Bean
    public BeanNameViewResolver beanNameViewResolver(){
        BeanNameViewResolver resolver = new BeanNameViewResolver();
        return resolver;
    }

    @Bean
    public MappingJackson2JsonView jsonView(){
        MappingJackson2JsonView jsonView = new MappingJackson2JsonView();
        return jsonView;
    }
}
