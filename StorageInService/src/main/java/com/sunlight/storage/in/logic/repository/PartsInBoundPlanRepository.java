package com.sunlight.storage.in.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by zhoufan on 2016/11/22.
 */
@Persistent
public interface PartsInBoundPlanRepository extends CommonRepository<PartsInBoundPlanEntity, String> {

    /**
     * @param id 配件入库计划单id
     * @return 配件入库计划单
     */
    @Query("from PartsInBoundPlanEntity pa where pa.id=:id")
    PartsInBoundPlanEntity findById(@Param("id") int id);

    /**
     * @param ids id集合字符窜
     * @return 入库计划单集合
     */
    @Query("from PartsInBoundPlanEntity pa where pa.id in (:ids)")
    List<PartsInBoundPlanEntity> findByIds(@Param("ids") List<Integer> ids);

    Page<PartsInBoundPlanEntity> findAll(Specification<PartsInBoundPlanEntity> spec, Pageable pageable);
}
