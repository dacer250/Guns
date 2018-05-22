package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.InchDesign;
import com.stylefeng.guns.modular.system.dao.InchDesignMapper;
import com.stylefeng.guns.modular.system.service.IInchDesignService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ddj123
 * @since 2018-05-22
 */
@Service
public class InchDesignServiceImpl extends ServiceImpl<InchDesignMapper, InchDesign> implements IInchDesignService {

    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
