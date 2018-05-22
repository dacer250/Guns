package com.stylefeng.guns.modular.system.constant;



public enum StitchAttr {
    POSTION("位置"),
    FONT("字体"),
    CONTENT("内容");


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

    StitchAttr(String cn) {
        this.cn = cn;
    }



}

