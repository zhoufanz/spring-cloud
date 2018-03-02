package com.sunlight.storage.transfer.logic.depend.service;

import com.sunlight.storage.transfer.domain.vo.PartStockVo;
import com.sunlight.storage.transfer.logic.depend.fallback.InventoryServiceFallBack;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


/**
 * Created by Nicholas on 16/11/30.
 */
@FeignClient(value = "inventory-service",fallback=InventoryServiceFallBack.class)
@RequestMapping(value = "/service/inventory/provider")
public interface InventoryServiceClient {
    @RequestMapping(method = RequestMethod.POST, value = "/{stockPartIds}/{warehouseId}")
    void getInventory(@PathVariable("stockPartIds") String stockPartIds, @PathVariable("warehouseId") Integer warehouseId);

    @RequestMapping(method=RequestMethod.GET,value="/warehouse/{id}/warehouseAreaId")
    List<Integer> findWarehouseAreaIdByWarehouseId(@PathVariable("id") int warehouseId);

    @RequestMapping(method = RequestMethod.GET,value = "/{checkAreaId}")
    List<PartStockVo> findPartStockVoByCheckAreaId(@PathVariable("checkAreaId") int checkAreaId);
}

