package com.jason.module.security.adapter;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.stereotype.Component;

/**
 * @Author liliping
 * @Date 2018/12/10
 **/
@Component
public class VlogSecurityAdapter extends WebSecurityConfigurerAdapter {


    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/**/*.html","/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/login","/logout")
                .permitAll().anyRequest().authenticated().and().formLogin().loginPage("/loginPage")
                .failureUrl("/authentication/require")
                .and().logout().logoutSuccessUrl("/login");
    }
}
