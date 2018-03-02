package com.sunlight.warehouse.logic.dao;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.warehouse.domain.po.WarehouseEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Map;

/**
 * Created by brad on 16/11/16.
 */
@Persistent
public interface WarehouseDao extends CommonRepository<WarehouseEntity, String> {

    @Query("select new map(w.id as warehouseId,w.name as warehouseName,w.code as warehouseCode) from WarehouseEntity w where w.id=:id")
    Map<String,Object> findWarehouseById(@Param("id") int id);

}
