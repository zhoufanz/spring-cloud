package com.sunlight.storage.in.logic.service.depend.service;

import com.alibaba.fastjson.JSONObject;
import com.sunlight.storage.in.domain.vo.depend.PartsStockVo;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by brad on 16/11/21.
 */
@FeignClient(value = "inventory-service")
@RequestMapping(value = "/service/inventory/provider")
public interface InventoryProviderServiceClient {

    @RequestMapping(method = RequestMethod.POST, value = "/list")
    boolean saveInventoryList(@RequestBody List<PartsStockVo> list);

    @RequestMapping(method = RequestMethod.POST, value = "/list-query")
    JSONObject getInventoryList(@RequestBody List<PartsStockVo> vos);
}
