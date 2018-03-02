package com.sunlight.inventory.logic.service.depend.service;

import com.sunlight.inventory.logic.service.depend.fallback.PriceServiceFallBack;
import com.sunlight.platform.exception.ResponseData;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "price-service",fallback = PriceServiceFallBack.class)
@RequestMapping(value = "/price")
public interface PriceServiceClient {
    @RequestMapping(value = "/{sparePartId}", method = RequestMethod.GET)
    ResponseData getPrice(@PathVariable("sparePartId") Integer sparePartId);
}
