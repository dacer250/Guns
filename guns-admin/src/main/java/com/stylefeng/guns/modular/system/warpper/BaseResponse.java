package com.stylefeng.guns.modular.system.warpper;


import java.io.Serializable;

public class BaseResponse<T> implements Serializable {
    /**
     * 是否成功
     */
    private boolean success;

    /**
     * 说明
     */
    private String msg;

    /**
     * 返回数据
     */
    private T data;

    public BaseResponse() {

    }

    public BaseResponse(boolean success, String msg, T data) {
        this.success = success;
        this.msg = msg;
        this.data = data;
    }
}