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
 * @author ddj123
 * @since 2018-05-22
 */
@TableName("inch_design")
public class InchDesign extends Model<InchDesign> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 净尺寸key
     */
    @TableField("net_key")
    private String netKey;
    /**
     * 净尺寸名称
     */
    private String name;
    @TableField("clothing_type")
    private String clothingType;
    @TableField("clothing_gender")
    private String clothingGender;
    @TableField("clothing_key")
    private String clothingKey;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNetKey() {
        return netKey;
    }

    public void setNetKey(String netKey) {
        this.netKey = netKey;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getClothingKey() {
        return clothingKey;
    }

    public void setClothingKey(String clothingKey) {
        this.clothingKey = clothingKey;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "InchDesign{" +
        "id=" + id +
        ", netKey=" + netKey +
        ", name=" + name +
        ", clothingType=" + clothingType +
        ", clothingGender=" + clothingGender +
        ", clothingKey=" + clothingKey +
        "}";
    }
}
