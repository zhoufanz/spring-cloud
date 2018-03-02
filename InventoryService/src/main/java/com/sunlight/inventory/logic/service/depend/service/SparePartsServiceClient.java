package com.sunlight.inventory.logic.service.depend.service;

import com.sunlight.inventory.logic.service.depend.fallback.SparePartsServiceFallBack;
import com.sunlight.platform.exception.ResponseData;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "spare-parts-service",fallback = SparePartsServiceFallBack.class )
@RequestMapping(value = "/service/spare-parts/provider")
public interface SparePartsServiceClient {

    @RequestMapping(method = RequestMethod.GET, value = "/{sparePartId}")
    ResponseData getSpareParts(@PathVariable(value = "sparePartId") Integer sparePartId);

    @RequestMapping(method = RequestMethod.GET,value = "/{id}")
    Map<String,Object> findSparePartById(@PathVariable("id") int id);

}
