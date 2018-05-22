package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.modular.system.model.InchDesign;
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
 * @since 2018-05-22
 */
public interface InchDesignMapper extends BaseMapper<InchDesign> {
    List<Map<String, Object>> list(@Param ("condition") Map<String,String> condition);
}
