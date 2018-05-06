package com.stylefeng.guns.modular.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.stylefeng.guns.core.datascope.DataScope;
import com.stylefeng.guns.modular.system.constant.DressType;
import com.stylefeng.guns.modular.system.model.EstJean;
import com.stylefeng.guns.modular.system.model.Spitem;
import com.stylefeng.guns.modular.system.model.Standard;
import com.stylefeng.guns.modular.system.model.User;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 管理员表 服务类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-02-22
 */
public interface IStandardService extends IService<Standard> {

    Standard getStandardByHW(@Param("h") BigDecimal h,@Param("weight") BigDecimal w,int g);

    EstJean estByStandard(Standard st);

    void adjustByDresstype(EstJean ej, DressType dressType);

    List<Spitem> findSpitemList();

    List<Spitem> scoresTop3(List<Spitem> itemList,EstJean ej);
}
