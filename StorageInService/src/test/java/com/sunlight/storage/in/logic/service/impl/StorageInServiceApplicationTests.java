package com.sunlight.storage.in.logic.service.impl;

import com.sunlight.platform.page.Payload;
import com.sunlight.platform.query.DynamicSpecifications;
import com.sunlight.platform.query.SearchFilter;
import com.sunlight.platform.utils.TransferObject;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import com.sunlight.storage.in.domain.vo.*;

import com.sunlight.storage.in.logic.service.StorageInService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import static org.hibernate.engine.jdbc.Size.LobMultiplier.M;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StorageInServiceApplicationTests {

    @Autowired
    private StorageInService storageInService;

    //入库计划单信息,分页信息->payload
    @Test
    public void findPartsInBoundPlans() {
        Integer pageIndex = 1;
        Integer pageSize = 50;
        String sortField = "id";
        boolean isDesc = false;
        Map<String, Object> target = new HashMap<>();

        String code = "PIP247020131203000002|PIP247020131204000003|PIP247020131204000006|";
        target.put("IN_code", code == null ? null : Arrays.asList(code.toString().split("\\|")));

        String deliveryOrderCode = "PPO2470201312030002|PPO2470201312040004";
        target.put("IN_originalRequirementBillCode", deliveryOrderCode == null ? null : Arrays.asList(deliveryOrderCode.toString().split("\\|")));

        Object createTimeStart = "2013-01-01";
        if (createTimeStart != null) {
            try {
                target.put("GTE_createTime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeStart.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        Object createTimeEnd = "2013-12-05";
        if (createTimeEnd != null) {
            try {
                target.put("LTE_createTime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeEnd.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

      /*  Object warehouseId ="9";
        target.put("IN_warehouseId",warehouseId==null?null: Arrays.asList(warehouseId.toString().split("|")));*/

      /*  target.put("EQ_counterpartCompanyCode",search.get("otherCompanyCode"));
        target.put("EQ_counterpartcompanyname",search.get("otherCompanyName"));

        Object status = search.get("status");
        if (status!=null){
            target.put("IN_status",status.toString().split("|"));
        }
        Object type = search.get("type");
        if (type!=null){
            target.put("IN_inboundtype",type.toString().split("|"));
        }*/

        Collection<SearchFilter> searchFilters = SearchFilter.parseSearchContent(target).values();

        Pageable pageable = SearchFilter.parsePageContent(pageIndex, pageSize, sortField, isDesc ? "DESC" : "ASC");
        Specification<PartsInBoundPlanEntity> specification = DynamicSpecifications.bySearchFilter(searchFilters);
        Payload payload = storageInService.findPartsInBoundPlans(specification, pageable);

        List content = payload.getContent();
        List transferList = TransferObject.transferList(payload.getContent(), PartsInBoundPlanJoinVo.class);
        payload.setContent(transferList);
        Assert.assertNotEquals(payload,null);
    }

    //id 配件入库计划单id->配件入库计划单
    @Test
    public void findByPartsInBoundPlanId() {
        PartsInBoundPlanVo vo = storageInService.findByPartsInBoundPlanId(62);
        Assert.assertNotEquals(vo,null);
    }

    //配件入库检验单id->配件入库检验单
    @Test
    public void findByPartsInBoundCheckBillId() {
        PartsInBoundCheckBillVo vo = storageInService.findByPartsInBoundCheckBillId(141);
        Assert.assertNotEquals(vo,null);
    }

    //配件入库计划单id集合>list配置入库计划单
    @Test
    public void findPlansByIds(){
        List<Integer> ids = new ArrayList<>();
        ids.add(70);
        ids.add(71);
        List<PartsInBoundPlanVo> planVos = storageInService.findPlansByIds(ids);
        Assert.assertNotEquals(planVos,null);
    }

}
