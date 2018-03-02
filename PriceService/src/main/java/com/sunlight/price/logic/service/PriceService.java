package com.sunlight.price.logic.service;

import com.sunlight.price.domain.vo.PartsPlannedPriceVo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
@Service
public interface PriceService {
    double getPrice(String stockPartId);

    PartsPlannedPriceVo findPlannedPriceByPartsId(int partsId);

    Map<Integer, PartsPlannedPriceVo> getPlannedPriceList(List<Integer> ids);

    //根据(一组) 备件Id 查询计划价
    List<PartsPlannedPriceVo> findPriceByIds(List<Integer> ids);

    //计划价生效
    //更新指定备件的计划价
    boolean batchUpdate(List<PartsPlannedPriceVo> vos);
}
