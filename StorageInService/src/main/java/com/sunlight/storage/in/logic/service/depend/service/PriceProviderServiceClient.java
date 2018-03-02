package com.sunlight.storage.in.logic.service.depend.service;

import com.alibaba.fastjson.JSONObject;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "price-service")
@RequestMapping(value = "/service/price/provider")
public interface PriceProviderServiceClient {
    @RequestMapping(method = RequestMethod.POST)
    JSONObject getPriceList(@RequestBody List<Integer> sparePartIdList);
}
