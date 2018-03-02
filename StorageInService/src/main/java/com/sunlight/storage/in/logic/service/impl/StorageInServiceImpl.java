package com.sunlight.storage.in.logic.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.sunlight.platform.exception.ServerException;
import com.sunlight.platform.page.Payload;
import com.sunlight.platform.utils.TransferObject;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillDetailEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanDetailEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import com.sunlight.storage.in.domain.vo.*;
import com.sunlight.storage.in.domain.vo.depend.PartsPlannedPriceVo;
import com.sunlight.storage.in.domain.vo.depend.PartsStockVo;
import com.sunlight.storage.in.domain.vo.depend.SparePartsVO;
import com.sunlight.storage.in.logic.repository.*;
import com.sunlight.storage.in.logic.service.StorageInService;
import com.sunlight.storage.in.logic.service.depend.service.*;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


import java.math.BigDecimal;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;


/**
 * Created by hasee on 2016/11/21.
 */
@Service
public class StorageInServiceImpl implements StorageInService {
    @Autowired
    private InventoryProviderServiceClient inventoryProviderServiceClient;
    @Autowired
    private SparePartsProviderServiceClient sparePartsProviderServiceClient;
    @Autowired
    private PriceProviderServiceClient priceProviderServiceClient;
    @Autowired
    private WarehouseProviderServiceClient warehouseProviderServiceClient;
    @Autowired
    private PartsInBoundPlanRepository partsInBoundPlanDao;
    @Autowired
    private PartsInBoundCheckBillRepository partsInBoundCheckBillDao;
    @Autowired
    private PartsInBoundCheckBillDetailRepository partsInBoundCheckBillDetailDao;


    @Override
    public Payload findPartsInBoundPlans(Specification<PartsInBoundPlanEntity> spec, Pageable pageable) {
        Page<PartsInBoundPlanEntity> partsInBoundPlanEntities = partsInBoundPlanDao.findAll(spec, pageable);
        if (partsInBoundPlanEntities == null) {
            throw new ServerException("没有查询到任何入库计划单");
        }
        List<PartsInBoundPlanJoinVo> partsInBoundPlanVos = TransferObject.transferList(partsInBoundPlanEntities.getContent(), PartsInBoundPlanJoinVo.class);
        Payload payload = new Payload();
        payload.setContent(partsInBoundPlanVos);
        payload.setPageIndex(partsInBoundPlanEntities.getNumber());
        payload.setPageSize(partsInBoundPlanEntities.getSize());
        payload.setTotalPages(partsInBoundPlanEntities.getTotalPages());
        payload.setTotalElements(partsInBoundPlanEntities.getTotalElements());
        return payload;
    }

    //入库检查单多条件分页查询
    @Override
    public Page<PartsInBoundCheckBillEntity> findPartsInBoundCheckBills(Specification<PartsInBoundCheckBillEntity> spec, Pageable pageable) {
        return partsInBoundCheckBillDao.findAll(spec, pageable);
    }

    /**
     * @param id 配件入库检验单id
     * @return 配件入库检验单
     */
    @Override
    public PartsInBoundCheckBillVo findByPartsInBoundCheckBillId(int id) {
        return TransferObject.transferObject(partsInBoundCheckBillDao.findById(id), PartsInBoundCheckBillVo.class);
    }

    /**
     * @param id 配件入库计划单id
     * @return 配件入库计划单
     */
    @Override
    public PartsInBoundPlanVo findByPartsInBoundPlanId(int id) {
        return TransferObject.transferObject(partsInBoundPlanDao.findById(id), PartsInBoundPlanVo.class);
    }

    @Override
    public List<PartsInBoundPlanVo> findPlansByIds(List<Integer> ids) {
        List<PartsInBoundPlanEntity> partsInBoundPlanEntityList = partsInBoundPlanDao.findByIds(ids);
        return JSON.parseObject(JSON.toJSONString(partsInBoundPlanEntityList), new TypeReference<List<PartsInBoundPlanVo>>() {
        });
    }

