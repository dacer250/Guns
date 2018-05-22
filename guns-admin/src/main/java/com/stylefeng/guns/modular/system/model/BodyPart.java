package com.stylefeng.guns.modular.system.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author ddj123
 * @since 2018-05-21
 */
@ApiModel(description = "部位")
@TableName("body_part")
public class BodyPart extends Model<BodyPart> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)

    private Integer id;
    @TableField("clothing_gender")

    private String clothingGender;
    @TableField("clothing_type")

    private String clothingType;
    @TableField("body_part_key")

    private String bodyPartKey;
    @TableField("body_part_name")

    private String bodyPartName;

    @TableField("ownerId")
    private String ownerId;


    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

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

    public String getBodyPartKey() {
        return bodyPartKey;
    }

    public void setBodyPartKey(String bodyPartKey) {
        this.bodyPartKey = bodyPartKey;
    }

    public String getBodyPartName() {
        return bodyPartName;
    }

    public void setBodyPartName(String bodyPartName) {
        this.bodyPartName = bodyPartName;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "BodyPart{" +
        "id=" + id +
        ", clothingGender=" + clothingGender +
        ", clothingType=" + clothingType +
        ", bodyPartKey=" + bodyPartKey +
        ", bodyPartName=" + bodyPartName +
        "}";
    }
}
