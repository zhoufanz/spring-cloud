package com.sunlight.storage.in.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanDetailEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


/**
 * Created by hasee on 2016/11/21.
 */
@Persistent
public interface PartsInBoundPlanDetailRepository extends CommonRepository<PartsInBoundPlanDetailEntity, String> {
    /**
     * @param id 备件入库计划单明细id
     * @return 备件入库计划单明细
     */
    @Query("from PartsInBoundPlanDetailEntity pa where pa.id=:id")
    PartsInBoundPlanDetailEntity findById(@Param("id") int id);
}
