package com.sunlight.storage.transfer.logic.depend.service;

import com.sunlight.storage.transfer.logic.depend.fallback.SparePartsServiceFallBack;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by Nicholas on 16/12/21.
 */

@FeignClient(name="spare-parts-service",fallback = SparePartsServiceFallBack.class)
@RequestMapping(value = "/service/spare-parts/provider")
public interface SparePartsServiceClient {

    @RequestMapping(method = RequestMethod.GET,value = "/{id}")
    Map<String,Object> findSparePartById(@PathVariable("id") int id);

}
