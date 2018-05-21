package com.stylefeng.guns.modular.system.service.impl;

import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.dao.BodyPartMapper;
import com.stylefeng.guns.modular.system.service.IBodyPartService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ddj123
 * @since 2018-05-21
 */
@Service
public class BodyPartServiceImpl extends ServiceImpl<BodyPartMapper, BodyPart> implements IBodyPartService {

    @Override
    public Object list(Map<String, String> map) {
        return baseMapper.list(map);
    }
}