    /**
     * 批量处理入库计划单
     *
     * @param partsInBoundPlanVos
     * @return
     * @throws Exception
     */
    @Override
    public boolean check(List<PartsInBoundPlanVo> partsInBoundPlanVos,List<Map<String,Object>> checkOrders,List<Map<String,Object>> errorPlanOrders){

        Boolean b=true;

        //根据传入的入库计划单ID,查询数据库获取相应入库计划和计划清单信息
        List<PartsInBoundPlanEntity> entityList = getPartsInBoundPlanEntities(partsInBoundPlanVos);

        //入库计划单map
        Map<Integer, PartsInBoundPlanEntity> partsInBoundPlanMap = entityList.stream().collect(Collectors.toMap(PartsInBoundPlanEntity::getId,
                Function.identity()));

        //仓库与库位信息
        Map<Integer, Integer> warehouseAreaList = getWarehouseAreaList(entityList);

        //库存查询参数
        List<PartsStockVo> partsStockParams = new ArrayList<>();
        //获取备件Id list
        List<Integer> sparePartIdList = getSparePartList(entityList, warehouseAreaList, partsStockParams);


        //获取备件信息map
        JSONObject sparePartsList = sparePartsProviderServiceClient.getSparePartsList(sparePartIdList);
        if (sparePartsList == null||sparePartsList.size()==0) {
            throw new ServerException("没有获取备件信息");
        }
        Map<Integer, SparePartsVO> sparePartMap = JSON.parseObject(sparePartsList.toJSONString(), new TypeReference<Map<Integer, SparePartsVO>>() {
        });
        //获取计划价map
        JSONObject priceList = priceProviderServiceClient.getPriceList(sparePartIdList);
        if (priceList == null||priceList.size()==0) {
            throw new ServerException("没有获取价格信息");
        }
        Map<Integer, PartsPlannedPriceVo> priceMap = JSON.parseObject(priceList.toJSONString(), new TypeReference<Map<Integer, PartsPlannedPriceVo>>() {
        });

        //获取库存map
        JSONObject inventoryList = inventoryProviderServiceClient.getInventoryList(partsStockParams);
        if (inventoryList == null||inventoryList.size()==0) {
            throw new ServerException("没有库存信息");
        }
        Map<String, PartsStockVo> inventoryMap = JSON.parseObject(inventoryList.toJSONString(), new TypeReference<Map<String, PartsStockVo>>() {
        });

        for (int i = 0; i < partsInBoundPlanVos.size(); i++) {
            int allDone = 1;
            List<PartsInBoundCheckBillDetailEntity> checkBillDetailEntityList = new ArrayList<>();

            PartsInBoundPlanVo inBoundPlanVo = partsInBoundPlanVos.get(i);
            PartsInBoundPlanEntity planEntity = partsInBoundPlanMap.get(inBoundPlanVo.getPlanOrderId());

            try {
                allDone = checkInBoundPlanDeppptail(warehouseAreaList, sparePartMap, priceMap,
                        inventoryMap, checkBillDetailEntityList, inBoundPlanVo, planEntity);

                PartsInBoundCheckBillEntity partsInBoundCheckBillEntity=new PartsInBoundCheckBillEntity();
                updateIntoDB(inventoryMap, allDone, checkBillDetailEntityList, planEntity,partsInBoundCheckBillEntity);

                //没有异常表示入库检查单生成成功
                Map<String, Object> checkOrder = new HashedMap();
                checkOrder.put("id", partsInBoundCheckBillEntity.getId());
                checkOrder.put("code", partsInBoundCheckBillEntity.getCode());
                checkOrders.add(checkOrder);
            }catch (Exception e){
                //异常表示入库检查单生成失败
                Map<String, Object> errorPlanOrder = new HashMap<>();
                errorPlanOrder.put("planOrderId", inBoundPlanVo.getId());
                errorPlanOrder.put("message", e.getMessage());
                errorPlanOrders.add(errorPlanOrder);
                b=false;
            }
        }

        return b;
    }


    /**
     * 对入库计划清单进行检验
     *
     * @param warehouseAreaList
     * @param sparePartMap
     * @param priceMap
     * @param inventoryMap
     * @param
     * @param checkBillDetailEntityList
     * @param inBoundPlanVo
     * @param planEntity
     * @return
     */
    private int checkInBoundPlanDeppptail(Map<Integer, Integer> warehouseAreaList, Map<Integer, SparePartsVO> sparePartMap, Map<Integer, PartsPlannedPriceVo> priceMap, Map<String, PartsStockVo> inventoryMap, List<PartsInBoundCheckBillDetailEntity> checkBillDetailEntityList, PartsInBoundPlanVo inBoundPlanVo, PartsInBoundPlanEntity planEntity) {
        int allDone = 1;

        for (Map.Entry<Integer, PartsInBoundPlanDetailVo> entry : inBoundPlanVo.getPlanDetailEntities().entrySet()) {

            PartsInBoundPlanDetailVo detailVo = entry.getValue();
            PartsInBoundPlanDetailEntity detailEntity = TransferObject.transferObject(detailVo,PartsInBoundPlanDetailEntity.class);

            //检查Step1: 库位存在于入库计划单仓库之下
            if (!warehouseAreaList.containsValue(detailVo.getWarehouseAreaId())) {
                throw new ServerException("入库计划清单库位不存在主单仓库下");
            }

            //检查Step2: 备件存在于入库计划清单之下
            if (!sparePartMap.containsKey(detailVo.getSparepartId())) {
                throw new ServerException("备件不存在于计划清单之下");
            }

            //检查Step3: 入库计划清单中计划检验量大于待检验量
            if (detailEntity.getPlannedAmount() < detailVo.getInspectedQuantity()) {
                throw new ServerException("计划量小于检验量,无法进行当前操作");
            } else {
                //根据以上信息, 生成库存VO, 生成检验清单PO
                PartsStockVo stockVo = inventoryMap.get(
                        inBoundPlanVo.getWarehouseId() + "-" + detailVo.getWarehouseAreaId() + "-" + detailEntity.getSparepartId()
                );
                stockVo.setQuantity(stockVo.getQuantity() + detailEntity.getInspectedQuantity());
                detailEntity.setPlannedAmount(detailEntity.getPlannedAmount() - detailEntity.getInspectedQuantity());

                if (detailEntity.getPlannedAmount() != 0) {//只要入库计划单下有任一清单待检验量不为0,入库计划单状态不能变为完成
                    allDone = 0;
                }

                PartsInBoundCheckBillDetailEntity checkBillDetailPO = generateCheckBillDetailPO(detailEntity, priceMap);
                if (checkBillDetailPO != null) {
                    checkBillDetailEntityList.add(checkBillDetailPO);
                }
            }
            //暂时通过一条验证就break
            break;

        }
        return allDone;
    }


