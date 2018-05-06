package com.stylefeng.guns.modular.system.constant;
public enum DressType{
    VeryTight("紧身型"),

    Tight("收身型"),

    Standard("标准型"),

    Loose("宽松型");
    private String cn;

    public String getCn() {
        return cn;
    }

    public void setCn(String cn) {
        this.cn = cn;
    }

    DressType(String cn) {
        this.cn = cn;
    }
}