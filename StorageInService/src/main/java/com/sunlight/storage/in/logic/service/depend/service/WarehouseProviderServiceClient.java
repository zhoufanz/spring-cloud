package com.sunlight.storage.in.logic.service.depend.service;

import com.alibaba.fastjson.JSONObject;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "warehouse-service")
@RequestMapping(value = "/service/warehouse/provider")
public interface WarehouseProviderServiceClient {

    @RequestMapping(method = RequestMethod.POST, value = "/area/locate/list")
    JSONObject quickLocateWarehouseAreaList(@RequestBody List<Integer> warehouseList);

    @RequestMapping(method=RequestMethod.GET,value = "/user/{id}")
    String findWarehouseByUserId(@PathVariable("id") int id);
}
