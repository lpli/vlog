package com.jason.common.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import java.io.Serializable;
import java.util.StringJoiner;

public class JsonResponse extends BaseResponse implements Serializable {

    protected Integer code;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public JsonResponse() {
    }

    public JsonResponse(Integer code,String msg) {
        super(msg);
        this.code = code;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"code\":")
                .append(code);
        sb.append(",\"msg\":\"")
                .append(msg).append('\"');
        sb.append('}');
        return sb.toString();
    }

    public static void main(String[] args) {
        JsonResponse response = new JsonResponse();
        response.setCode(1);
        System.out.println(response);
    }


}
