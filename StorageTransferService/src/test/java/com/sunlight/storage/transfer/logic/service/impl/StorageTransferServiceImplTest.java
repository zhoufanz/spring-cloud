package com.sunlight.storage.transfer.logic.service.impl;

import com.alibaba.fastjson.JSON;
import com.sunlight.StorageTransferServiceApplication;
import com.sunlight.platform.exception.RespUtil;
import com.sunlight.platform.page.Payload;
import com.sunlight.platform.query.DynamicSpecifications;
import com.sunlight.platform.query.SearchFilter;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderDetailEntity;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderEntity;
import com.sunlight.storage.transfer.domain.vo.PartStockVo;
import com.sunlight.storage.transfer.domain.vo.PartsShiftOrderForDetail;
import com.sunlight.storage.transfer.domain.vo.recieve.LocationReceive;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderDetailReceive;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderReceive;
import com.sunlight.storage.transfer.logic.depend.service.CodeTemplateServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.InventoryServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.SparePartsServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.WarehouseServiceClient;
import com.sunlight.storage.transfer.logic.repository.PartsShiftOrderRepository;
import com.sunlight.storage.transfer.logic.service.StorageTransferService;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;

import java.text.SimpleDateFormat;
import java.util.*;

import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.when;

/**
 * StorageTransferServiceImpl Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>十二月 27, 2016</pre>
 */
@RunWith(MockitoJUnitRunner.class)
@SpringBootTest(properties = {"eureka.client.enabled:false"},classes = {StorageTransferServiceApplication.class})
public class StorageTransferServiceImplTest {

    @InjectMocks
    private StorageTransferService storageTransferService = new StorageTransferServiceImpl();
    @Mock
    private WarehouseServiceClient warehouseServiceClient;
    @Mock
    private InventoryServiceClient inventoryServiceClient;
    @Mock
    private CodeTemplateServiceClient codeTemplateServiceClient;
    @Mock
    private SparePartsServiceClient sparePartsServiceClient;
    @Mock
    private PartsShiftOrderRepository partsShiftOrder;

