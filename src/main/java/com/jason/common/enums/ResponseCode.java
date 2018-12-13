package com.jason.common.enums;

public enum ResponseCode {
    SUCCESS(1,"ok"),
    FAILURE(0,"bad");

    private Integer code;

    private String msg;

    ResponseCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
