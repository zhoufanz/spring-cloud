package com.sunlight.storage.transfer.logic.depend.fallback;

import com.sunlight.storage.transfer.logic.depend.service.WarehouseServiceClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by Nicholas on 16/12/28.
 */
@Component
public class WarehouseServiceFallBack implements WarehouseServiceClient {
    @Override
    public void checkWarehouseArea(@RequestParam("queryCriterias") String queryCriterias, @RequestParam("warehouseId") Integer warehouseId) {

    }

    @Override
    public List<Map<String, String>> findWarehouseByUserId(@PathVariable("id") int id) {
        return null;
    }

    @Override
    public Map<String, Object> findWarehouseById(@PathVariable("id") int id) {
        return null;
    }

    @Override
    public Map<String, Object> findWarehouseAreaById(@PathVariable("id") int id) {
        return null;
    }

    @Override
    public Integer findCheckAreaIdByIds(@PathVariable("warehouseId") int warehouseId) {
        return null;
    }
}
