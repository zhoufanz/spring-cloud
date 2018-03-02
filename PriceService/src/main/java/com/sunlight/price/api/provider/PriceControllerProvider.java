package com.sunlight.price.api.provider;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sunlight.price.domain.vo.PartsPlannedPriceVo;
import com.sunlight.price.logic.service.PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/12/2.
 */
@RestController
@RequestMapping(value = "/service/price/provider")
public class PriceControllerProvider {
    @Autowired
    PriceService priceService;

    @RequestMapping(method = RequestMethod.POST)
    public JSONObject getPriceList(@RequestBody List<Integer> sparePartIdList) {
        Map<Integer, PartsPlannedPriceVo> priceMap = priceService.getPlannedPriceList(sparePartIdList);
        return JSON.parseObject(JSON.toJSONString(priceMap));
    }
}
