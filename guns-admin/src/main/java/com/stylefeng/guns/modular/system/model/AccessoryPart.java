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
@TableName("accessory_part")
public class AccessoryPart extends Model<AccessoryPart> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("clothing_gender")
    private String clothingGender;
    @TableField("clothing_type")
    private String clothingType;
    @TableField("accessory_part_key")
    private String accessoryPartKey;
    @TableField("accessory_part_name")
    private String accessoryPartName;


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

    public String getAccessoryPartKey() {
        return accessoryPartKey;
    }

    public void setAccessoryPartKey(String accessoryPartKey) {
        this.accessoryPartKey = accessoryPartKey;
    }

    public String getAccessoryPartName() {
        return accessoryPartName;
    }

    public void setAccessoryPartName(String accessoryPartName) {
        this.accessoryPartName = accessoryPartName;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "AccessoryPart{" +
        "id=" + id +
        ", clothingGender=" + clothingGender +
        ", clothingType=" + clothingType +
        ", accessoryPartKey=" + accessoryPartKey +
        ", accessoryPartName=" + accessoryPartName +
        "}";
    }
}
