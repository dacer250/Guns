package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.AccessoryPartDesign;
import com.stylefeng.guns.modular.system.dao.AccessoryPartDesignMapper;
import com.stylefeng.guns.modular.system.service.IAccessoryPartDesignService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-22
 */
@Service
public class AccessoryPartDesignServiceImpl extends ServiceImpl<AccessoryPartDesignMapper, AccessoryPartDesign> implements IAccessoryPartDesignService {
    @Override
    public Object list(Integer bodyPart) {
        return baseMapper.list(bodyPart);
    }
}
