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
@TableName("body_part_design")
public class BodyPartDesign extends Model<BodyPartDesign> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("body_part_id")
    private Integer bodyPartId;
    @TableField("design_choice")
    private String designChoice;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBodyPartId() {
        return bodyPartId;
    }

    public void setBodyPartId(Integer bodyPartId) {
        this.bodyPartId = bodyPartId;
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
        return "BodyPartDesign{" +
        "id=" + id +
        ", bodyPartId=" + bodyPartId +
        ", designChoice=" + designChoice +
        "}";
    }
}
