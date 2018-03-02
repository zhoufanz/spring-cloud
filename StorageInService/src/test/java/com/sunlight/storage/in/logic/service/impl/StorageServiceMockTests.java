package com.sunlight.storage.in.logic.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.sunlight.platform.exception.RespUtil;
import com.sunlight.platform.exception.ServerException;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import com.sunlight.storage.in.domain.vo.PartsInBoundPlanVo;
import com.sunlight.storage.in.domain.vo.depend.PartsStockVo;
import com.sunlight.storage.in.logic.repository.PartsInBoundPlanRepository;
import com.sunlight.storage.in.logic.service.StorageInService;
import com.sunlight.storage.in.logic.service.depend.service.InventoryProviderServiceClient;
import com.sunlight.storage.in.logic.service.depend.service.PriceProviderServiceClient;
import com.sunlight.storage.in.logic.service.depend.service.SparePartsProviderServiceClient;
import com.sunlight.storage.in.logic.service.depend.service.WarehouseProviderServiceClient;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.mockito.Matchers.notNull;
import static org.mockito.Mockito.when;

/**
 * Created by hasee on 2016/12/28.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class StorageServiceMockTests {
    @MockBean
    private PartsInBoundPlanRepository partsInBoundPlanDao;
    @MockBean
    InventoryProviderServiceClient inventoryProviderServiceClient;
    @MockBean
    PriceProviderServiceClient priceProviderServiceClient;
    @MockBean
    SparePartsProviderServiceClient sparePartsProviderServiceClient;
    @MockBean
    WarehouseProviderServiceClient warehouseProviderServiceClient;

    @Autowired
    @InjectMocks
    private StorageInService storageInService;

    @Test
    public void quickCheck() {
        String wareHouseJsonStr = "{\"9\":284}";
        String sparePartJsonStr = "{\"10251\":{\"createtime\":1384080462000,\"code\":\"5037HB3300408A1249A\",\"measureunit\":\"件\",\"minpackingamount\":1,\"creatorid\":4,\"name\":\"无缝管\",\"creatorname\":\"zgq\",\"id\":10251,\"parttype\":2,\"status\":1}}";
        String priceJsonStr = "{\"10251\":{\"createtime\":1384418506000,\"modifytime\":1404799262000,\"ownercompanyid\":2,\"creatorid\":1,\"modifierid\":2301,\"partssalescategoryid\":1,\"modifiername\":\"张奉云\",\"partssalescategoryname\":\"雷萨泵送\",\"plannedprice\":2.14,\"sparepartid\":10251,\"creatorname\":\"系统管理员\",\"id\":107,\"ownercompanytype\":1}}";
        String inventoryJsonStr = "{\"9-284-10251\":{\"branchid\":3,\"createtime\":1385915979000,\"warehouseareacategoryid\":89,\"quantity\":999952,\"modifytime\":1392703996000,\"partid\":10251,\"creatorid\":1,\"modifierid\":2265,\"modifiername\":\"张尚武\",\"historyEntities\":[],\"storagecompanyid\":2,\"storagecompanytype\":1,\"warehouseid\":9,\"creatorname\":\"admin\",\"id\":3254,\"warehouseareaid\":284}}";

        List<PartsInBoundPlanEntity> partsInBoundPlanEntities = JSON.parseObject("[{\"branchcode\":\"2470\",\"branchid\":2,\"branchname\":\"北京福田雷萨泵送机械公司\",\"code\":\"PIPSH01920131204000001\",\"counterpartCompanyCode\":\"2470\",\"counterpartcompanyid\":2,\"counterpartcompanyname\":\"北京福田雷萨泵送机械公司\",\"createtime\":1386132898000,\"creatorid\":1156,\"creatorname\":\"SH019\",\"id\":70,\"ifwmsinterface\":0,\"inboundtype\":1,\"modifierid\":1156,\"modifiername\":\"SH019\",\"modifytime\":1386143269000,\"originalrequirementbillcode\":\"PSO2470201312030001\",\"originalrequirementbillid\":10137,\"originalrequirementbilltype\":1,\"partssalescategoryid\":1,\"planDetailEntities\":{224:{\"id\":224,\"inspectedquantity\":7,\"partsinboundplanid\":70,\"plannedamount\":7,\"price\":820.0000,\"sparepartcode\":\"5008JB2200000SYB30A\",\"sparepartid\":10251,\"sparepartname\":\"出料槽焊合\"},225:{\"id\":225,\"inspectedquantity\":10,\"partsinboundplanid\":70,\"plannedamount\":10,\"price\":1362.0000,\"sparepartcode\":\"5012JB2100009SYB30A\",\"sparepartid\":2680,\"sparepartname\":\"进料斗总成\"},223:{\"id\":223,\"inspectedquantity\":1,\"partsinboundplanid\":70,\"plannedamount\":1,\"price\":820.0000,\"sparepartcode\":\"5008JB2200000A0753A\",\"sparepartid\":13565,\"sparepartname\":\"出料槽总成\"}},\"rowversion\":1386144002819,\"sourcecode\":\"PS247020131203000003\",\"sourceid\":383,\"status\":2,\"storagecompanycode\":\"SH019\",\"storagecompanyid\":18,\"storagecompanyname\":\"商混海城中心站\",\"storagecompanytype\":3,\"warehousecode\":\"SH009\",\"warehouseid\":9,\"warehousename\":\"合肥庭华商混库\"}]", new TypeReference<List<PartsInBoundPlanEntity>>() {
        });

        com.alibaba.fastjson.JSONObject sparePartJson = JSON.parseObject(sparePartJsonStr);
        com.alibaba.fastjson.JSONObject priceJson = JSON.parseObject(priceJsonStr);
        com.alibaba.fastjson.JSONObject wareHouseJson = JSON.parseObject(wareHouseJsonStr);
        com.alibaba.fastjson.JSONObject inventoryJson = JSON.parseObject(inventoryJsonStr);

        List<Integer> wareHouseIds = new ArrayList<>();
        wareHouseIds.add(9);

        List<PartsStockVo> partsStockParams = JSON.parseArray("[{\"branchid\":null,\"code\":null,\"createtime\":null,\"creatorid\":null,\"creatorname\":null,\"id\":null,\"modifierid\":null,\"modifiername\":null,\"modifytime\":null,\"name\":null,\"partid\":10251,\"plannedprice\":null,\"quantity\":null,\"remark\":null,\"rowversion\":null,\"storagecompanyid\":null,\"storagecompanytype\":null,\"warehouseareacategoryid\":null,\"warehouseareaid\":284,\"warehouseid\":9},{\"branchid\":null,\"code\":null,\"createtime\":null,\"creatorid\":null,\"creatorname\":null,\"id\":null,\"modifierid\":null,\"modifiername\":null,\"modifytime\":null,\"name\":null,\"partid\":2680,\"plannedprice\":null,\"quantity\":null,\"remark\":null,\"rowversion\":null,\"storagecompanyid\":null,\"storagecompanytype\":null,\"warehouseareacategoryid\":null,\"warehouseareaid\":284,\"warehouseid\":9},{\"branchid\":null,\"code\":null,\"createtime\":null,\"creatorid\":null,\"creatorname\":null,\"id\":null,\"modifierid\":null,\"modifiername\":null,\"modifytime\":null,\"name\":null,\"partid\":13565,\"plannedprice\":null,\"quantity\":null,\"remark\":null,\"rowversion\":null,\"storagecompanyid\":null,\"storagecompanytype\":null,\"warehouseareacategoryid\":null,\"warehouseareaid\":284,\"warehouseid\":9}]", PartsStockVo.class);

        List<Integer> sparePartIdList = JSON.parseObject("[10251, 2680, 13565]", new TypeReference<List<Integer>>() {
        });

        List<Integer> ids = new ArrayList<>();
        ids.add(70);
        when(partsInBoundPlanDao.findByIds(ids)).thenReturn(partsInBoundPlanEntities);
        when(sparePartsProviderServiceClient.getSparePartsList(sparePartIdList)).thenReturn(sparePartJson);
        when(priceProviderServiceClient.getPriceList(sparePartIdList)).thenReturn(priceJson);
        when(warehouseProviderServiceClient.quickLocateWarehouseAreaList(wareHouseIds)).thenReturn(wareHouseJson);
        when(inventoryProviderServiceClient.getInventoryList(Mockito.any())).thenReturn(inventoryJson);

        try {
            List<PartsInBoundPlanVo> partsInBoundPlanVos = storageInService.findPlansByIds(ids);
            List<Map<String, Object>> checkOrders = new ArrayList<>();
            List<Map<String, Object>> errorPlanOrders = new ArrayList<>();
            boolean result = storageInService.check(partsInBoundPlanVos, checkOrders, errorPlanOrders);
            if (result){
                Assert.assertNotEquals(checkOrders.size(),0);
            }else{
                Assert.assertNotEquals(errorPlanOrders.size(),0);
            }
        } catch (Exception e) {
            throw new ServerException(e.getMessage());
        }
    }
}
