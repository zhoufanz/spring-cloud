package com.sunlight.warehouse.logic.dao;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.warehouse.domain.po.WarehouseAreaEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/16.
 */
@Persistent
public interface WarehouseAreaDao extends CommonRepository<WarehouseAreaEntity, String> {

    @Query("select wo.warehouseId from WarehouseAreaEntity wo where wo.id in (:originalWarehouseareaId ,:destWarehouseareaId)")
    List<Integer> checkWarehouseArea(@Param("originalWarehouseareaId") int originalWarehouseareaId, @Param("destWarehouseareaId") int destWarehouseareaId);

    @Query(value="select w.* from warehouse_area w join warehouse_area_category wy on wy.id=w.area_category_id and wy.category=:categoryType where w.warehouse_id=:warehouseId limit 0,1", nativeQuery = true)
    List<WarehouseAreaEntity> findByWareHouseIdAndCategoryType(@Param("categoryType")int categoryType, @Param("warehouseId") int warehouseId);

    @Query("select new map(wa.id as warehouseAreaId,wa.code as warehouseAreaCode,wa.areaCategoryId as warehouseCategoryId) from WarehouseAreaEntity wa where wa.id=:id")
    Map<String,Object> findWarehouseAreaById(@Param("id") int id);

    @Query("select wa.id from WarehouseAreaEntity wa where wa.warehouseId=:warehouseId and wa.code=:code")
    Integer findCheckAreaIdByWarehouseId(@Param("warehouseId") int warehouseId,@Param("code") String code);
}
