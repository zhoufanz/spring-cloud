package com.sunlight;

import com.sunlight.inventory.domain.po.PartsStockEntity;
import com.sunlight.inventory.domain.vo.PartStockVo;
import com.sunlight.inventory.logic.repository.PartsStockRepository;
import com.sunlight.inventory.logic.service.InventoryService;
import com.sunlight.inventory.logic.service.depend.service.SparePartsServiceClient;
import com.sunlight.inventory.logic.service.depend.service.WarehouseServiceClient;
import com.sunlight.inventory.logic.service.impl.InventoryServiceImpl;
import org.apache.commons.collections.map.HashedMap;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.mockito.Mockito.when;

/**
 * Created by Administrator on 2016/12/29.
 */
@RunWith(SpringRunner.class)
@SpringBootTest(properties = {"eureka.client.enabled:false"},classes = {InventoryServiceApplication.class})
public class InventoryServiceMockTest {

    @InjectMocks
    private InventoryService inventoryService=new InventoryServiceImpl();
    @Mock
    private SparePartsServiceClient sparePartsServiceClient;
    @Mock
    private WarehouseServiceClient warehouseServiceClient;
    @Mock
    private PartsStockRepository partsStockRepository;

    @Before
    public void before() throws Exception {
        MockitoAnnotations.initMocks(inventoryService);
    }

    @After
    public void after() throws Exception {
    }

    /**
     * method:findPartStockVoByCheckAreaId
     * param:checkAreaId
     */
    @Test
    public void testfindPartStockVoByCheckAreaId(){

        Integer checkAreaId=4590;
        List<PartsStockEntity> partsStockEntities1=partsStockRepository.findPartsStockByCheckAreaId(checkAreaId);
        PartsStockEntity p1=new PartsStockEntity();
        p1.setWarehouseAreaId(4600);
        p1.setPartId(10000);
        PartsStockEntity p2=new PartsStockEntity();
        p2.setWarehouseAreaId(4601);
        p2.setPartId(10001);
        partsStockEntities1.add(p1);
        partsStockEntities1.add(p2);


        Map<String,Object> spareParts1=new HashMap<>();
        Map<String,Object> warehouseAreas1=new HashMap<>();
        Map<String,Object> spareParts2=new HashMap<>();
        Map<String,Object> warehouseAreas2=new HashMap<>();
        spareParts1.put("sparePartCode","5037HB3300289S00201A");
        spareParts1.put("id",20000);
        spareParts1.put("sparePartName","胶管总成");

        warehouseAreas1.put("warehouseAreaId",12345);
        warehouseAreas1.put("warehouseAreaCode","SH027B1");
        warehouseAreas1.put("warehouseCategoryId",59);

        spareParts2.put("sparePartCode","6666HB3300289S00201B");
        spareParts2.put("id",20001);
        spareParts2.put("sparePartName","测试2");

        warehouseAreas2.put("warehouseAreaId",54321);
        warehouseAreas2.put("warehouseAreaCode","SBSBSBS1");
        warehouseAreas2.put("warehouseCategoryId",70);

        when(partsStockRepository.findPartsStockByCheckAreaId(checkAreaId)).thenReturn(partsStockEntities1);

        when(sparePartsServiceClient.findSparePartById(10000)).thenReturn(spareParts1);
        when(warehouseServiceClient.findWarehouseAreaById(4600)).thenReturn(warehouseAreas1);

        when(sparePartsServiceClient.findSparePartById(10001)).thenReturn(spareParts2);
        when(warehouseServiceClient.findWarehouseAreaById(4601)).thenReturn(warehouseAreas2);

        List<PartStockVo>list=inventoryService.findPartStockVoByCheckAreaId(checkAreaId);
        for(PartStockVo vo:list){
            PartStockVo v=vo;

            System.out.println("名称："+v.getSparePartName()+"  ,编号："+v.getSparePartCode()+" ,库位编号："+v.getCheckAreaLocation());
        }

    }


}
