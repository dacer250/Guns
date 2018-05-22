package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.AccessoryPart;
import com.baomidou.mybatisplus.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-22
 */
public interface IAccessoryPartService extends IService<AccessoryPart> {
    Object list(Map<String, String> map);
}
