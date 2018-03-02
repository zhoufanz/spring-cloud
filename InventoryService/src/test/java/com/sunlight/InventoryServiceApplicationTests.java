package com.sunlight;

import com.sunlight.inventory.domain.po.PartsStockEntity;
import com.sunlight.inventory.domain.vo.PartStockVo;
import com.sunlight.inventory.domain.vo.PartsStockVo;
import com.sunlight.inventory.logic.repository.PartsStockRepository;
import com.sunlight.inventory.logic.service.InventoryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class InventoryServiceApplicationTests {
    @Autowired
    private InventoryService inventoryService;
    @Autowired
    private PartsStockRepository partsStockRepository;


    @Test
    public void contextLoads() {
    }



    /**
     * findWarehouseAreaIdByWarehouseId
     * param:warehouseId
     */
    @Test
    public void findWarehouseAreaIdByWarehouseIdTest(){
        List<Integer>list=inventoryService.findWarehouseAreaIdByWarehouseId(9);
        for(Integer id:list){
            System.out.println(id);
        }
    }

    /**
     * method:getInventoryList
     * param:List<PartsStockVo>
     */

    @Test
    public void getInventoryListTest(){
        //以下对象 v1和v2，v1为数据库中存在的正确数据，v2为错误的数据
        List<PartsStockVo> vos=new ArrayList<>();
        PartsStockVo v1= new PartsStockVo();
        v1.setPartId(13838);
        v1.setWarehouseAreaId(2953);
        v1.setWarehouseId(1);

        PartsStockVo v2= new PartsStockVo();
        v2.setPartId(13839);
        v2.setWarehouseAreaId(2972);
        v2.setWarehouseId(4);
        vos.add(v1);
        vos.add(v2);

        Map<String, PartsStockVo> map=inventoryService.getInventoryList(vos);
        for(Map.Entry s:map.entrySet()){
            System.out.println(s.getKey()+"-------"+s.getValue());
            if(s.getValue() instanceof PartsStockVo){
                PartsStockVo vo= (PartsStockVo)s.getValue();
                System.out.println("warehouseId---"+vo.getWarehouseId());
            }

        }
    }

    /**
     *
     * method:findInventoryByParams
     * params:warehouseId,warehouseAreaId,sparePartId
     */
    @Test
    public void findInventoryByParamsTest(){
        PartsStockVo vo=inventoryService.findInventoryByParams(9,284,10251);
        System.out.println(vo.getWarehouseId());
    }

    /**
     *saveInventoryList
     * param:List<PartsStockVo>
     */
    @Test
    public void saveInventoryList(){
        List<PartsStockVo> list=new ArrayList<>();
        PartsStockVo v1=new PartsStockVo();
        //v1.setId(3256);
        v1.setWarehouseId(9);
        v1.setStorageCompanyId(2);
        v1.setStorageCompanyType(1);
        v1.setBranchId(3);
        v1.setWarehouseAreaId(285);
        v1.setWarehouseAreaCategoryId(89);
        v1.setPartId(10251);
        v1.setQuantity(1000001);
        v1.setRemark("");
        v1.setCreatorId(7);
        v1.setCreatorName("admin");
        //v1.setCreatetime();
        v1.setModifierId(2265);
        v1.setModifierName("张尚武");
        //v1.setModifytime();
       // v1.setRowversion();
        //v1.setCode();
        //v1.setName();
        //v1.setPlannedprice();
        PartsStockVo v2=new PartsStockVo();
        //v1.setId(3257);
        v2.setWarehouseId(9);
        v2.setStorageCompanyId(2);
        v2.setStorageCompanyType(1);
        v2.setBranchId(3);
        v2.setWarehouseAreaId(285);
        v2.setWarehouseAreaCategoryId(89);
        v2.setPartId(10252);
        v2.setQuantity(1000001);
        v2.setRemark("");
        //v1.setCreatorid();
        v2.setCreatorName("admin");
        //v1.setCreatetime();
        v1.setModifierId(2265);
        v1.setModifierName("张尚武");
        //v1.setModifytime();
        //v1.setRowversion();
        //v1.setCode();
        //v1.setName();
        //v1.setPlannedprice();
        list.add(v1);
        list.add(v2);
        boolean b= inventoryService.saveInventoryList(list);
        System.out.println(b);
    }
     @Test
    public void findAndSavePartsStockTest(){
       List sparePartCriterias=new ArrayList();
        Map m1=new HashMap();
        m1.put("sparePartId",10251);
        m1.put("originWarehouseId",9);
        m1.put("destWarehouseId",1);
        Map m2=new HashMap();
        m2.put("sparePartId",3255);
        m2.put("originWarehouseId",1);
        m2.put("destWarehouseId",9);
        sparePartCriterias.add(m1);
        sparePartCriterias.add(m2);
        //inventoryService.findAndSavePartsStock(sparePartCriterias,1);
        inventoryService.findAndSavePartsStock(sparePartCriterias,9);
     }




}
