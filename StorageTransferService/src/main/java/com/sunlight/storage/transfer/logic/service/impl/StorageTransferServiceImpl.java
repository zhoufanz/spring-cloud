package com.sunlight.storage.transfer.logic.service.impl;


import com.alibaba.fastjson.JSON;



import com.sunlight.platform.exception.ServerException;
import com.sunlight.platform.page.Payload;
import com.sunlight.platform.utils.TransferObject;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderDetailEntity;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderEntity;
import com.sunlight.storage.transfer.domain.vo.*;
import com.sunlight.storage.transfer.domain.vo.recieve.LocationReceive;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderDetailReceive;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderReceive;
import com.sunlight.storage.transfer.logic.depend.service.CodeTemplateServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.InventoryServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.SparePartsServiceClient;
import com.sunlight.storage.transfer.logic.depend.service.WarehouseServiceClient;
import com.sunlight.storage.transfer.logic.repository.PartsShiftOrderRepository;
import com.sunlight.storage.transfer.logic.service.StorageTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import org.springframework.data.domain.Pageable;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


import javax.transaction.Transactional;
import java.util.*;


/**
 * Created by hasee on 2016/11/20.
 */
@Service
public class StorageTransferServiceImpl implements StorageTransferService {

    @Autowired
    private PartsShiftOrderRepository partsShiftOrderRepository;
    @Autowired
    private WarehouseServiceClient warehouseServiceClient;
    @Autowired
    private InventoryServiceClient inventoryServiceClient;
    @Autowired
    private CodeTemplateServiceClient codeTemplateServiceClient;
    @Autowired
    private SparePartsServiceClient sparePartsServiceClient;

    @Override
    @Transactional
    public Map<String,String> savePartsShiftOrder(PartsShiftOrderReceive partsShiftOrderVo) {
        Map<String, Object> warehouseMaps = warehouseServiceClient.findWarehouseById(partsShiftOrderVo.getWarehouseId());

        PartsShiftOrderEntity orderEntity = new PartsShiftOrderEntity();
        orderEntity.setWarehouseCode((String) warehouseMaps.get("warehouseCode"));
        orderEntity.setWarehouseId((int) warehouseMaps.get("warehouseId"));
        orderEntity.setWarehouseName((String) warehouseMaps.get("warehouseName"));
        orderEntity.setOrderType(partsShiftOrderVo.getOrderType());
        orderEntity.setCreateTime(new Date());
        orderEntity.setCreatorId(1);
        orderEntity.setCreatorName("Nicholas");
        orderEntity.setStatus(1);
        orderEntity.setType(2);

        if (1 == orderEntity.getOrderType()) {
            //TODO 上架单新增
            String orderCode = codeTemplateServiceClient.findOrderCodeByCode("SJ");
            orderEntity.setCode(orderCode);
        }
        if (2 == partsShiftOrderVo.getOrderType()) {
            //TODO 移库单新增
            String orderCode = codeTemplateServiceClient.findOrderCodeByCode("YK");
            orderEntity.setCode(orderCode);
        }
        Set<PartsShiftOrderDetailEntity> detailEntities = new HashSet<>();
        Iterator<PartsShiftOrderDetailReceive> voIterator = partsShiftOrderVo.getDetails().iterator();
        while (voIterator.hasNext()) {
            PartsShiftOrderDetailEntity orderDetailEntity = new PartsShiftOrderDetailEntity();
            PartsShiftOrderDetailReceive partsShiftOrdersDetailsVo = voIterator.next();
            Map<String, Object> sparePartsMap = sparePartsServiceClient.findSparePartById(partsShiftOrdersDetailsVo.getSparePartId());
            Map<String, Object> warehouseMap = warehouseServiceClient.findWarehouseAreaById(partsShiftOrdersDetailsVo.getCheckAreaLocationId());
            orderDetailEntity.setSparepartCode((String) sparePartsMap.get("sparePartCode"));
            orderDetailEntity.setSparepartId(partsShiftOrdersDetailsVo.getSparePartId());
            orderDetailEntity.setSparepartName((String) sparePartsMap.get("sparePartName"));
            orderDetailEntity.setOriginalWarehouseAreaCategory(Integer.parseInt(warehouseMap.get("warehouseCategoryId").toString()));
            orderDetailEntity.setOriginalWarehouseAreaCode((String) warehouseMap.get("warehouseAreaCode"));
            orderDetailEntity.setOriginalWarehouseAreaId(partsShiftOrdersDetailsVo.getCheckAreaLocationId());
            Iterator<LocationReceive> locationsVoIterator = partsShiftOrdersDetailsVo.getReceiveSet().iterator();
            while (locationsVoIterator.hasNext()) {
                LocationReceive locationsVo = locationsVoIterator.next();
                Map<String, Object> locationMaps = warehouseServiceClient.findWarehouseAreaById(locationsVo.getStorageAreaLocationId());
                orderDetailEntity.setDestWarehouseAreaCode((String) locationMaps.get("warehouseAreaCode"));
                orderDetailEntity.setDestWarehouseAreaId(locationsVo.getStorageAreaLocationId());
                orderDetailEntity.setDestWarehouseAreaCategory(Integer.parseInt(locationMaps.get("warehouseCategoryId").toString()));
                orderDetailEntity.setQuantity(locationsVo.getQuantity());
            }
            detailEntities.add(orderDetailEntity);
        }

        orderEntity.setShiftOrderDetailEntities(detailEntities);

        List<Map<String, Object>> queryCriterias = new ArrayList<>();
        List<Map<String, Object>> sparePartCriterias = new ArrayList<>();

        for (PartsShiftOrderDetailEntity detailEntity : detailEntities) {
            Map<String, Object> criterias = new HashMap<>();

            if (detailEntity instanceof PartsShiftOrderDetailEntity) {

                criterias.put("code", detailEntity.getSparepartCode());
                criterias.put("destWarehouseId", detailEntity.getDestWarehouseAreaId());
                criterias.put("originWarehouseId", detailEntity.getOriginalWarehouseAreaId());
                criterias.put("sparePartId", detailEntity.getSparepartId());
                criterias.put("quantity", detailEntity.getQuantity());
            }

            queryCriterias.add(criterias);
            sparePartCriterias.add(criterias);
        }
        warehouseServiceClient.checkWarehouseArea(JSON.toJSONString(queryCriterias), orderEntity.getWarehouseId());

        inventoryServiceClient.getInventory(JSON.toJSONString(sparePartCriterias), orderEntity.getWarehouseId());

        partsShiftOrderRepository.save(orderEntity);

        Map<String,String> payload=new HashMap<>();
        payload.put("shiftOrderCode",orderEntity.getCode());
        payload.put("shiftOrderId",orderEntity.getId()+"");
        return payload;

    }

