package com.sunlight.price.logic.repository;

import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.price.domain.po.PartsPlannedPriceEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by brad on 16/11/21.
 */
public interface PriceRepository extends CommonRepository<PartsPlannedPriceEntity, String> {

    @Query("from PartsPlannedPriceEntity t where t.sparepartId=:partsId")
    PartsPlannedPriceEntity findByPartsId(@Param("partsId") int partsId);

    @Query("from PartsPlannedPriceEntity t where t.sparepartId in (:list)")
    List<PartsPlannedPriceEntity> getPriceList(@Param("list") List<Integer> list);

}