    private boolean updateIntoDB(Map<String, PartsStockVo> inventoryMap, int allDone,
                                 List<PartsInBoundCheckBillDetailEntity> checkBillDetailEntityList,
                                 PartsInBoundPlanEntity planEntity,
                                 PartsInBoundCheckBillEntity partsInBoundCheckBillEntity) {
        PartsInBoundCheckBillEntity checkBillEntity = new PartsInBoundCheckBillEntity();
        BeanUtils.copyProperties(planEntity, checkBillEntity);
        checkBillEntity.setStatus(allDone);
        checkBillEntity.setCreateTime(new Date());
        checkBillEntity.setRowVersion(new Date());
        checkBillEntity.setId(0);

        inventoryProviderServiceClient.saveInventoryList(new ArrayList<>(inventoryMap.values()));
        partsInBoundCheckBillEntity= partsInBoundCheckBillDao.save(checkBillEntity);
        partsInBoundCheckBillDetailDao.save(checkBillDetailEntityList);

        return true;
    }

    private List<PartsInBoundPlanEntity> getPartsInBoundPlanEntities(List<PartsInBoundPlanVo> partsInBoundPlanVos) {
        List<Integer> ids = partsInBoundPlanVos.stream().map(PartsInBoundPlanVo::getId).collect(Collectors.toList());

        return partsInBoundPlanDao.findByIds(ids);
    }

    /**
     * @param entityList        入库计划单集合
     * @param warehouseAreaList 仓库id->推荐库位id
     * @param partsStockParams  后续批量查询库存的参数集合
     * @return 备件id集合
     */
    private List<Integer> getSparePartList(List<PartsInBoundPlanEntity> entityList, Map<Integer, Integer> warehouseAreaList, List<PartsStockVo> partsStockParams) {
        List<Integer> sparePartIdList = new ArrayList<>();
        for (PartsInBoundPlanEntity entity : entityList) {
            for (PartsInBoundPlanDetailEntity detailEntity : entity.getPlanDetailEntities().values()) {

                if (!sparePartIdList.contains(detailEntity.getSparepartId())) {
                    sparePartIdList.add(detailEntity.getSparepartId());
                }
                PartsStockVo vo = new PartsStockVo();
                vo.setWarehouseId(entity.getWarehouseId());
                vo.setWarehouseAreaId(warehouseAreaList.get(entity.getWarehouseId()));
                vo.setPartId(detailEntity.getSparepartId());

                partsStockParams.add(vo);
            }
        }
        return sparePartIdList;
    }


    /**
     * 根据warehouseId快速定位库位
     *
     * @param entityList
     * @return
     */
    private Map<Integer, Integer> getWarehouseAreaList(List<PartsInBoundPlanEntity> entityList) {
        List<Integer> warehouseIdList = entityList.stream().
                map(PartsInBoundPlanEntity::getWarehouseId).
                collect(Collectors.toList());
        JSONObject jsonObject = warehouseProviderServiceClient.quickLocateWarehouseAreaList(warehouseIdList);
        if (jsonObject == null||jsonObject.size()==0) {
            throw new ServerException("没有获取库位信息");
        }
        Map<Integer, Integer> warehouseAreaMap = JSON.parseObject(jsonObject.toJSONString(), new TypeReference<Map<Integer, Integer>>() {
        });
        return warehouseAreaMap;
    }

    @Override
    public Map<String, List<Map<Integer, String>>> findWarehouseByUserId(int id) {
        Map<String, List<Map<Integer, String>>> payload = new HashMap<>();
        String results = warehouseProviderServiceClient.findWarehouseByUserId(id);
        List<Map<Integer, String>> mapList = (List<Map<Integer, String>>) JSON.parse(results);
        payload.put("warehouses", mapList);
        return payload;
    }


    /**
     * 根据入库计划清单构造入库检验清单
     *
     * @param planDetailEntity
     * @param priceMap
     * @return
     */
    private PartsInBoundCheckBillDetailEntity generateCheckBillDetailPO(PartsInBoundPlanDetailEntity planDetailEntity, Map<Integer, PartsPlannedPriceVo> priceMap) {
        PartsInBoundCheckBillDetailEntity checkBillDetailPO = new PartsInBoundCheckBillDetailEntity();
        BeanUtils.copyProperties(planDetailEntity, checkBillDetailPO);
        BigDecimal costPrice = priceMap.get(planDetailEntity.getSparepartId()).getPlannedPrice();
        checkBillDetailPO.setCostPrice(costPrice);
        checkBillDetailPO.setId(0);
        return checkBillDetailPO;
    }
}