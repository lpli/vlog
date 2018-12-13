package com.jason.common.vo;

/**
 * @Author liliping
 * @Date 2018/12/10
 **/
public class BaseResponse {

    protected String msg;

    public BaseResponse() {
    }

    public BaseResponse(String msg) {
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("BaseResponse{");
        sb.append("msg='").append(msg).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
