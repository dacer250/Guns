package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.model.BodyPartDesign;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
public interface BodyPartDesignMapper extends BaseMapper<BodyPartDesign> {
    List<Map<String, Object>> list(@Param("condition") Integer bodyPart);
}
