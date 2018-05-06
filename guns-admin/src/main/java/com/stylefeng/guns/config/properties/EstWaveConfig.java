package com.stylefeng.guns.config.properties;

import com.stylefeng.guns.core.util.BigDecimalUtil;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by x on 2018/5/5.
 */
@Configuration
@ConfigurationProperties()
@PropertySource("classpath:estWave.properties")
@Component
public class EstWaveConfig {

     private Map<String,String> h=new HashMap<>(30);

    public   Map<String, String> getH() {
        return h;
    }

    public   void setH(Map<String, String> h) {
        this.h = h;

    }

    public  BigDecimal getWaveByHeight(BigDecimal hi)
    {
        int hii =BigDecimalUtil.toInt(hi);
        String ret = h.get(String.valueOf(hii));
        return StringUtils.isEmpty(ret)? null:new BigDecimal(ret);
    }
}
