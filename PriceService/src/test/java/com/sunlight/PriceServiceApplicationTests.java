package com.sunlight;

import com.alibaba.fastjson.JSON;
import com.sunlight.price.domain.po.PartsPlannedPriceEntity;
import com.sunlight.price.domain.vo.PartsPlannedPriceVo;
import com.sunlight.price.logic.service.PriceService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PriceServiceApplicationTests {

    @Autowired
    private PriceService priceService;

    @Test
    public void contextLoads() {
    }

    @Test
    public void findPriceByIds() {
        List<Integer> ids = new ArrayList<>();
        ids.add(8053);
        ids.add(8058);
        List<PartsPlannedPriceVo> priceVos = priceService.findPriceByIds(ids);
        Assert.assertEquals(2, priceVos.size());
    }

    @Test
    public void batchUpdate() {
        List<PartsPlannedPriceVo> priceVos = new ArrayList<>();
        PartsPlannedPriceVo priceVo107 = priceService.findPlannedPriceByPartsId(8053);
        priceVo107.setPlannedPrice(new BigDecimal(100));
        priceVos.add(priceVo107);

        PartsPlannedPriceVo priceVo108 = priceService.findPlannedPriceByPartsId(8058);
        priceVo108.setPlannedPrice(new BigDecimal(200));
        priceVos.add(priceVo108);

        priceService.batchUpdate(priceVos);


        PartsPlannedPriceVo priceVo107_1 = priceService.findPlannedPriceByPartsId(8053);
        priceVo107.setPlannedPrice(new BigDecimal(100));
        PartsPlannedPriceVo priceVo108_1 = priceService.findPlannedPriceByPartsId(8058);
        priceVo108.setPlannedPrice(new BigDecimal(200));
        Assert.assertEquals(100, priceVo107_1.getPlannedPrice().intValue());
        Assert.assertEquals(200, priceVo108_1.getPlannedPrice().intValue());

    }

    /**
     * Map<Integer, PartsPlannedPriceVo> getPlannedPriceList(List<Integer> ids)
     */

    @Test
    public void testGetPlannedPriceList(){
        List<Integer> ids=new ArrayList<>();
        ids.add(8151);
        ids.add(8191);
        ids.add(8393);
        ids.add(8394);
        Map<Integer, PartsPlannedPriceVo> PartsPlannedPriceEntitys=priceService.getPlannedPriceList(ids);
        System.out.print(JSON.toJSONString(PartsPlannedPriceEntitys));
    }

    /**
     * boolean batchUpdate(List<PartsPlannedPriceVo> vos);
     */
    @Test
    public void testBatchUpdate(){
        PartsPlannedPriceVo partsPlannedPriceVo1=new PartsPlannedPriceVo();
        partsPlannedPriceVo1.setId(106);
        partsPlannedPriceVo1.setOwnerCompanyId(2);
        partsPlannedPriceVo1.setOwnerCompanyType(1);
        partsPlannedPriceVo1.setPartsSalesCategoryId(1);
        partsPlannedPriceVo1.setPartsSalesCategoryName("雷萨泵送");
        partsPlannedPriceVo1.setSparepartId(8058);
        partsPlannedPriceVo1.setCreatorId(1);
        partsPlannedPriceVo1.setCreatorName("系统管理员");
        partsPlannedPriceVo1.setModifierId(2301);
        partsPlannedPriceVo1.setModifierName("张奉云");
        partsPlannedPriceVo1.setPlannedPrice(BigDecimal.ZERO);
        PartsPlannedPriceVo partsPlannedPriceVo2=new PartsPlannedPriceVo();
        partsPlannedPriceVo2.setId(105);
        partsPlannedPriceVo2.setOwnerCompanyId(2);
        partsPlannedPriceVo2.setOwnerCompanyType(1);
        partsPlannedPriceVo2.setPartsSalesCategoryId(1);
        partsPlannedPriceVo2.setPartsSalesCategoryName("雷萨泵送");
        partsPlannedPriceVo2.setSparepartId(8058);
        partsPlannedPriceVo2.setCreatorId(1);
        partsPlannedPriceVo2.setCreatorName("系统管理员");
        partsPlannedPriceVo2.setModifierId(2301);
        partsPlannedPriceVo2.setModifierName("张奉云");
        partsPlannedPriceVo2.setPlannedPrice(BigDecimal.ZERO);
        List<PartsPlannedPriceVo> vos=new ArrayList<>();
        vos.add(partsPlannedPriceVo1);
        vos.add(partsPlannedPriceVo2);
        Boolean s=priceService.batchUpdate(vos);
        System.out.print(s);
    }

    /**
     * PartsPlannedPriceVo findPlannedPriceByPartsId(int partsId);
     */
    @Test
    public void testFindPlannedPriceByPartsId(){
        PartsPlannedPriceVo partsPlannedPriceVo=new PartsPlannedPriceVo();
        partsPlannedPriceVo=priceService.findPlannedPriceByPartsId(8053);
        System.out.print(JSON.toJSONString(partsPlannedPriceVo));
    }
}
