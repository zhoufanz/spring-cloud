package com.sunlight.inventory.logic.service.depend.fallback;

import com.sunlight.inventory.logic.service.depend.service.WarehouseServiceClient;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created by Nicholas on 16/12/27.
 */
@Component
public class WarehouseServiceFallBack implements WarehouseServiceClient {
    @Override
    public void checkWarehouseArea(String queryCriterias,Integer warehouseId) {

    }

    @Override
    public String findWarehouseByUserId(int id) {
        return null;
    }

    @Override
    public Map<String, Object> findWarehouseById(int id) {
        return null;
    }

    @Override
    public Map<String, Object> findWarehouseAreaById(int id) {
        return null;
    }

    @Override
    public Integer findCheckAreaIdByIds(int warehouseId) {
        return null;
    }
}
