package com.sunlight.warehouse.api;

import com.sunlight.platform.exception.RespUtil;
import com.sunlight.platform.exception.ResponseData;
import com.sunlight.warehouse.logic.service.impl.WarehouseServiceImpl;

import com.sunlight.warehouse.util.WareHouseConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * Created by brad on 16/11/17.
 */
@RestController
@RequestMapping(value = "/api/warehouses")
public class WarehouseController {

    @Autowired
    WarehouseServiceImpl warehouseService;

    /**********************************************************************************/
    /**
     * 14 /warehouses/{warehouseId}/storage-area-locations 保管区库位
     */
    /**
     * @param wareHouseId 仓库ID
     * @param sparePartId 备件ID
     * @param locationCode 库位编号
     * @return
     */
    @RequestMapping(method = RequestMethod.GET, value = "/{warehouseId}/storage-area-locations")
    public ResponseData getStorageAreaLocations(@PathVariable("warehouseId") Integer wareHouseId,
                                                Integer sparePartId,
                                                String locationCode) {
        List<Map<String, Object>> maps = warehouseService.getWareHouseAreaByWareHouseId(wareHouseId, WareHouseConstant.AreaCategory1);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(),maps);
    }
    /**
     * 15 /warehouses/{wareHouseId}/check-area-locations 检验区库位
     */
    @RequestMapping(method = RequestMethod.GET, value = "/{wareHouseId}/check-area-locations")
    public ResponseData getCheckAreaLocations(@PathVariable("wareHouseId") Integer wareHouseId) {
        List<Map<String, Object>> maps = warehouseService.getWareHouseAreaByWareHouseId(wareHouseId, WareHouseConstant.AreaCategory3);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(),maps);
    }
}
