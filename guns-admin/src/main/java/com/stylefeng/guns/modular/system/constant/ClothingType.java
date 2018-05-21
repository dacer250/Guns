package com.stylefeng.guns.modular.system.constant;

/**
 * 服装类型（品类）
 *
 * @author Liangzhou Liu 2018/03/24
 */
public enum ClothingType {
    A("上衣"),

    B("裤子"),

    C("马甲"),

    D("衬衣"),

    E("大衣"),

    F("夹克"),

    G("礼服套装"),

    H("风衣"),

    I("休闲裤"),

    Q("旗袍"),

    S("裙子")
    /*,

    R("羽绒服"),
    Y("配饰"),

    Z("皮鞋"),

    A_B_C("西服套装"),

    OTHER("其他")*/;

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

    ClothingType(String cn) {
        this.cn = cn;
    }
}
