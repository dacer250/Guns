package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author ddj123
 * @since 2018-05-21
 */
public interface BodyPartMapper extends BaseMapper<BodyPart> {
    List<Map<String, Object>> list(@Param("condition") Map<String,String> condition);
}
