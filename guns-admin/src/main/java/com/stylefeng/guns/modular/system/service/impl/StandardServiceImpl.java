package com.stylefeng.guns.modular.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.stylefeng.guns.config.properties.EstJeansWeightConfig;
import com.stylefeng.guns.config.properties.EstWaveConfig;
import com.stylefeng.guns.modular.system.constant.Constant;
import com.stylefeng.guns.modular.system.constant.DressType;
import com.stylefeng.guns.modular.system.dao.StandardMapper;
import com.stylefeng.guns.modular.system.model.EstJean;
import com.stylefeng.guns.modular.system.model.Spitem;
import com.stylefeng.guns.modular.system.model.Standard;
import com.stylefeng.guns.modular.system.service.IStandardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import sun.security.provider.ConfigFile;

import java.math.BigDecimal;
import java.util.*;


@Service
public class StandardServiceImpl extends ServiceImpl<StandardMapper, Standard> implements IStandardService {

    @Autowired
    EstWaveConfig estWaveConfig;

    @Autowired
    EstJeansWeightConfig estJeansWeightConfig;



    @Override
    public Standard getStandardByHW(BigDecimal h, BigDecimal w,int g) {
        return baseMapper.getByHW(h,w,g);
    }

    @Override
    public EstJean estByStandard(Standard st) {
        EstJean ej =new EstJean();
        ej.setHip(st.getHip());
        ej.setCrotch(st.getCrotch());
        ej.setLength(st.getLength());
        ej.setWaist(st.getWaist());
        ej.setWave(estWaveConfig.getWaveByHeight(st.getHeight()));
        ej.setBottom(estBottom(st));
        return ej;
    }

    @Override
    public void adjustByDresstype(EstJean ej, DressType dressType) {
        int hipAdd=0;
        int crotchAdd =0;
        if(DressType.Loose==dressType)
        {
            hipAdd=8;
            crotchAdd=8;
        }
        if(DressType.Standard==dressType)
        {
            hipAdd=6;
            crotchAdd=6;
        }
        if(DressType.Tight==dressType)
        {
            hipAdd=4;
            crotchAdd=4;
        }
        if(DressType.VeryTight==dressType)
        {
            hipAdd=2;
            crotchAdd=2;
        }
        ej.setHip(ej.getHip().add(new BigDecimal(hipAdd)));
        ej.setCrotch(ej.getCrotch().add(new BigDecimal(crotchAdd)));
    }

    @Override
    public List<Spitem> findSpitemList() {
          return baseMapper.findSpitemList( );
    }

    @Override
    public List<Spitem>   scoresTop3(List<Spitem> itemList,EstJean ej) {
        if(CollectionUtils.isEmpty(itemList))return null;
        Map<Integer,Float> sc =new HashMap<>(itemList.size());
        for(Spitem item:itemList)
        {
            sc.put(item.getId(),calcScore(item,ej,estJeansWeightConfig.getW()));
        }
        List<Map.Entry<Integer, Float>> list = new ArrayList<Map.Entry<Integer, Float>>(sc.entrySet());

// 然后通过比较器来实现排序
        Collections.sort(list, new Comparator<Map.Entry<Integer, Float>>() {
            @Override
            public int compare(Map.Entry<Integer, Float> o1, Map.Entry<Integer, Float> o2) {
                return o2.getValue().compareTo(o1.getValue()); // 升序
            }
        });
        List<Spitem> ret=new ArrayList<>(Constant.TOPCHOICE);
        for (Map.Entry<Integer, Float> mapping : list) {
            {
                if(ret.size()<Constant.TOPCHOICE)
                    ret.add(findById(itemList,mapping.getKey()));
                else
                    return ret;
            }
        }

        return ret;
    }

    @Override
    public void adjustByExprience(EstJean ej) {
        ej.setWaist(ej.getWaist().subtract(new BigDecimal(2.5)));
    }

    private Float calcScore(Spitem item,EstJean ej,Map<String,String>w) {

        float waistScore =getWaistScore(item.getWaist(),ej.getWaist(),w.get("waist"));
        float hipScore =getHipScore(item.getHip(),ej.getHip(),w.get("hip"));
        float waveScore =getWaveScore(item.getBackWave().add(item.getFrontWave()),ej.getWave(),w.get("wave"));
        float crotchScore =getScrotchScore(item.getCrotch(),ej.getCrotch(),w.get("crotch"));
        return waistScore+hipScore+waveScore+crotchScore;
    }

    private float getHipScore(BigDecimal st, BigDecimal est, String weight) {
        //二者分段得分相同
        return getWaistScore(st,est,weight);
    }
    private float getScrotchScore(BigDecimal st, BigDecimal est, String weight) {
        //二者分段得分相同
        return getWaveScore(st,est,weight);
    }

    private float getWaveScore(BigDecimal st,BigDecimal est,String weight)
    {
        float diff =Math.abs(st.floatValue()-est.floatValue());
        float w =Float.parseFloat(weight);
        if(diff>=2) return 0;
        if(diff>=1) return  w/2f;
        if(diff>=0) return w;
        return 0;
    }
    private float getWaistScore(BigDecimal st,BigDecimal est,String weight)
    {
        float diff =Math.abs(st.floatValue()-est.floatValue());
        float w =Float.parseFloat(weight);
        if(diff>=2.5) return 0;
        if(diff>=1.5) return w/2.5f;
        if(diff>=1) return  w*1.5f/2.5f;
        if(diff>=0) return w;
        return 0;
    }


    private Spitem findById(List<Spitem> itemList,int target) {
        for(Spitem i:itemList)
            if(target==i.getId())
                return i;
        return null;
    }


    private BigDecimal estBottom(Standard st) {
        BigDecimal crotch =st.getCrotch();
        float cr =crotch.floatValue();
        int ret =-1;
        if(cr<60)
            ret=40;
        if(cr>=60 && cr<64)
            ret=42;
        if(cr>=64 && cr<68)
            ret=44;
        if(cr>=68 && cr<72)
            ret=46;
        if(cr>=72 && cr<76)
            ret=48;
        if(cr>=76)
            ret=50;
        return new BigDecimal(ret);


    }



}
