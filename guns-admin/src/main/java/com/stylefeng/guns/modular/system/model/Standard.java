package com.stylefeng.guns.modular.system.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.math.BigDecimal;

@TableName("standard_male")
public class Standard extends Model<Standard>{

    @TableId(value="id", type= IdType.AUTO)
    private Integer id;

    BigDecimal height;

    BigDecimal weight;

    BigDecimal bust;

    BigDecimal middleWaist;

    BigDecimal shoulder;

    BigDecimal sleeve;
    BigDecimal collar;

    BigDecimal waist;
    BigDecimal hip;

    BigDecimal crotch;
    BigDecimal length;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getHeight() {
        return height;
    }

    public void setHeight(BigDecimal height) {
        this.height = height;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public BigDecimal getBust() {
        return bust;
    }

    public void setBust(BigDecimal bust) {
        this.bust = bust;
    }

    public BigDecimal getMiddleWaist() {
        return middleWaist;
    }

    public void setMiddleWaist(BigDecimal middleWaist) {
        this.middleWaist = middleWaist;
    }

    public BigDecimal getShoulder() {
        return shoulder;
    }

    public void setShoulder(BigDecimal shoulder) {
        this.shoulder = shoulder;
    }

    public BigDecimal getSleeve() {
        return sleeve;
    }

    public void setSleeve(BigDecimal sleeve) {
        this.sleeve = sleeve;
    }

    public BigDecimal getCollar() {
        return collar;
    }

    public void setCollar(BigDecimal collar) {
        this.collar = collar;
    }

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

    @Override
    protected Serializable pkVal() {
        return id;
    }
}