    @Override
    @Transactional
    public Payload findPartsShiftOrders(Specification<PartsShiftOrderEntity> spec, Pageable pageable) {

        Page<PartsShiftOrderEntity> orderEntities = partsShiftOrderRepository.findAll(spec, pageable);
        Payload payload = new Payload();
        List<PartsShiftOrderJoinVo> partsShiftOrderVos = TransferObject.transferList(orderEntities.getContent(), PartsShiftOrderJoinVo.class);
        payload.setContent(partsShiftOrderVos);
        payload.setPageIndex(orderEntities.getNumber());
        payload.setPageSize(orderEntities.getSize());
        payload.setTotalElements(orderEntities.getTotalElements());
        payload.setTotalPages(orderEntities.getTotalPages());
        if (null != orderEntities.getSort())
            payload.setSort(orderEntities.getSort().toString().split(":")[1]);
        return payload;
    }

    @Override
    public Map<String, List<Map<String, String>>> findWarehouseByUserId(int id) {
        Map<String,List<Map<String,String>>> payload=new HashMap<>();
        List<Map<String, String>> results = warehouseServiceClient.findWarehouseByUserId(id);
        payload.put("warehouses", results);
        return payload;
    }

    @Override
    public PartsShiftOrderForDetail findByid(int id) {
        PartsShiftOrderEntity partsShiftOrderEntity = partsShiftOrderRepository.findByIdAndOrderType(id);
        if (null == partsShiftOrderEntity) {
            throw new ServerException("您所查询的id不存在,请重新核对!!");
        }
        PartsShiftOrderForDetail partsShiftOrderJoin = TransferObject.transferObject(partsShiftOrderEntity, PartsShiftOrderForDetail.class);
        return partsShiftOrderJoin;
    }


    @Override
    public List<PartStockVo> findByWarehouseId(int warehouseId) {
        int checkAreaId=warehouseServiceClient.findCheckAreaIdByIds(warehouseId);
        List<PartStockVo> partStockVos= inventoryServiceClient.findPartStockVoByCheckAreaId(checkAreaId);
        return partStockVos;
    }

}
