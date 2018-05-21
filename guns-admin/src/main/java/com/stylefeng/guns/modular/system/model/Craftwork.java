package com.stylefeng.guns.modular.system.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
public class Craftwork extends Model<Craftwork> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("clothing_gender")
    private String clothingGender;
    @TableField("clothing_type")
    private String clothingType;
    @TableField("craftwork_name")
    private String craftworkName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClothingGender() {
        return clothingGender;
    }

    public void setClothingGender(String clothingGender) {
        this.clothingGender = clothingGender;
    }

    public String getClothingType() {
        return clothingType;
    }

    public void setClothingType(String clothingType) {
        this.clothingType = clothingType;
    }

    public String getCraftworkName() {
        return craftworkName;
    }

    public void setCraftworkName(String craftworkName) {
        this.craftworkName = craftworkName;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Craftwork{" +
        "id=" + id +
        ", clothingGender=" + clothingGender +
        ", clothingType=" + clothingType +
        ", craftworkName=" + craftworkName +
        "}";
    }
}
