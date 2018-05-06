package com.stylefeng.guns.modular.system.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.stylefeng.guns.modular.system.model.Dict;
import com.stylefeng.guns.modular.system.model.EstJean;
import com.stylefeng.guns.modular.system.model.Spitem;
import com.stylefeng.guns.modular.system.model.Standard;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 字典表 Mapper 接口
 * </p>
 *
 * @author stylefeng
 * @since 2017-07-11
 */
public interface StandardMapper extends BaseMapper<Standard> {


    Standard getByHW(@Param("h") BigDecimal h,@Param("w") BigDecimal w,@Param("g") Integer g);


    List<Spitem> findSpitemList();
}