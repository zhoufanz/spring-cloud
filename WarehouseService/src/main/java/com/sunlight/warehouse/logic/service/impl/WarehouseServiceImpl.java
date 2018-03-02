package com.sunlight.warehouse.logic.service.impl;


import com.sunlight.platform.exception.ServerException;
import com.sunlight.warehouse.domain.po.*;
import com.sunlight.warehouse.logic.dao.*;
import com.sunlight.warehouse.logic.service.WarehouseService;
import com.sunlight.warehouse.util.WareHouseConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.*;

/**
 * Created by brad on 16/11/16.
 */
@Service
public class WarehouseServiceImpl implements WarehouseService {

    @Autowired
    private WarehouseOperatorDao warehouseOperatorDao;

    @Autowired
    private WarehouseDao warehouseDao;

    @Autowired
    private WarehouseAreaDao warehouseAreaDao;


    public void checkWarehouseAera(List<Map<String, Object>> queryCriterias, Integer warehouseId) {
        for (int i = 0; i < queryCriterias.size(); i++) {
            Map<String, Object> map = queryCriterias.get(i);
            List<Integer> list = warehouseAreaDao.checkWarehouseArea((int) map.get("originWarehouseId"),
                    (int) map.get("destWarehouseId"));
            for (Integer id : list) {
                if (!id.equals(warehouseId)) {
                    throw new ServerException("code:" + map.get("code") + "出错");
                }
            }
        }
    }

    @Override
    public Integer getWareHouseAreaByWareHouseId(Integer warehouseId) {
        List<WarehouseAreaEntity> warehouseareaEntities = warehouseAreaDao.findByWareHouseIdAndCategoryType(WareHouseConstant.AreaCategory3, warehouseId);
        return warehouseareaEntities.size() > 0 ? warehouseareaEntities.get(0).getId() : null;
    }

    @Override
    public Map<Integer, Integer> getWarehouseAreaListByList(List<Integer> warehouseList) {
        Map<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < warehouseList.size(); i++) {
            map.put(warehouseList.get(i), getWareHouseAreaByWareHouseId(warehouseList.get(i)));
        }
        return map;
    }

    @Override
    public List<Map<String,Object>> findWarehouseByUserId(int id) {
        List<Map<String,Object>> maps=warehouseOperatorDao.findWarehouseByUserId(id);
        return maps;
    }

    @Override
    public Map<String, Object> findWarehouseById(int id) {
        return warehouseDao.findWarehouseById(id);
    }

    @Override
    public Map<String, Object> findWarehouseAreaById(int id) {
        Map<String,Object> warehouseAreaMaps=warehouseAreaDao.findWarehouseAreaById(id);
        return warehouseAreaMaps;
    }

    @Override
    public List<Map<String,Object>> getWareHouseAreaByWareHouseId(Integer warehouseId, Integer areaCategoryId) {
        List<WarehouseAreaEntity> warehouseareaEntities = warehouseAreaDao.findByWareHouseIdAndCategoryType(areaCategoryId, warehouseId);
        List<Map<String, Object>> listMap = new ArrayList<>();
        for (WarehouseAreaEntity WarehouseAreaEntity : warehouseareaEntities) {
            Map<String, Object> map = new HashMap<>();
            map.put("id", WarehouseAreaEntity.getId());
            map.put("code", WarehouseAreaEntity.getCode());
            listMap.add(map);
        }
        return listMap;
    }

    @Override
    public Integer findCheckAreaByWarehouseId(int warehouseId) {
        Integer checkAreaId=warehouseAreaDao.findCheckAreaIdByWarehouseId(warehouseId,"X1-01-01");
        return checkAreaId;
    }
}
