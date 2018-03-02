package com.sunlight.inventory.logic.service.depend.service;

import com.sunlight.inventory.logic.service.depend.fallback.WarehouseServiceFallBack;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by Nicholas on 16/11/25.
 */
@FeignClient(name = "warehouse-service",fallback = WarehouseServiceFallBack.class)
@RequestMapping(value = "/service/warehouse/provider")
public interface WarehouseServiceClient {
    @RequestMapping(method = RequestMethod.POST, value = "/check/warehouse")
    void checkWarehouseArea(@RequestParam("queryCriterias") String queryCriterias, @RequestParam("warehouseId") Integer warehouseId);

    @RequestMapping(method=RequestMethod.GET,value = "/user/{id}")
    String findWarehouseByUserId(@PathVariable("id") int id);

    @RequestMapping(method = RequestMethod.GET,value="/{id}")
    Map<String,Object> findWarehouseById(@PathVariable("id") int id);

    @RequestMapping(method = RequestMethod.GET,value="/warehouse-area/{id}")
    Map<String,Object> findWarehouseAreaById(@PathVariable("id") int id);

    @RequestMapping(method = RequestMethod.GET,value = "/{warehouseId}/warehouseAreaId")
    Integer findCheckAreaIdByIds(@PathVariable("warehouseId") int warehouseId);

}
