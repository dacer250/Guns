package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.AccessoryPartDesign;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-22
 */
public interface IAccessoryPartDesignService extends IService<AccessoryPartDesign> {
    Object list(Integer bodyPart);
}
