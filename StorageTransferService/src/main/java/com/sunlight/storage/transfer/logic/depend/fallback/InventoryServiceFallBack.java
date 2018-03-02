package com.sunlight.storage.transfer.logic.depend.fallback;

import com.sunlight.storage.transfer.domain.vo.PartStockVo;
import com.sunlight.storage.transfer.logic.depend.service.InventoryServiceClient;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Nicholas on 16/12/28.
 */
@Component
public class InventoryServiceFallBack implements InventoryServiceClient {
    @Override
    public void getInventory(String stockPartIds,Integer warehouseId) {

    }

    @Override
    public List<Integer> findWarehouseAreaIdByWarehouseId(int warehouseId) {
        return null;
    }

    @Override
    public List<PartStockVo> findPartStockVoByCheckAreaId(int checkAreaId) {
        return null;
    }
}
