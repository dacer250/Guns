package com.stylefeng.guns.modular.system.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 某个型号下的尺码列表
 * </p>
 * @since 2018-05-05
 */
public class Spitem extends Model<Spitem> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 规格ID
     */
    private Integer spid;
    /**
     * 型号或者尺码名称|S M L 或者25 26 27
     */
    private String name;
    /**
     * 领围
     */
    private BigDecimal collar;
    /**
     * 前长
     */
    private BigDecimal frontLength;
    /**
     * 后长
     */
    private BigDecimal backLength;
    /**
     * 衣长
     */
    private BigDecimal clothLength;
    /**
     * 肩宽
     */
    private BigDecimal shoulder;
    /**
     * 袖长
     */
    private BigDecimal sleeve;
    /**
     * 胸围
     */
    private BigDecimal bust;
    /**
     * 中腰
     */
    private BigDecimal middleWaist;
    /**
     * 袖头
     */
    private BigDecimal sleeveHeader;
    /**
     * 下摆
     */
    private BigDecimal hem;
    /**
     * 袖肥
     */
    private BigDecimal sleeveWidth;
    /**
     * 袖口
     */
    private BigDecimal wristband;
    /**
     * 前宽
     */
    private BigDecimal frontWidth;
    /**
     * 后宽
     */
    private BigDecimal backWidth;
    /**
     * 短袖肩宽
     */
    private BigDecimal shortSleeveShouler;
    /**
     * 长袖肩宽
     */
    private BigDecimal longSleeveShoulder;
    /**
     * 长袖过肩
     */
    private BigDecimal longSleeveOverShoulder;
    /**
     * 短袖过肩
     */
    private BigDecimal shortSleeveOverShoulder;
    /**
     * 腰围
     */
    private BigDecimal waist;
    /**
     * 臀围
     */
    private BigDecimal hip;
    /**
     * 通裆
     */
    private BigDecimal crotchThrouth;
    /**
     * 立裆
     */
    private BigDecimal crotchVertical;
    /**
     * 横档
     */
    private BigDecimal crotch;
    /**
     * 中档
     */
    private BigDecimal middleCrotch;
    /**
     * 裤长
     */
    private BigDecimal length;
    /**
     * 脚口
     */
    private BigDecimal bottom;
    /**
     * 前浪
     */
    private BigDecimal frontWave;
    /**
     * 后浪
     */
    private BigDecimal backWave;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSpid() {
        return spid;
    }

    public void setSpid(Integer spid) {
        this.spid = spid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getCollar() {
        return collar;
    }

    public void setCollar(BigDecimal collar) {
        this.collar = collar;
    }

    public BigDecimal getFrontLength() {
        return frontLength;
    }

    public void setFrontLength(BigDecimal frontLength) {
        this.frontLength = frontLength;
    }

    public BigDecimal getBackLength() {
        return backLength;
    }

    public void setBackLength(BigDecimal backLength) {
        this.backLength = backLength;
    }

    public BigDecimal getClothLength() {
        return clothLength;
    }

    public void setClothLength(BigDecimal clothLength) {
        this.clothLength = clothLength;
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

    public BigDecimal getSleeveHeader() {
        return sleeveHeader;
    }

    public void setSleeveHeader(BigDecimal sleeveHeader) {
        this.sleeveHeader = sleeveHeader;
    }

    public BigDecimal getHem() {
        return hem;
    }

    public void setHem(BigDecimal hem) {
        this.hem = hem;
    }

    public BigDecimal getSleeveWidth() {
        return sleeveWidth;
    }

    public void setSleeveWidth(BigDecimal sleeveWidth) {
        this.sleeveWidth = sleeveWidth;
    }

    public BigDecimal getWristband() {
        return wristband;
    }

    public void setWristband(BigDecimal wristband) {
        this.wristband = wristband;
    }

    public BigDecimal getFrontWidth() {
        return frontWidth;
    }

    public void setFrontWidth(BigDecimal frontWidth) {
        this.frontWidth = frontWidth;
    }

    public BigDecimal getBackWidth() {
        return backWidth;
    }

    public void setBackWidth(BigDecimal backWidth) {
        this.backWidth = backWidth;
    }

    public BigDecimal getShortSleeveShouler() {
        return shortSleeveShouler;
    }

    public void setShortSleeveShouler(BigDecimal shortSleeveShouler) {
        this.shortSleeveShouler = shortSleeveShouler;
    }

    public BigDecimal getLongSleeveShoulder() {
        return longSleeveShoulder;
    }

    public void setLongSleeveShoulder(BigDecimal longSleeveShoulder) {
        this.longSleeveShoulder = longSleeveShoulder;
    }

    public BigDecimal getLongSleeveOverShoulder() {
        return longSleeveOverShoulder;
    }

    public void setLongSleeveOverShoulder(BigDecimal longSleeveOverShoulder) {
        this.longSleeveOverShoulder = longSleeveOverShoulder;
    }

    public BigDecimal getShortSleeveOverShoulder() {
        return shortSleeveOverShoulder;
    }

    public void setShortSleeveOverShoulder(BigDecimal shortSleeveOverShoulder) {
        this.shortSleeveOverShoulder = shortSleeveOverShoulder;
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

    public BigDecimal getCrotchThrouth() {
        return crotchThrouth;
    }

    public void setCrotchThrouth(BigDecimal crotchThrouth) {
        this.crotchThrouth = crotchThrouth;
    }

    public BigDecimal getCrotchVertical() {
        return crotchVertical;
    }

    public void setCrotchVertical(BigDecimal crotchVertical) {
        this.crotchVertical = crotchVertical;
    }

    public BigDecimal getCrotch() {
        return crotch;
    }

    public void setCrotch(BigDecimal crotch) {
        this.crotch = crotch;
    }

    public BigDecimal getMiddleCrotch() {
        return middleCrotch;
    }

    public void setMiddleCrotch(BigDecimal middleCrotch) {
        this.middleCrotch = middleCrotch;
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

    public BigDecimal getFrontWave() {
        return frontWave;
    }

    public void setFrontWave(BigDecimal frontWave) {
        this.frontWave = frontWave;
    }

    public BigDecimal getBackWave() {
        return backWave;
    }

    public void setBackWave(BigDecimal backWave) {
        this.backWave = backWave;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Spitem{" +
        "id=" + id +
        ", spid=" + spid +
        ", name=" + name +
        ", collar=" + collar +
        ", frontLength=" + frontLength +
        ", backLength=" + backLength +
        ", clothLength=" + clothLength +
        ", shoulder=" + shoulder +
        ", sleeve=" + sleeve +
        ", bust=" + bust +
        ", middleWaist=" + middleWaist +
        ", sleeveHeader=" + sleeveHeader +
        ", hem=" + hem +
        ", sleeveWidth=" + sleeveWidth +
        ", wristband=" + wristband +
        ", frontWidth=" + frontWidth +
        ", backWidth=" + backWidth +
        ", shortSleeveShouler=" + shortSleeveShouler +
        ", longSleeveShoulder=" + longSleeveShoulder +
        ", longSleeveOverShoulder=" + longSleeveOverShoulder +
        ", shortSleeveOverShoulder=" + shortSleeveOverShoulder +
        ", waist=" + waist +
        ", hip=" + hip +
        ", crotchThrouth=" + crotchThrouth +
        ", crotchVertical=" + crotchVertical +
        ", crotch=" + crotch +
        ", middleCrotch=" + middleCrotch +
        ", length=" + length +
        ", bottom=" + bottom +
        ", frontWave=" + frontWave +
        ", backWave=" + backWave +
        "}";
    }
}
