package com.sunlight.storage.in.logic.service.depend.service;


import com.alibaba.fastjson.JSONObject;
import com.sunlight.storage.in.domain.vo.depend.SparePartsVO;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "spare-parts-service")
@RequestMapping(value = "/service/spare-parts/provider")
public interface SparePartsProviderServiceClient {

    @RequestMapping(method = RequestMethod.POST, value = "/list")
    JSONObject getSparePartsList(@RequestBody List<Integer> sparePartsIdList);
}
