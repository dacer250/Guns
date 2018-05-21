package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.baomidou.mybatisplus.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author ddj123
 * @since 2018-05-21
 */
public interface IBodyPartService extends IService<BodyPart> {

    Object list(Map<String, String> map);
}
