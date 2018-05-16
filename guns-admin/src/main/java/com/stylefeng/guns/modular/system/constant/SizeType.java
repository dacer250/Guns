package com.stylefeng.guns.modular.system.constant;


public enum SizeType {
    NET("净尺寸"),

    CLOTHING("成衣尺寸");


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

    SizeType(String cn) {
        this.cn = cn;
    }



}
