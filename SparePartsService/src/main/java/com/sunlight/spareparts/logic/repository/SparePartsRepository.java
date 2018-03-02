package com.sunlight.spareparts.logic.repository;


import com.sunlight.platform.repository.CommonRepository;
import com.sunlight.spareparts.domain.po.SparePartEntity;
import org.springframework.data.annotation.Persistent;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
@Persistent
public interface SparePartsRepository extends CommonRepository<SparePartEntity, String> {



    @Query("from SparePartEntity spre where spre.id in (:list)")
    List<SparePartEntity> getSparePartsList(@Param("list") List<Integer> list);

    @Query("select new map(s.id as id,s.code as sparePartCode,s.name as sparePartName) from SparePartEntity s where s.id=:id")
    Map<String,Object> findSparePartById(@Param("id") int id);

}
