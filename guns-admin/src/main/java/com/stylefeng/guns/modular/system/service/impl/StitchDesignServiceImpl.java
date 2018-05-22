package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.StitchDesign;
import com.stylefeng.guns.modular.system.dao.StitchDesignMapper;
import com.stylefeng.guns.modular.system.service.IStitchDesignService;
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
public class StitchDesignServiceImpl extends ServiceImpl<StitchDesignMapper, StitchDesign> implements IStitchDesignService {
    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
