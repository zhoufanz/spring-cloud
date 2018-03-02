package com.sunlight.spareparts.logic.service;


import com.sunlight.spareparts.domain.vo.SparePartsVO;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
public interface SparePartsService {

    Map<Integer, SparePartsVO> getSparePartsList(List<Integer> ids);

    //根据(一组) Id 查询备件
    //显示备件的编号、名称等其他属性


    Map<String,Object> findSparePartById(int id);
}
