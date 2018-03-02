package com.sunlight.inventory.logic.service;


import com.sunlight.inventory.domain.vo.PartStockVo;
import com.sunlight.inventory.domain.vo.PartsStockVo;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
public interface InventoryService {
    int getInventory(String id);

    void findAndSavePartsStock(List<Map<String, Object>> sparePartCriterias, Integer warehouseId);

    /**
     * 多条件查询库存信息
     */
    PartsStockVo findInventoryByParams(int wareHouseId, int wareHouseAreaId, int sparePartId);

    Map<String, PartsStockVo> getInventoryList(List<PartsStockVo> vos);

    //保存
//    boolean save(PartsStockVo vo);

    boolean saveInventoryList(List<PartsStockVo> vo);

//    List<Map<String,Object>> findpByWarehouseid(int warehouseid,int id);

    List<Integer> findWarehouseAreaIdByWarehouseId(int warehouseId);

    List<PartStockVo> findPartStockVoByCheckAreaId(int checkAreaId);
}
