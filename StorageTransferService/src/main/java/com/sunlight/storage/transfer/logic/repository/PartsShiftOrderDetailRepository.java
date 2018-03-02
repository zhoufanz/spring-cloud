package com.sunlight.storage.transfer.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderDetailEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;


/**
 * Created by brad on 16/11/16.
 */

public interface PartsShiftOrderDetailRepository extends CommonRepository<PartsShiftOrderDetailEntity, String> {

    /**
     * create by zhoufan 2016/11/22
     *
     * @param id 移库单明细id
     * @return 移库单明细
     */
    @Query("from PartsShiftOrderDetailEntity pa where pa.id=:id")
    PartsShiftOrderDetailEntity findById(@Param("id") int id);

    /**
     * create by zhoufan 2016/11/22
     *
     * @param partsShiftOrderId 移库单id
     * @return 移库单明细集合
     */
    @Query("from PartsShiftOrderDetailEntity pa where pa.partsShiftOrderId=:partsShiftOrderId")
    List<PartsShiftOrderDetailEntity> findByPartsShiftOrderId(@Param("partsShiftOrderId") int partsShiftOrderId);

    /**
     *
     * @param sparepartId
     * @return
     */
    @Query("select new Map(pa.sparepartId as sparepartId,pa.sparepartCode as sparepartCode,pa.sparepartName as sparepartName,pa.quantity as quantity) from PartsShiftOrderDetailEntity pa where pa.sparepartId=:sparepartId")
    Map<String,Object> findByPartId(@Param("sparepartId")int sparepartId);


}
