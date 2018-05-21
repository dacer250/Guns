package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.SpecialPart;
import com.stylefeng.guns.modular.system.dao.SpecialPartMapper;
import com.stylefeng.guns.modular.system.service.ISpecialPartService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
@Service
public class SpecialPartServiceImpl extends ServiceImpl<SpecialPartMapper, SpecialPart> implements ISpecialPartService {
    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
