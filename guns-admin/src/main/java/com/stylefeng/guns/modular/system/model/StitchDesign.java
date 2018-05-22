package com.stylefeng.guns.modular.system.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-22
 */
@TableName("stitch_design")
public class StitchDesign extends Model<StitchDesign> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("clothing_type")
    private String clothingType;
    @TableField("clothing_gender")
    private String clothingGender;
    /**
     * 内容、字体、位置
     */
    @TableField("stitch_attr")
    private String stitchAttr;
    @TableField("stitch_key")
    private String stitchKey;
    @TableField("stitch_name")
    private String stitchName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClothingType() {
        return clothingType;
    }

    public void setClothingType(String clothingType) {
        this.clothingType = clothingType;
    }

    public String getClothingGender() {
        return clothingGender;
    }

    public void setClothingGender(String clothingGender) {
        this.clothingGender = clothingGender;
    }

    public String getStitchAttr() {
        return stitchAttr;
    }

    public void setStitchAttr(String stitchAttr) {
        this.stitchAttr = stitchAttr;
    }

    public String getStitchKey() {
        return stitchKey;
    }

    public void setStitchKey(String stitchKey) {
        this.stitchKey = stitchKey;
    }

    public String getStitchName() {
        return stitchName;
    }

    public void setStitchName(String stitchName) {
        this.stitchName = stitchName;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "StitchDesign{" +
        "id=" + id +
        ", clothingType=" + clothingType +
        ", clothingGender=" + clothingGender +
        ", stitchAttr=" + stitchAttr +
        ", stitchKey=" + stitchKey +
        ", stitchName=" + stitchName +
        "}";
    }
}
