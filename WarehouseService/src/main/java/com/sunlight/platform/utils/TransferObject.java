package com.sunlight.platform.utils;

import com.alibaba.fastjson.JSON;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by Nicholas on 16/12/19.
 */
public class TransferObject {
    public static <T> T transferObject(final Object source, final Class<T> target){
        return JSON.parseObject(JSON.toJSONString(source),target);
    }

    public static <S,T> List<T> transferList(final List<S> source,final Class<T> target){
        return JSON.parseArray(JSON.toJSONString(source),target);
    }
}
