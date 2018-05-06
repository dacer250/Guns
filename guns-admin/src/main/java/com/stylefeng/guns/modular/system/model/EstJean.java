package com.stylefeng.guns.modular.system.model;

import com.stylefeng.guns.core.util.BigDecimalUtil;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by x on 2018/5/5.
 */
public class EstJean implements Serializable{

    BigDecimal waist;
    BigDecimal hip;

    BigDecimal crotch;
    BigDecimal length;
    BigDecimal bottom;

    BigDecimal  wave;


    public BigDecimal getWaist() {
        return waist;
    }

    public void setWaist(BigDecimal waist) {
        this.waist = waist;
    }

    public BigDecimal getHip() {
        return hip;
    }

    public void setHip(BigDecimal hip) {
        this.hip = hip;
    }

    public BigDecimal getCrotch() {
        return crotch;
    }

    public void setCrotch(BigDecimal crotch) {
        this.crotch = crotch;
    }

    public BigDecimal getLength() {
        return length;
    }

    public void setLength(BigDecimal length) {
        this.length = length;
    }

    public BigDecimal getBottom() {
        return bottom;
    }

    public void setBottom(BigDecimal bottom) {
        this.bottom = bottom;
    }

    public BigDecimal getWave() {
        return wave;
    }

    public void setWave(BigDecimal wave) {
        this.wave = wave;
    }
}
