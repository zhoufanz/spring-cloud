package com.sunlight.warehouse.logic.dao;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.warehouse.domain.po.WarehouseOperatorEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/16.
 */
@Persistent
public interface WarehouseOperatorDao extends CommonRepository<WarehouseOperatorEntity, String> {

    @Query("from WarehouseOperatorEntity wo where wo.creatorName=:name")
    WarehouseOperatorEntity findByCreatorName(@Param("name") String name);

    @Query("from WarehouseOperatorEntity wo where wo.warehouseId=:id")
    WarehouseOperatorEntity findByOperatorId(@Param("id") int id);

    @Query("select new map(w.id as id,w.name as name) from WarehouseEntity w , WarehouseOperatorEntity wo " +
            "where w.id=wo.warehouseId and wo.operatorId=:id")
    List<Map<String,Object>> findWarehouseByUserId(@Param("id") int id);
}
