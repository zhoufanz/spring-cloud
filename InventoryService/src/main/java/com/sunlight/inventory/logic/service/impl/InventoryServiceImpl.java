package com.sunlight.inventory.logic.service.impl;

import com.sunlight.inventory.domain.po.PartsStockEntity;
import com.sunlight.inventory.domain.vo.PartStockVo;
import com.sunlight.inventory.domain.vo.PartsStockVo;
import com.sunlight.inventory.logic.repository.PartsStockRepository;
import com.sunlight.inventory.logic.service.InventoryService;
import com.sunlight.inventory.logic.service.depend.service.PriceServiceClient;
import com.sunlight.inventory.logic.service.depend.service.SparePartsServiceClient;
import com.sunlight.inventory.logic.service.depend.service.WarehouseServiceClient;
import com.sunlight.platform.exception.ResponseData;
import com.sunlight.platform.utils.TransferObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created by brad on 16/11/21.
 */
@Service
@Transactional
public class InventoryServiceImpl implements InventoryService {

    @Autowired
    private PartsStockRepository partsStockRepository;

    @Autowired
    private SparePartsServiceClient sparePartsServiceClient;

    @Autowired
    private PriceServiceClient priceServiceClient;

    @Autowired
    private WarehouseServiceClient warehouseServiceClient;

    @Override
    public int getInventory(String id) {
        return 0;
    }

    @Override
    @Transactional
    public void findAndSavePartsStock(List<Map<String, Object>> sparePartCriterias, Integer warehouseId) {
        for (Map<String, Object> map : sparePartCriterias) {
            List<PartsStockEntity> stockEntities = partsStockRepository.findByPartsStock(
                    (Integer) map.get("sparePartId"), warehouseId,
                    (Integer) map.get("originWarehouseId"), (Integer) map.get("destWarehouseId"));

            for (PartsStockEntity partsStockEntity : stockEntities) {
                if (partsStockEntity.getWarehouseAreaId().equals(map.get("originWarehouseId"))) {
                    if (partsStockEntity.getQuantity() >= (Integer) map.get("quantity"))
                        partsStockEntity.setQuantity(partsStockEntity.getQuantity() - (Integer) map.get("quantity"));
                    else
                        throw new RuntimeException("原货位配件：" + map.get("code") + "数量不足！不能进行移库");
                }
                if (partsStockEntity.getWarehouseAreaId().equals(map.get("destWarehouseId"))
                        && partsStockEntity.getPartId().equals(map.get("sparePartId")))
                    partsStockEntity.setQuantity(partsStockEntity.getQuantity() + (Integer) map.get("quantity"));
            }
        }
    }

    /**
     * 包装
     *
     * @param vo 备件库存Vo
     */
    private void wrap(PartsStockVo vo) {
        int sparePartId = vo.getPartId();

        //获取备件信息
        ResponseData response = sparePartsServiceClient.getSpareParts(sparePartId);
        if (response.getPayload() != null) {
            PartsStockVo sparePartsVo = TransferObject.transferObject(response.getPayload(), PartsStockVo.class);
            vo.setCode(sparePartsVo.getCode());
            vo.setName(sparePartsVo.getName());
        }

        //获取备件价格
        response = priceServiceClient.getPrice(sparePartId);
        if (response.getPayload() != null) {
            PartsStockVo priceVo = TransferObject.transferObject(response.getPayload(), PartsStockVo.class);
            vo.setPlannedPrice(priceVo.getPlannedPrice());
        }
    }
    /**
     * 查询某仓库下，某库区,某备件 备件库存
     */
    @Override
    public PartsStockVo findInventoryByParams(int wareHouseId, int wareHouseAreaId, int sparePartId) {

        List<PartsStockEntity> partsStockEntities = partsStockRepository.findByParams(wareHouseId, wareHouseAreaId, sparePartId);
       if (partsStockEntities.size() > 0) {
            PartsStockVo partsStockVo=TransferObject.transferObject(partsStockEntities.get(0), PartsStockVo.class);
            return partsStockVo;
        }
        return null;
    }

    @Override
    public Map<String, PartsStockVo> getInventoryList(List<PartsStockVo> vos) {

        Map<String, PartsStockVo> map = new HashMap<>();

        for (PartsStockVo vo : vos) {
            PartsStockVo stockVo = this.findInventoryByParams(vo.getWarehouseId(), vo.getWarehouseAreaId(), vo.getPartId());
            map.put(vo.getWarehouseId() + "-" + vo.getWarehouseAreaId() + "-" + vo.getPartId(), stockVo);
        }
        return map;
    }

//    @Override
//    public boolean save(PartsStockVo vo) {
//        return partsStockRepository.save(TransferObject.transferObject(vo, PartsStockEntity.class)) != null;
//    }

    /**
     *批量插入操作
     * @param list
     * @return
     */
    @Override
    public boolean saveInventoryList(List<PartsStockVo> list) {
        List<PartsStockEntity> vos = TransferObject.transferList(list, PartsStockEntity.class);
        partsStockRepository.save(vos);
        return false;
    }

//    @Override
//    public   List<Map<String,Object>> findpByWarehouseid(int warehouseid,int id){
//        List<Map<String,Object>> partsStockEntitys=partsStockRepository.findpByWarehouseid(warehouseid,id);
//        return partsStockEntitys;
//    }

    /**
     * 通过库区id查询仓库id
     * @param warehouseId
     * @return
     */
    @Override
    public List<Integer> findWarehouseAreaIdByWarehouseId(int warehouseId) {
        List<Integer> warehouseAreaIds=partsStockRepository.findWarehouseAreaIdByWarehouseId(warehouseId);
        return warehouseAreaIds;
    }

    @Override
    public List<PartStockVo> findPartStockVoByCheckAreaId(int checkAreaId) {
        List<PartsStockEntity> partsStockEntities=partsStockRepository.findPartsStockByCheckAreaId(checkAreaId);
        List<PartStockVo> partStockVos=new ArrayList<>();
        for(PartsStockEntity partsStockEntity:partsStockEntities){
            PartStockVo partStockVo= TransferObject.transferObject(partsStockEntity,PartStockVo.class);
            Map<String,Object> spareParts=sparePartsServiceClient.findSparePartById(partStockVo.getSparePartId());
            partStockVo.setSparePartCode((String)spareParts.get("sparePartCode"));
            partStockVo.setSparePartName((String)spareParts.get("sparePartName"));
            Map<String,Object> warehouseAreas=warehouseServiceClient.findWarehouseAreaById(partStockVo.getCheckAreaLocationId());
            partStockVo.setCheckAreaLocation((String)warehouseAreas.get("warehouseAreaCode"));
            partStockVo.setRecommendedLocation("A1-01-01");
            partStockVo.setRecommendedLocationId(20000);
            partStockVos.add(partStockVo);
        }

        return partStockVos;
    }


}
