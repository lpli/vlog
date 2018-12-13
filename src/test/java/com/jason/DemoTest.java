package com.jason;

import org.springframework.util.DigestUtils;

public class DemoTest {

    public static void main(String[] args) {
        System.out.println(DigestUtils.md5DigestAsHex("123456".getBytes()));
    }
}
