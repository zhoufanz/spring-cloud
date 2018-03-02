package com.sunlight.storage.transfer.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.Date;
import java.util.List;


/**
 * Created by hasee on 2016/11/22.
 */
public interface PartsShiftOrderRepository extends CommonRepository<PartsShiftOrderEntity, String> {

    /**
     * create by zhoufan 2016/11/22
     *
     * @param id 移库单明细id
     * @return 移库单明细
     */
    @Query("from PartsShiftOrderEntity pa where pa.id=:id and pa.orderType=1")
    PartsShiftOrderEntity findByIdAndOrderType(@Param("id") int id);

    Page<PartsShiftOrderEntity> findByOrderType(Specification<PartsShiftOrderEntity> spec, Pageable pageable);


    @Query("from PartsShiftOrderEntity pa where  pa.warehouseId=:warehouseId and pa.createTime between :createTimeStart " +
            "and :createTimeEnd and pa.warehouseCode=:location and code in :code ")
    List<PartsShiftOrderEntity> findByPartsShiftOrderPutVo(@Param("code") List<String> code,
                                                           @Param("createTimeStart")Date createTimeStart,
                                                           @Param("createTimeEnd")Date createTimeEnd,
                                                           @Param("warehouseId") int warehouseld,
                                                           @Param("location")String location,
                                                           Pageable pageable);

}
