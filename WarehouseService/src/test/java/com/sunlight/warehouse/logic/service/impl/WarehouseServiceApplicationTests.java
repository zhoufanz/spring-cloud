package com.sunlight.warehouse.logic.service.impl;

import com.sunlight.warehouse.logic.service.WarehouseService;
import com.sunlight.warehouse.util.WareHouseConstant;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@RunWith(SpringRunner.class)
@SpringBootTest
public class WarehouseServiceApplicationTests {

    @Autowired
    private WarehouseService warehouseService;

    //检查库位
    @Test
    public void checkWarehouseAera(){

    }

    //通过仓库ID获得推荐 检验区库位ID
    @Test
    public void getWareHouseAreaByWareHouseId(){
        Integer i = warehouseService.getWareHouseAreaByWareHouseId(17);
        Assert.assertNotEquals(i,null);
    }

    //通过仓库ID获得推荐 保管库位ID
    @Test
    public void getWareHouseAreaByWareHouseId2(){
        List<Map<String, Object>> maps = warehouseService.getWareHouseAreaByWareHouseId(1, WareHouseConstant.AreaCategory3);
        Assert.assertNotEquals(maps,null);
    }

    //仓库id集合->Map(仓库id,推荐检验区id)
    @Test
    public void getWarehouseAreaListByList(){
        List<Integer> warehouseList=new ArrayList<>();
        warehouseList.add(1);
        warehouseList.add(2);
        Map<Integer, Integer> warehouseMap = warehouseService.getWarehouseAreaListByList(warehouseList);
        Assert.assertNotEquals(warehouseMap.size(),0);
    }

    //仓库管理员id-> 仓库信息
    @Test
    public void findWarehouseByUserId(){
        List<Map<String,Object>> warehouseVOs=warehouseService.findWarehouseByUserId(1);
        Assert.assertNotEquals(warehouseVOs.size(),0);
    }

    //仓库id->仓库信息
    @Test
    public void findWarehouseById(){
        Map<String, Object> map = warehouseService.findWarehouseById(562);
        for (String s : map.keySet()) {
            System.out.println(s+":"+map.get(s));
        }
    }

    //库位id->库位信息
    @Test
    public void findWarehouseAreaById(){
        Map<String, Object> map = warehouseService.findWarehouseAreaById(220);
        Assert.assertNotEquals(map.size(),0);
    }

    //仓库id->库位id
    @Test
    public void findCheckAreaByWarehouseId(){
        Integer id = warehouseService.findCheckAreaByWarehouseId(220);
        Assert.assertEquals(id,null);
    }
}
