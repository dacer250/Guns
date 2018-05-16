package com.stylefeng.guns.modular.system.constant;


public enum BodyPosition {
    UPPER("上身"),
    GENERAL("通用"),
    LOWER("下身");


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

    BodyPosition(String cn) {
        this.cn = cn;
    }



}
