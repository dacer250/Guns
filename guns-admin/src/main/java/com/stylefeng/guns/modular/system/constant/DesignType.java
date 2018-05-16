package com.stylefeng.guns.modular.system.constant;


public enum DesignType {
    COMMON("基础"),
    CRAFT("工艺"),
    STITCHWORK_POSITON("刺绣位置"),
    STITCHWORK_COLOR("刺绣颜色"),
    STITCHWORK_FONT("刺绣字体"),
    ACCESSORY_CRAFT("配件"),
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

    DesignType(String cn) {
        this.cn = cn;
    }



}
