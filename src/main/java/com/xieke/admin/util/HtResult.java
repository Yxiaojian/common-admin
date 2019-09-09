package com.xieke.admin.util;

import java.io.Serializable;

public class HtResult<T> implements Serializable {
    private static final long serialVersionUID = 1L;
    private int code = 1;
    private String message = "success";
    private T data = null;

    public HtResult(int code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public HtResult() {
        this.data = null;
    }

    public static <R> HtResult<R> success(R object) {
        HtResult<R> htResult = new HtResult();
        htResult.setSuccess(object);
        return htResult;
    }

    public static <R> HtResult<R> success() {
        HtResult<R> htResult = new HtResult();
        htResult.setSuccess();
        return htResult;
    }

    public static <R> HtResult<R> error(String message) {
        HtResult<R> htResult = new HtResult();
        htResult.setError(message == null ? "网络不给力" : message);
        return htResult;
    }

    public void setSuccess() {
        this.code = 1;
        this.message = "success";
    }

    public void setSuccess(T object) {
        this.code = 1;
        this.message = "success";
        this.data = object;
    }

    public void setError() {
        this.code = 0;
        this.message = "系统错误!";
        this.data = null;
    }

    public void setError(String message) {
        this.code = 0;
        this.message = message;
        this.data = null;
    }

    public void setError(Integer code, String message) {
        this.code = code;
        this.message = message;
        this.data = null;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
