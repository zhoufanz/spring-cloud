package com.sunlight.storage.in.logic.service;

import com.sunlight.platform.page.Payload;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import com.sunlight.storage.in.domain.vo.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Map;

/**
 * Created by hasee on 2016/11/21.
 */
public interface StorageInService {

    /**
     * 入库计划单信息,分页信息->payload
     * @param spec
     * @param pageable
     * @return
     */
    Payload findPartsInBoundPlans(Specification<PartsInBoundPlanEntity> spec, Pageable pageable);

    //入库检查单多条件分页查询
    Page<PartsInBoundCheckBillEntity> findPartsInBoundCheckBills(Specification<PartsInBoundCheckBillEntity> spec, Pageable pageable);


    /**
     * @param id 配件入库计划单id
     * @return 配件入库计划单
     */
    PartsInBoundPlanVo findByPartsInBoundPlanId(int id);

    /**
     * 配件入库检验单id->配件入库检验单
     * @param id
     * @return
     */
    PartsInBoundCheckBillVo findByPartsInBoundCheckBillId(int id);

    /**
     * 配件入库计划单id集合>list配置入库计划单
     * @param ids
     * @return
     */
    List<PartsInBoundPlanVo> findPlansByIds(List<Integer> ids);

    //检验
    boolean check(List<PartsInBoundPlanVo> listVos,List<Map<String,Object>> checkOrders,List<Map<String,Object>> errorPlanOrders);

    /**
     * 管理员id->仓库信息
     * @param id
     * @return
     */
    Map<String,List<Map<Integer, String>>> findWarehouseByUserId(int id);

}
