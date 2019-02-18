package com.jason.module.security.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class TokenUtil {

    public static String getRandomToken() {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            return bytesToHex(md.digest(String.valueOf(System.currentTimeMillis()).getBytes()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 二进制转十六进制
     *
     * @param bytes
     * @return
     */
    public static String bytesToHex(byte[] bytes) {
        StringBuffer md5str = new StringBuffer();
        // 把数组每一字节换成16进制连成md5字符串
        int digital;
        for (int i = 0; i < bytes.length; i++) {
            digital = bytes[i];

            if (digital < 0) {
                digital += 256;
            }
            if (digital < 16) {
                md5str.append("0");
            }
            md5str.append(Integer.toHexString(digital));
        }
        return md5str.toString().toUpperCase();
    }

}
