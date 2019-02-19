package com.jason.common.vo;

import com.jason.common.enums.ResponseCode;

import java.io.Serializable;

public class JsonResponse<T> extends BaseResponse implements Serializable {

    protected Integer code;
    protected T data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public JsonResponse() {
    }

    public JsonResponse(Integer code,String msg) {
        super(msg);
        this.code = code;
    }

    public JsonResponse(Integer code, T data) {
        this.code = code;
        this.data = data;
    }


    public static JsonResponse buildSuccess(){
        return new JsonResponse(ResponseCode.SUCCESS.getCode(),ResponseCode.SUCCESS.getMsg());
    }

    public static JsonResponse buildFail(){
        return new JsonResponse(ResponseCode.FAILURE.getCode(),ResponseCode.FAILURE.getMsg());
    }

    public static JsonResponse buildFail(String msg){
        return new JsonResponse(ResponseCode.FAILURE.getCode(),msg);
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
