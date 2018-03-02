package com.sunlight.warehouse.logic.service;



import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/16.
 */
public interface WarehouseService {

    /**
     * 检查库位
     * @param queryCriterias
     * @param warehouseId
     */
    void checkWarehouseAera(List<Map<String, Object>> queryCriterias, Integer warehouseId);


    /**
     * 检验区库位
     * @param warehouseId 仓库id
     * @return 推荐库位id
     */
    Integer getWareHouseAreaByWareHouseId(Integer warehouseId);

    /**
     * 14 /warehouses/{warehouseId}/storage-area-locations 保管区库位
     * @param warehouseId 仓库id
     * @param areaCategoryId 库位类型
     * @return 推荐库位id
     */
    List<Map<String,Object>> getWareHouseAreaByWareHouseId(Integer warehouseId,Integer areaCategoryId);

    /**
     * 仓库id->推荐库位id
     *
     * @param warehouseList 仓库id集合
     * @return
     */
    Map<Integer, Integer> getWarehouseAreaListByList(List<Integer> warehouseList);

    /**
     * 仓库管理员id-> 仓库信息
     * @param id
     * @return
     */
    List<Map<String,Object>> findWarehouseByUserId(int id);

    /**
     * 仓库id->仓库信息
     * @param id
     * @return
     */
    Map<String,Object> findWarehouseById(int id);

    /**
     * 库位id->库位信息
     * @param id
     * @return
     */
    Map<String,Object> findWarehouseAreaById(int id);

    /**
     * 仓库id->库位id
     * @param warehouseId
     * @return
     */
    Integer findCheckAreaByWarehouseId(int warehouseId);
}
