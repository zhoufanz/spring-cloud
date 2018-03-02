package com.sunlight.warehouse.api.provider;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;

import com.sunlight.warehouse.logic.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Nicholas on 16/12/5.
 */
@RestController
@RequestMapping(value = "/service/warehouse/provider")
public class WarehouseControllerProvider {

    @Autowired
    private WarehouseService warehouseService;

    @RequestMapping(method = RequestMethod.POST, value = "/check/warehouse")
    public void checkWarehouseArea(@RequestParam String queryCriterias, @RequestParam Integer warehouseId) {
        List<Map<String, Object>> mapList = JSON.parseObject(queryCriterias, new TypeReference<List<Map<String, Object>>>() {
        });
        warehouseService.checkWarehouseAera(mapList, warehouseId);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/area/locate/list")
    public JSONObject quickLocateWarehouseAreaList(@RequestBody List<Integer> warehouseList) {
        Map<Integer, Integer> warehouseMap = warehouseService.getWarehouseAreaListByList(warehouseList);
        return JSON.parseObject(JSON.toJSONString(warehouseMap));
    }

    @RequestMapping(method = RequestMethod.GET,value = "/user/{id}")
    public List<Map<String,Object>> findWarehouseByUserId(@PathVariable int id){
        List<Map<String,Object>> warehouseVOs=warehouseService.findWarehouseByUserId(id);
        return warehouseVOs;
    }

    @RequestMapping(method=RequestMethod.GET,value="/{id}")
    public Map<String,Object> findWarehouseById(@PathVariable int id){
        Map<String,Object> warehouseVos=warehouseService.findWarehouseById(id);
        return warehouseVos;
    }
    @RequestMapping(method = RequestMethod.GET,value="/warehouse-area/{id}")
    public Map<String,Object> findWarehouseAreaById(@PathVariable("id") int id){
        Map<String,Object> warehouseAreaVos=warehouseService.findWarehouseAreaById(id);
        return warehouseAreaVos;
    }

    @RequestMapping(method = RequestMethod.GET,value = "/{warehouseId}/warehouseAreaId")
    Integer findCheckAreaIdByIds(@PathVariable("warehouseId") int warehouseId){
        Integer warehouseAreaId=warehouseService.findCheckAreaByWarehouseId(warehouseId);
        return warehouseAreaId;
    }
}
