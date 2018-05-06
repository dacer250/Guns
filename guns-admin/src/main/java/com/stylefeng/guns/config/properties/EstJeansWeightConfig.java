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
@PropertySource("classpath:estJeansWeight.properties")
@Component
public class EstJeansWeightConfig {

     private Map<String,String> w=new HashMap<>(30);

    public Map<String, String> getW() {
        return w;
    }

    public void setW(Map<String, String> w) {
        this.w = w;
    }

    public  float getWaveByHeight(String dimension)
    {

        String ret = w.get(String.valueOf(dimension));
        return Float.valueOf(ret);
    }
}
