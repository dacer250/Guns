package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.AccessoryPart;
import com.stylefeng.guns.modular.system.dao.AccessoryPartMapper;
import com.stylefeng.guns.modular.system.service.IAccessoryPartService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-22
 */
@Service
public class AccessoryPartServiceImpl extends ServiceImpl<AccessoryPartMapper, AccessoryPart> implements IAccessoryPartService {
    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
