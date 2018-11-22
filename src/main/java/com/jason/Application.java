package com.jason;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @Author liliping
 * @Date 2018/11/20
 **/
@SpringBootApplication
@MapperScan("com.")
public class Application {


    public static void main(String[] args) {
        SpringApplication.run(Application.class,args);
    }
}
