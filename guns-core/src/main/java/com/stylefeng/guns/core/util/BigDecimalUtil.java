package com.stylefeng.guns.core.util;

import java.math.BigDecimal;

/**
 * Created by x on 2018/5/5.
 */
public class BigDecimalUtil {

    public static  boolean almost_equals(BigDecimal a, BigDecimal b)
    {
        return isDiffInRange(a,b,0.0001f);
    }

    public static int  toInt(BigDecimal b)
    {
        b.setScale(0,   BigDecimal.ROUND_HALF_UP);
        return b.intValue();
    }

    public static boolean isDiffInRange(BigDecimal a,BigDecimal b,float zone)
    {
        return Math.abs(a.floatValue()-b.floatValue())<zone;
    }

    public static boolean isInRange(int a,int b,BigDecimal c)
    {
        return a<=c.floatValue() && c.floatValue()<=b;
    }
    public static boolean isBelow (int a, BigDecimal c)
    {
        return c.floatValue()<a;
    }

    public static boolean isInZone(BigDecimal a,float abs,BigDecimal b)
    {
      return  Math.abs((a.subtract(b)).floatValue())<=abs;
    }
}
