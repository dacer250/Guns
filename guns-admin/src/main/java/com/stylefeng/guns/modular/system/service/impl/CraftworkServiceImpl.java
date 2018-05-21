package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.Craftwork;
import com.stylefeng.guns.modular.system.dao.CraftworkMapper;
import com.stylefeng.guns.modular.system.service.ICraftworkService;
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
public class CraftworkServiceImpl extends ServiceImpl<CraftworkMapper, Craftwork> implements ICraftworkService {
    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
