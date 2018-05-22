package com.stylefeng.guns.modular.system.model;

import java.io.Serializable;

import com.alibaba.fastjson.annotation.JSONField;
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
@TableName("accessory_part_design")
public class AccessoryPartDesign extends Model<AccessoryPartDesign> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("accessory_part_id")
    private Integer accessoryPartId;
    @TableField("design_choice")
    private String designChoice;
    @TableField("ownerId")
    private String ownerId;

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAccessoryPartId() {
        return accessoryPartId;
    }

    public void setAccessoryPartId(Integer accessoryPartId) {
        this.accessoryPartId = accessoryPartId;
    }

    public String getDesignChoice() {
        return designChoice;
    }

    public void setDesignChoice(String designChoice) {
        this.designChoice = designChoice;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "AccessoryPartDesign{" +
        "id=" + id +
        ",ownerId=" + ownerId +
        ", accessoryPartId=" + accessoryPartId +
        ", designChoice=" + designChoice +
        "}";
    }
}
