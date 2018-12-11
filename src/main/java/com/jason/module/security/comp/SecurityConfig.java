package com.jason.module.security.comp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.DigestUtils;

@Configuration
public class SecurityConfig {

    /**
     * 密码加密
     * @return
     */
    @Bean
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
}
