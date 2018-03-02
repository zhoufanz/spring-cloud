package com.sunlight;


import com.sunlight.spareparts.domain.vo.SparePartsVO;
import com.sunlight.spareparts.logic.service.SparePartsService;
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
public class SparePartsServiceApplicationTests {

    @Autowired
    SparePartsService sparePartsService;

    @Test
    public void contextLoads() {
    }

    /**
     *
     *method:findSparePartById
     * param:id 备件ID
     */
    @Test
    public void findSparePartById(){
        Map<String,Object> m= sparePartsService.findSparePartById(42);
        for(Map.Entry<String,Object>entry:m.entrySet()){
            System.out.println("key="+entry.getKey()+",value="+entry.getValue());
        }
    }
    /**
     *method:getSparePartsList
     *param:ids 备件ID的数组
     *
     */
    @Test
    public  void getSparePartsList(){
        List list=new ArrayList();
        list.add(42);
        list.add(169);
        list.add(170);
        Map<Integer, SparePartsVO> map=sparePartsService.getSparePartsList(list);
        for(Map.Entry entry:map.entrySet()){
            System.out.println("备件id："+entry.getKey());
            System.out.println("value:"+entry.getValue());
            if(entry.getValue()instanceof SparePartsVO){
                SparePartsVO vo=(SparePartsVO)entry.getValue();
                System.out.println(vo.getId());
            }
        }
    }


}
