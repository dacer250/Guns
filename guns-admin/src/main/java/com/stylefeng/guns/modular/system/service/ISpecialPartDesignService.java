package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.SpecialPartDesign;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
public interface ISpecialPartDesignService extends IService<SpecialPartDesign> {
    Object list(Integer bodyPart);
}
