package com.sunlight.storage.in.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


/**
 * Created by zhoufan on 2016/11/22.
 */
public interface PartsInBoundCheckBillRepository extends CommonRepository<PartsInBoundCheckBillEntity, String> {
    /**
     * @param id 配件入库检验单id
     * @return 配件入库检验单
     */
    @Query("from PartsInBoundCheckBillEntity pa where pa.id=:id")
    PartsInBoundCheckBillEntity findById(@Param("id") int id);

    //多条件分页查询入库检查单
    Page<PartsInBoundCheckBillEntity> findAll(Specification<PartsInBoundCheckBillEntity> spec, Pageable pageable);
}
