package com.stylefeng.guns.modular.system.constant;


public enum ClothingGender {
    M("男"),
    X("男女通用"),
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

    ClothingGender(String cn) {
        this.cn = cn;
    }



}
