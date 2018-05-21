package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.model.BodyPartDesign;
import com.stylefeng.guns.modular.system.dao.BodyPartDesignMapper;
import com.stylefeng.guns.modular.system.service.IBodyPartDesignService;
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
public class BodyPartDesignServiceImpl extends ServiceImpl<BodyPartDesignMapper, BodyPartDesign> implements IBodyPartDesignService {

    @Override
    public Object list(Integer bodyPart) {
        return baseMapper.list(bodyPart);
    }
}
