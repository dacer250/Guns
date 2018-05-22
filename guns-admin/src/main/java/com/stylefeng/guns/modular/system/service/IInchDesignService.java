package com.stylefeng.guns.modular.system.service;

import com.stylefeng.guns.modular.system.model.InchDesign;
import com.baomidou.mybatisplus.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author ddj123
 * @since 2018-05-22
 */
public interface IInchDesignService extends IService<InchDesign> {
    Object list(Map<String, String> map);
}
