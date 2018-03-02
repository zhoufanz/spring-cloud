package com.sunlight.code.logic.dao;

import com.sunlight.code.domain.po.CodeTemplateEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by Nicholas on 16/12/20.
 */
@Repository
public interface CodeDao extends JpaRepository<CodeTemplateEntity, Integer> {
    @Query("from CodeTemplateEntity c where c.orderCode=:orderCode")
    CodeTemplateEntity findByOrderCode(@Param("orderCode") String orderCode);
}
