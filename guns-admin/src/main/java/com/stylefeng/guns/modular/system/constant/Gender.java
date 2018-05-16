package com.stylefeng.guns.modular.system.constant;


public enum Gender {
    M("男"),

    F("女");


    /**
     * 中文
     */
    private String cn;

    public String getCn() {
        return cn;
    }

    public void setCn(String cn) {
        this.cn = cn;
    }

    Gender(String cn) {
        this.cn = cn;
    }



}