    @Before
    public void before() throws Exception {
        MockitoAnnotations.initMocks(storageTransferService);
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: savePartsShiftOrder(PartsShiftOrderRecieve partsShiftOrderVo)
     */
    @Test
    public void testSavePartsShiftOrder() throws Exception {
        //模拟远程调用后的结果
        Map<String, Object> warehouseMaps = new HashMap<>();
        //模拟远程调用后的结果
        Map<String, Object> sparePartsMap = new HashMap<>();
        //模拟远程调用后的结果
        Map<String, Object> warehouseMap = new HashMap<>();
        //模拟远程调用后的结果
        Map<String, Object> locationMaps = new HashMap<>();


        warehouseMaps.put("warehouseId", 10000);
        warehouseMaps.put("warehouseName", "测试仓库1");
        warehouseMaps.put("warehouseCode", "TEST001");

        sparePartsMap.put("sparePartCode", "5008JB7000125S00150A");
        sparePartsMap.put("id", "170");
        sparePartsMap.put("sparePartName", "安全阀");

        warehouseMap.put("warehouseAreaId", "20003");
        warehouseMap.put("warehouseCategoryId", "60");
        warehouseMap.put("warehouseAreaCode", "X1-01-01");

        locationMaps.put("warehouseAreaId", "20000");
        locationMaps.put("warehouseCategoryId", "60");
        locationMaps.put("warehouseAreaCode", "A1-01-01");

        //构造Service方法的传入参数
        PartsShiftOrderReceive partsShiftOrderReceive = new PartsShiftOrderReceive();
        //构造Service方法的传入参数
        Set<PartsShiftOrderDetailReceive> detailReceives = new HashSet<>();
        PartsShiftOrderDetailReceive detailReceive = new PartsShiftOrderDetailReceive();
        //构造Service方法的传入参数
        Set<LocationReceive> locationReceives = new HashSet<>();
        LocationReceive locationReceive = new LocationReceive();

        locationReceive.setQuantity(100);
        locationReceive.setStorageAreaLocationId(20000);
        locationReceives.add(locationReceive);

        detailReceive.setRemark("Junit Test");
        detailReceive.setCheckAreaLocationId(20003);
        detailReceive.setSparePartId(170);
        detailReceive.setReceiveSet(locationReceives);
        detailReceives.add(detailReceive);

        partsShiftOrderReceive.setOrderType(1);
        partsShiftOrderReceive.setRemark("Junit Test");
        partsShiftOrderReceive.setWarehouseId(10000);
        partsShiftOrderReceive.setDetails(detailReceives);
        //模拟远程调用后的结果
        when(warehouseServiceClient.findWarehouseById(10000)).thenReturn(warehouseMaps);
        //模拟远程调用后的结果
        when(codeTemplateServiceClient.findOrderCodeByCode("SJ")).thenReturn("SJ-000015");
        //模拟远程调用后的结果
        when(sparePartsServiceClient.findSparePartById(170)).thenReturn(sparePartsMap);
        //模拟远程调用后的结果
        when(warehouseServiceClient.findWarehouseAreaById(20000)).thenReturn(warehouseMap);
        //模拟远程调用后的结果
        when(warehouseServiceClient.findWarehouseAreaById(20003)).thenReturn(locationMaps);
        //模拟远程调用后的结果
        doNothing().when(warehouseServiceClient).checkWarehouseArea(null, 10000);
        //模拟远程调用后的结果
        doNothing().when(inventoryServiceClient).getInventory(null, 10000);

        Map<String, String> payload = storageTransferService.savePartsShiftOrder(partsShiftOrderReceive);
        System.out.println(payload);
    }

    /**
     * Method: findPartsShiftOrders(Specification<PartsShiftOrderEntity> spec, Pageable pageable)
     */
    @Test
    public void testFindPartsShiftOrders() throws Exception {
        //参数
        Map<String, Object> maps = new HashMap<>();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String code = "5037HB3300041S00154A";
        String[] codes = code.split("\\|");
        maps.put("IN_code", Arrays.asList(codes));
        maps.put("GTE_createtime", simpleDateFormat.parse("2013-11-13"));
        maps.put("LTE_createtime", simpleDateFormat.parse("2013-11-15"));
        maps.put("EQ_warehouseid", 18);
        maps.put("EQ_shiftOrderDetails.sparepartcode","PM247020131218000001");
        maps.put("LIKE_shiftOrderDetails.destwarehouseareacode","SH029C1");
        Collection<SearchFilter> searchFilters = SearchFilter.parseSearchContent(maps).values();
        Specification<PartsShiftOrderEntity> specification = DynamicSpecifications.bySearchFilter(searchFilters);
        int pageIndex =10;
        int pageSize = 1;
        String sortField = "id";
        String sortType = "ASC";
        Pageable pageable = SearchFilter.parsePageContent(pageIndex, pageSize, sortField, sortType);
        //返回值
        List<PartsShiftOrderEntity> partsShiftOrderEntitys=new ArrayList<>();
        PartsShiftOrderEntity p1=new PartsShiftOrderEntity();
        p1.setId(1);
        p1.setCode("PMempty20131204000001");
        p1.setBranchId(2);
        p1.setWarehouseId(2);
        p1.setWarehouseCode("1028");
        p1.setWarehouseName("商混设备配件库");
        p1.setStorageCompanyId(2);
        p1.setStorageCompanyCode("2470");
        p1.setStorageCompanyName("北京福田雷萨泵送机械公司");
        p1.setStorageCompanyType(1);
        p1.setStatus(1);
        p1.setType(1);
        p1.setRemark("");
        p1.setCreatorId(2269);
        p1.setCreatorName("张尚武");
        partsShiftOrderEntitys.add(p1);
        PartsShiftOrderEntity p2=new PartsShiftOrderEntity();
        p2.setId(2);
        p2.setCode("PMempty20131204000001");
        p2.setBranchId(1);
        p2.setWarehouseId(2);
        p2.setWarehouseCode("1028");
        p2.setWarehouseName("商混设备配件库");
        p2.setStorageCompanyId(1);
        p2.setStorageCompanyCode("2470");
        p2.setStorageCompanyName("北京福田雷萨泵送机械公司");
        p2.setStorageCompanyType(1);
        p2.setStatus(1);
        p2.setType(1);
        p2.setRemark("");
        p2.setCreatorId(2269);
        p2.setCreatorName("张尚武");
        partsShiftOrderEntitys.add(p2);
        Page<PartsShiftOrderEntity> orderEntities =new PageImpl<PartsShiftOrderEntity>(partsShiftOrderEntitys);
        orderEntities.getNumber();
        when(partsShiftOrder.findAll(specification, pageable)).thenReturn(orderEntities);
        Payload p=storageTransferService.findPartsShiftOrders(specification, pageable);
        System.out.println(JSON.toJSONString(p));
    }

    /**
     * Method: findWarehouseByUserId(int id)
     */
    @Test
    public void testFindWarehouseByUserId() throws Exception {
        List<Map<String, String>> maps = new ArrayList<>();
        Map<String, String> result1 = new HashMap<>();
        Map<String, String> result2 = new HashMap<>();
        result1.put("name", "测试仓库1");
        result1.put("id", "10000");
        maps.add(result1);
        result2.put("name", "测试仓库2");
        result2.put("id", "10001");
        maps.add(result2);
        Mockito.when(warehouseServiceClient.findWarehouseByUserId(1)).thenReturn(maps);
        Map<String, List<Map<String, String>>> listMap = storageTransferService.findWarehouseByUserId(1);
        System.out.println(listMap);

    }

    /**
     * Method: findByid(int id)
     */
    @Test
    public void testFindByid() throws Exception {
        PartsShiftOrderEntity partsShiftOrderEntity=new PartsShiftOrderEntity();
        partsShiftOrderEntity.setId(1);
        partsShiftOrderEntity.setCode("PMempty20131204000001");
        partsShiftOrderEntity.setBranchId(2);
        partsShiftOrderEntity.setWarehouseId(2);
        partsShiftOrderEntity.setWarehouseCode("1028");
        partsShiftOrderEntity.setWarehouseName("商混设备配件库");
        partsShiftOrderEntity.setStorageCompanyId(2);
        partsShiftOrderEntity.setStorageCompanyCode("2470");
        partsShiftOrderEntity.setStorageCompanyName("北京福田雷萨泵送机械公司");
        partsShiftOrderEntity.setStorageCompanyType(1);
        partsShiftOrderEntity.setStatus(1);
        partsShiftOrderEntity.setType(1);
        partsShiftOrderEntity.setRemark("");
        partsShiftOrderEntity.setCreatorId(2269);
        partsShiftOrderEntity.setCreatorName("张尚武");
        when(partsShiftOrder.findByIdAndOrderType(1)).thenReturn(partsShiftOrderEntity);
        when(partsShiftOrder.findByIdAndOrderType(2)).thenReturn(null);
        PartsShiftOrderForDetail p=storageTransferService.findByid(1);
        System.out.println(JSON.toJSONString(p));
    }

    /**
     * Method: findByWarehouseId(int warehouseId)
     */
    @Test
    public void testFindByWarehouseId() throws Exception {
        List<PartStockVo> partStockVos=new ArrayList<>();
        List<PartStockVo> partStockVos2=new ArrayList<>();
        Mockito.when(warehouseServiceClient.findCheckAreaIdByIds(1)).thenReturn(276);
        PartStockVo partStockVo1=new PartStockVo();
        partStockVo1.setSparePartId(169);
        partStockVo1.setSparePartCode("5037HB3300339A1249A");
        partStockVo1.setSparePartName("无缝管");
        partStockVo1.setCheckAreaLocationId(276);
        partStockVo1.setCheckAreaLocation("JY");
        partStockVo1.setQuantity(3);
        partStockVo1.setRecommendedLocationId(20000);
        partStockVo1.setRecommendedLocation("A1-01-01");
        partStockVos.add(partStockVo1);
        PartStockVo partStockVo2=new PartStockVo();
        partStockVo1.setSparePartId(170);
        partStockVo2.setSparePartCode("5008JB7000125S00150A");
        partStockVo2.setSparePartName("安全阀");
        partStockVo2.setCheckAreaLocationId(276);
        partStockVo2.setCheckAreaLocation("JY");
        partStockVo2.setQuantity(3);
        partStockVo2.setRecommendedLocationId(20000);
        partStockVo2.setRecommendedLocation("A1-01-01");
        partStockVos.add(partStockVo2);
        Mockito.when( inventoryServiceClient.findPartStockVoByCheckAreaId(276)).thenReturn(partStockVos);
        List<PartStockVo> ps=storageTransferService.findByWarehouseId(1);
        System.out.println(JSON.toJSONString(ps));
    }


} 
