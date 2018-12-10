package com.jason.module.security.adapter;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.stereotype.Component;

/**
 * @Author liliping
 * @Date 2018/12/10
 **/
@Component
public class VlogSecurityAdapter extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/login","/logout")
                .permitAll().anyRequest().authenticated().and().formLogin().loginPage("/login")
                .failureUrl("/authentication/require")
                .and().logout().logoutSuccessUrl("/login");
    }
}
