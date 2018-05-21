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
@TableName("special_part_design")
public class SpecialPartDesign extends Model<SpecialPartDesign> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("special_part_id")
    private Integer specialPartId;
    @TableField("design_choice")
    private String designChoice;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSpecialPartId() {
        return specialPartId;
    }

    public void setSpecialPartId(Integer specialPartId) {
        this.specialPartId = specialPartId;
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
        return "SpecialPartDesign{" +
        "id=" + id +
        ", specialPartId=" + specialPartId +
        ", designChoice=" + designChoice +
        "}";
    }
}
