package com.sunlight.spareparts.api.provider;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sunlight.spareparts.domain.vo.SparePartsVO;
import com.sunlight.spareparts.logic.service.SparePartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;


/**
 * Created by brad on 16/11/21.
 */
@RestController
@RequestMapping(value = "/service/spare-parts/provider")
public class SparePartsControllerProvider {
    @Autowired
    private SparePartsService sparePartsService;

    @RequestMapping(method = RequestMethod.POST, value = "/list")
    public JSONObject getSparePartsList(@RequestBody List<Integer> sparePartIdS) {
        Map<Integer, SparePartsVO> voMap = sparePartsService.getSparePartsList(sparePartIdS);
        return JSON.parseObject(JSON.toJSONString(voMap));
    }

    @RequestMapping(method = RequestMethod.GET,value = "/{id}")
    public Map<String,Object> findSparePartById(@PathVariable("id") int id){
        Map<String,Object> sparePartMaps=sparePartsService.findSparePartById(id);
        return sparePartMaps;
    }


}
