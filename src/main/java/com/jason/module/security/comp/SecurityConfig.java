package com.jason.module.security.comp;

import com.jason.module.security.filter.AjaxUserPasswordFilter;
import com.jason.module.security.filter.ContentFilter;
import com.jason.module.security.service.impl.TokenUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.vote.AffirmativeBased;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.expression.WebExpressionVoter;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.util.DigestUtils;

import java.util.Arrays;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    private TokenUserDetailService tokenUserDetailService;


    @Autowired
    private MessageSource messageSource;
    @Autowired
    private AccessDeniedHandler accessDeniedHandler;


    /**
     * 密码加密
     * @return
     */
    @Bean("myPasswordEncoder")
    public PasswordEncoder passwordEncoder(){
        return new PasswordEncoder() {
            @Override
            public String encode(CharSequence charSequence) {
                return DigestUtils.md5DigestAsHex(charSequence.toString().getBytes());
            }

            @Override
            public boolean matches(CharSequence charSequence, String s) {
                return s.equals(DigestUtils.md5DigestAsHex(charSequence.toString().getBytes()));
            }
        };
    }

    /**
     *  添加认证方式
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        DaoAuthenticationProvider authenticationProvider =  new DaoAuthenticationProvider();
        authenticationProvider.setMessageSource(messageSource);
        authenticationProvider.setUserDetailsService(tokenUserDetailService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        auth.authenticationProvider(authenticationProvider);
    }



    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/**/*.html");
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/login","/403")
                .permitAll().anyRequest().authenticated().and().formLogin().loginPage("/login")
                .successHandler(authenticationSuccessHandler()).failureHandler(authenticationFailureHandler()).and().logout().logoutUrl("/logout")
                .logoutSuccessHandler(new LogoutHandler(tokenUserDetailService))
                .and().exceptionHandling().accessDeniedHandler(accessDeniedHandler).and().csrf().disable();
        http.addFilterAt(myUsernamePasswordAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
        http.addFilterBefore(new ContentFilter(), UsernamePasswordAuthenticationFilter.class);
    }


    public UsernamePasswordAuthenticationFilter myUsernamePasswordAuthenticationFilter() throws Exception {
        AjaxUserPasswordFilter ajaxUserPasswordFilter =  new AjaxUserPasswordFilter();
        ajaxUserPasswordFilter.setTokenUserDetailService(tokenUserDetailService);
        ajaxUserPasswordFilter.setAuthenticationManager(authenticationManagerBean());
        ajaxUserPasswordFilter.setAuthenticationFailureHandler(authenticationFailureHandler());
        ajaxUserPasswordFilter.setAuthenticationSuccessHandler(authenticationSuccessHandler());
        return ajaxUserPasswordFilter;
    }

    @Bean
    public AuthenticationFailureHandler authenticationFailureHandler(){
        return new FailureAuthenticationHandler();
    }

    @Bean
    public AuthenticationSuccessHandler authenticationSuccessHandler(){
        return new SuccessAuthenticationHandler(tokenUserDetailService);
    }

}
