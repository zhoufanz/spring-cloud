package com.sunlight.inventory.logic.repository;

import com.sunlight.inventory.domain.po.PartsStockEntity;
import com.sunlight.platform.repository.CommonRepository;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by hasee on 2016/11/28.
 */
@Persistent
public interface PartsStockRepository extends CommonRepository<PartsStockEntity, Integer> {


    @Query("FROM PartsStockEntity t where t.partId = :sparePartId and t.warehouseId = :warehouseId and t.warehouseAreaId in(:oringinWarehouseAreaId,:destWarehouseAreaId)")
    List<PartsStockEntity> findByPartsStock(@Param("sparePartId") Integer sparePartId,
                                            @Param("warehouseId") Integer warehouseId,
                                            @Param("oringinWarehouseAreaId") int oringinWarehouseAreaId,
                                            @Param("destWarehouseAreaId") int destWarehouseAreaId);

    /**
     * 查询某仓库下，某库区,某备件 备件库存
     */
    @Query("from PartsStockEntity t where t.warehouseId=:warehouseid and t.warehouseAreaId=:warehouseareaid and t.partId=:sparePartId")
    List<PartsStockEntity> findByParams(@Param("warehouseid") int warehouseId, @Param("warehouseareaid") int wareHouseAreaId, @Param("sparePartId") int sparePartId);

    /**
     * 查询某仓库下，配件Id等
     * @param warehouseid
     * @return
     */
//    @Query("select new map(ps.id as id,ps.warehouseId as warehouseid ,ps.partId as partid,ps.quantity as quantity) from PartsStockEntity ps where ps.warehouseId=:warehouseid and ps.warehouseAreaId=:id")
//     List<Map<String,Object>> findpByWarehouseid(@Param("warehouseid")int warehouseid,@Param("id")int id);

    @Query("select ps.warehouseAreaId from PartsStockEntity ps where ps.warehouseId=:warehouseId")
    List<Integer> findWarehouseAreaIdByWarehouseId(@Param("warehouseId") int warehouseId);

    @Query("from PartsStockEntity ps where ps.warehouseAreaId=:checkAreaId and ps.quantity > 0")
    List<PartsStockEntity> findPartsStockByCheckAreaId(@Param("checkAreaId") int checkAreaId);
}
