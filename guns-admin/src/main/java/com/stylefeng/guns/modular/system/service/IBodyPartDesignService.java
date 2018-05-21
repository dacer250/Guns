package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.model.BodyPartDesign;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
public interface IBodyPartDesignService extends IService<BodyPartDesign> {

    Object list(Integer bodyPart);
}
