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
 * @since 2018-05-21
 */
@TableName("special_part")
public class SpecialPart extends Model<SpecialPart> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("clothing_gender")
    private String clothingGender;
    @TableField("body_position")
    private String bodyPosition;
    @TableField("special_part_key")
    private String specialPartKey;
    @TableField("special_part_name")
    private String specialPartName;


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

    public String getBodyPosition() {
        return bodyPosition;
    }

    public void setBodyPosition(String bodyPosition) {
        this.bodyPosition = bodyPosition;
    }

    public String getSpecialPartKey() {
        return specialPartKey;
    }

    public void setSpecialPartKey(String specialPartKey) {
        this.specialPartKey = specialPartKey;
    }

    public String getSpecialPartName() {
        return specialPartName;
    }

    public void setSpecialPartName(String specialPartName) {
        this.specialPartName = specialPartName;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SpecialPart{" +
        "id=" + id +
        ", clothingGender=" + clothingGender +
        ", bodyPosition=" + bodyPosition +
        ", specialPartKey=" + specialPartKey +
        ", specialPartName=" + specialPartName +
        "}";
    }
}
