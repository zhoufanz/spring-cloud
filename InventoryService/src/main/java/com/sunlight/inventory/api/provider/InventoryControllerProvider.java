package com.sunlight.inventory.api.provider;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.sunlight.inventory.domain.vo.PartStockVo;
import com.sunlight.inventory.domain.vo.PartsStockVo;
import com.sunlight.inventory.logic.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Nicholas on 16/12/2.
 */
@RestController
@RequestMapping(value = "/service/inventory/provider")
public class InventoryControllerProvider {
    @Autowired
    private InventoryService inventoryService;

    @RequestMapping(method = RequestMethod.POST, value = "/{stockPartIds}/{warehouseId}")
    public void getInventory(@PathVariable String stockPartIds, @PathVariable Integer warehouseId) {
        List<Map<String, Object>> sparePartCriterias = JSON.parseObject(stockPartIds, new TypeReference<List<Map<String, Object>>>() {
        });
        inventoryService.findAndSavePartsStock(sparePartCriterias, warehouseId);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/list-query")
    public JSONObject getInventoryList(@RequestBody List<PartsStockVo> vos) {
        Map<String, PartsStockVo> inventoryList = inventoryService.getInventoryList(vos);
        return JSON.parseObject(JSON.toJSONString(inventoryList));
    }

    @RequestMapping(method = RequestMethod.POST, value = "/list")
    public boolean saveInventoryList(@RequestBody List<PartsStockVo> list) {
        boolean result = inventoryService.saveInventoryList(list);
        return result;
    }

    @RequestMapping(method=RequestMethod.GET,value="/warehouse/{id}/warehouseAreaId")
    public List<Integer> findWarehouseAreaIdByWarehouseId(@PathVariable("id") int warehouseId){
        List<Integer> warehouseAreaIds=inventoryService.findWarehouseAreaIdByWarehouseId(warehouseId);
        return warehouseAreaIds;
    }

    @RequestMapping(method = RequestMethod.GET,value = "/{checkAreaId}")
    public List<PartStockVo>findPartStockVoByCheckAreaId(@PathVariable("checkAreaId") int checkAreaId){
        List<PartStockVo> partStockVos=inventoryService.findPartStockVoByCheckAreaId(checkAreaId);
        return partStockVos;
    }

}
