package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.SpecialPartDesign;
import com.stylefeng.guns.modular.system.dao.SpecialPartDesignMapper;
import com.stylefeng.guns.modular.system.service.ISpecialPartDesignService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author stylefeng123
 * @since 2018-05-21
 */
@Service
public class SpecialPartDesignServiceImpl extends ServiceImpl<SpecialPartDesignMapper, SpecialPartDesign> implements ISpecialPartDesignService {

    @Override
    public Object list(Integer bodyPart) {
        return baseMapper.list(bodyPart);
    }
}
