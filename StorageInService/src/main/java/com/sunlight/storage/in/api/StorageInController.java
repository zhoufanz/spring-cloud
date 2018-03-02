package com.sunlight.storage.in.api;

import com.sunlight.platform.query.DynamicSpecifications;
import com.sunlight.platform.query.SearchFilter;
import com.sunlight.platform.exception.RespUtil;
import com.sunlight.platform.exception.ResponseData;
import com.sunlight.platform.exception.ServerException;
import com.sunlight.platform.page.Payload;
import com.sunlight.platform.utils.TransferObject;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundPlanEntity;
import com.sunlight.storage.in.domain.vo.*;
import com.sunlight.storage.in.logic.service.StorageInService;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.*;

/**
 * Created by hasee on 2016/11/21.
 */
@RestController
@RequestMapping("/api/storage/in")
public class StorageInController {

    @Autowired
    private DiscoveryClient client;

    @Autowired
    private StorageInService storageInService;


    @RequestMapping(method = RequestMethod.GET, value = "/plan-orders/init")
    public ResponseData findWarehouseByUserId() {
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), storageInService.findWarehouseByUserId(7235));
    }

    @RequestMapping(method = RequestMethod.GET, value = "/part-check-orders/init")
    public ResponseData partCheckOrdersInit() {
        return findWarehouseByUserId();
    }

    /**
     *2 根据多选条件进行入库计划单查询
     *
     * @param search      多选条件组，根据页面的实际情况由前段拼接查询条件
     * @param
     * @param pageSize
     * @return 根据条件查询出来的 入库计划单
     */
    @RequestMapping(method = RequestMethod.GET, value = "/plan-orders")
    public ResponseData findPartsInBoundPlans(@RequestParam Map<String, Object> search,Integer pageIndex,
                                              Integer pageSize,
                                              String sortField,
                                              Boolean isDesc) {
        pageIndex=pageIndex==null?1:pageIndex;
        pageSize=pageSize==null?50:pageSize;
        sortField=(sortField==null?"id":sortField);
        isDesc=isDesc==null?false:true;

        Map<String, Object> target = new HashMap<>();

        Object code=search.get("code");
        target.put("IN_code",code==null?null:Arrays.asList(code.toString().split("\\|")));

        Object deliveryOrderCode=search.get("deliveryOrderCode");
        target.put("IN_originalRequirementBillCode",deliveryOrderCode==null?null:Arrays.asList(deliveryOrderCode.toString().split("\\|")));

        Object createTimeStart =search.get("createTimeStart");
        if (createTimeStart!=null){
            try {
                target.put("GTE_createTime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeStart.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        Object createTimeEnd =search.get("createTimeEnd");
        if (createTimeEnd!=null){
            try {
                target.put("LTE_createtime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeEnd.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        Object warehouseId =search.get("warehouseId");
        target.put("IN_warehouseId",warehouseId==null?null:Arrays.asList(warehouseId.toString().split("|")));

        target.put("EQ_counterpartcompanycode",search.get("otherCompanyCode"));
        target.put("EQ_counterpartcompanyname",search.get("otherCompanyName"));

        Object status = search.get("status");
        if (status!=null){
            target.put("IN_status",status.toString().split("|"));
        }
        Object type = search.get("type");
        if (type!=null){
            target.put("IN_inboundtype",type.toString().split("|"));
        }

        Collection<SearchFilter> searchFilters = SearchFilter.parseSearchContent(target).values();

        Pageable pageable = SearchFilter.parsePageContent(pageIndex, pageSize, sortField, isDesc? "DESC" : "ASC");
        Specification<PartsInBoundPlanEntity> specification = DynamicSpecifications.bySearchFilter(searchFilters);
        Payload payload = storageInService.findPartsInBoundPlans(specification, pageable);

        List content = payload.getContent();
        List transferList = TransferObject.transferList(payload.getContent(), PartsInBoundPlanJoinVo.class);
        payload.setContent(transferList);
        return RespUtil.make("请求已完成",payload);
    }

    /**
     * 8 /storage/in/part-check-orders 检验单列表
     */
    @RequestMapping(method = RequestMethod.GET, value = "/part-check-orders")
    public ResponseData findPartsInBoundCheckBills(@RequestParam Map<String, Object> search,
                                                   Integer pageIndex,
                                                   Integer pageSize,
                                                   String sortField, boolean isDesc) {
        pageIndex=pageIndex==null?1:pageIndex;
        pageSize=pageSize==null?50:pageSize;

        Collection<SearchFilter> searchFilters = SearchFilter.parseSearchContent(findPartsInBoundCheckBills_convertSearch(search)).values();
        Pageable pageable = SearchFilter.parsePageContent(pageIndex,pageSize, sortField, isDesc ? "DESC" : "ASC");
        Specification<PartsInBoundCheckBillEntity> specification = DynamicSpecifications.bySearchFilter(searchFilters);
        Page<PartsInBoundCheckBillEntity> checkBillEntities = storageInService.findPartsInBoundCheckBills(specification, pageable);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), checkBillEntitiesToPayload(checkBillEntities));
    }
    //checkBillEntities 转换成 payload
    private Map<String,Object> checkBillEntitiesToPayload(Page<PartsInBoundCheckBillEntity> checkBillEntities){
        Map<String,Object> map=new HashMap();
        map.put("pageIndex", checkBillEntities.getNumber());
        map.put("pageSize", checkBillEntities.getSize());

        //content
        List<Map<String, Object>> listMap = new ArrayList<>();
        for (PartsInBoundCheckBillEntity entity: checkBillEntities.getContent()) {
            Map<String, Object> m = new HashMap<>();
            m.put("id", entity.getId());
            m.put("code", entity.getCode());
            m.put("warehouseName", entity.getWarehouseName());
            m.put("partPlanOrderCode", entity.getPartsInBoundPlanId());
            m.put("type", entity.getInboundType());
            m.put("otherCompanyName",entity.getCounterpartCompanyName());
            m.put("remark", entity.getRemark());
            m.put("createTime", entity.getCreateTime());
            listMap.add(m);
        }
        map.put("content", listMap);
        return map;
    }
    //查询条件map转换
    private Map<String, Object> findPartsInBoundCheckBills_convertSearch(Map<String, Object> search) {
        Map<String, Object> target = new HashMap();

        Object codes= search.get("code");
        target.put("IN_code",codes!=null?Arrays.asList(codes.toString().split("\\|")):null);

        Object planOrderCodes =search.get("planOrderCode");
        target.put("IN_partsinboundplanid",planOrderCodes==null?null:Arrays.asList(planOrderCodes.toString().split("\\|")));

        Object createTimeStart =search.get("createTimeStart");
        if (createTimeStart!=null){
            try {
                target.put("GTE_createTime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeStart.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        Object createTimeEnd =search.get("createTimeEnd");
        if (createTimeEnd!=null){
            try {
                target.put("LTE_createTime", new SimpleDateFormat("yyyy-MM-dd").parse(createTimeEnd.toString()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        target.put("EQ_warehouseId", search.get("warehouseid"));
        target.put("LIKE_remark", search.get("remark"));
        return target;
    }

    /**
     *4 待检验入库计划单详情
     * 根据入库计划单Id列表，查询入库计划单待检验清单信息
     * @param id 入库计划单id map
     * @return 入库计划单明细列表 list
     */
    @RequestMapping(method = RequestMethod.GET, value = "/plan-orders/for-check")
    public
    @ResponseBody
    ResponseData findDetailByPartsInBoundPlanId(@RequestParam Map<String, String> id) {
        List<Integer> list = Arrays.asList(id.get("id").split("\\|"))
                .stream().map(Integer::parseInt).collect(Collectors.toList());
        List<PartsInBoundPlanVo> partsInBoundPlanVos = storageInService.findPlansByIds(list);
        List<PlanOrderWithDetailForCheckJoinVo> partsInBoundPlanCheckInfoVos = TransferObject.transferList(partsInBoundPlanVos, PlanOrderWithDetailForCheckJoinVo.class);
        return RespUtil.make("请求已完成",partsInBoundPlanCheckInfoVos);
    }

    /**
     * 6 /storage/in/plan-orders/check 入库计划单检验
     *
     * @param partsInBoundPlanVoList 包含入库单和清单列表
     * @return
     * @throws Exception
     */
    @RequestMapping(method = RequestMethod.PUT, value = "/plan-orders/check")
    public
    @ResponseBody
    ResponseData check(@RequestBody List<PartsInBoundPlanCheckInfoVo> partsInBoundPlanVoList) {
        List<PartsInBoundPlanVo> partsInBoundPlanVos = TransferObject.transferList(partsInBoundPlanVoList, PartsInBoundPlanVo.class);
        try {
            List<Map<String,Object>> checkOrders=new ArrayList<>();
            List<Map<String, Object>> errorPlanOrders = new ArrayList<>();
            boolean result = storageInService.check(partsInBoundPlanVos,checkOrders,errorPlanOrders);
            if (result){
                return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), checkOrders);
            }
            return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), errorPlanOrders);

        } catch (Exception e) {
            throw new ServerException(e.getMessage());
        }
    }

    /*******************************分割线**********************************************/
    /**
     * 3 /plan-orders/{id}/detail 入库计划单详情
     */
    @RequestMapping(method = RequestMethod.GET, value = "/plan-orders/{id}/detail")
    ResponseData getPlanOrderWithDetail(@PathVariable int id) {
        //获取入库计划单
        PartsInBoundPlanVo partsInBoundPlanVo = storageInService.findByPartsInBoundPlanId(id);
        //payload
        Map<String, Map<String, Object>> planOrderWithDetailMap = new HashMap<>();
        //planOrderWithDetail
        Map<String, Object> map = new HashedMap();
        map.put("id", partsInBoundPlanVo.getPlanOrderId());
        map.put("code", partsInBoundPlanVo.getCode());
        map.put("warehouseName", partsInBoundPlanVo.getWarehouseName());
        map.put("otherCompanyName", partsInBoundPlanVo.getCounterpartCompanyName());
        map.put("type", partsInBoundPlanVo.getInboundType());
        map.put("status", partsInBoundPlanVo.getStatus());

        Map<Integer, PartsInBoundPlanDetailVo> planDetailEntities = partsInBoundPlanVo.getPlanDetailEntities();
        //总金额
        Integer amount = 0;
        //清单信息
        List<Map<String, Object>> detailsMapList = new ArrayList<>();
        if (planDetailEntities != null) {
            for (Map.Entry<Integer, PartsInBoundPlanDetailVo> s : planDetailEntities.entrySet()) {
                Map<String, Object> detailsMap = new HashMap<>();
                detailsMap.put("sparePartId", s.getValue().getSparepartId());
                detailsMap.put("sparePartCode", s.getValue().getSparepartCode());
                detailsMap.put("sparePartName", s.getValue().getSparepartName());
                detailsMap.put("planQuantity", s.getValue().getPlannedAmount());
                detailsMap.put("uncheckedQuantity", s.getValue().getInspectedQuantity());
                detailsMap.put("unit", null);
                detailsMap.put("locationId", 1);
                detailsMap.put("location", null);
                detailsMapList.add(detailsMap);
                amount += s.getValue().getPrice().intValue() * s.getValue().getPlannedAmount();
            }
        }

        map.put("amount", amount);
        map.put("createTime", partsInBoundPlanVo.getCreateTime());
        map.put("details", detailsMapList);
        map.put("histories", new ArrayList<Map<String, Object>>());
        map.put("options", new ArrayList<Map<String, Object>>());
        planOrderWithDetailMap.put("planOrderWithDetail", map);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), planOrderWithDetailMap);
    }

    /**
     * 5 /storage/in/plan-orders/check-passed 入库计划单检验通过
     */
    @RequestMapping(method = RequestMethod.PUT, value = "/plan-orders/check-passed")
        ResponseData checkPass(@RequestParam String id) throws Exception {
        List<Integer> ids = TransferObject.transferList(Arrays.asList(id.split("\\|")),Integer.class);
        List<PartsInBoundPlanVo> partsInBoundPlanVos = storageInService.findPlansByIds(ids);

        try {
            List<Map<String,Object>> checkOrders=new ArrayList<>();
            List<Map<String, Object>> errorPlanOrders = new ArrayList<>();
            boolean result = storageInService.check(partsInBoundPlanVos,checkOrders,errorPlanOrders);
            if (result){
                return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), checkOrders);
            }
            return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), errorPlanOrders);

        } catch (Exception e) {
            throw new ServerException(e.getMessage());
        }
    }

    /**
     * 9 /storage/in/part-check-orders/{id}/detail 检验单详情
     */
    @RequestMapping(method = RequestMethod.GET,value = "/part-check-orders/{id}/detail")
    ResponseData getPartCheckOrdersDetail(@PathVariable Integer id){
        PartsInBoundCheckBillVo vo = storageInService.findByPartsInBoundCheckBillId(id);

        Map<String, Object> map = new HashedMap();
        map.put("id", vo.getId());
        map.put("code", vo.getCode());
        map.put("planOrderCode", vo.getPartsInBoundPlanId());
        map.put("planType", vo.getInboundType());
        map.put("otherCompanyName", vo.getCounterpartCompanyName());
        map.put("warehouseName", vo.getWarehouseName());
        map.put("createTime", vo.getCreateTime());
        map.put("remark",vo.getRemark());

        //details
        List<Map<String,Object>> listMap=new ArrayList<>();
        for (PartsInBoundCheckBillDetailVo partsInBoundCheckBillDetailVo : vo.getCheckBillDetailEntities()) {
            Map<String, Object> detailMap = new HashMap<>();
            detailMap.put("sparePartId", partsInBoundCheckBillDetailVo.getSparepartId());
            detailMap.put("sparePartCode", partsInBoundCheckBillDetailVo.getSparepartCode());
            detailMap.put("sparePartName", partsInBoundCheckBillDetailVo.getSparepartName());
            detailMap.put("location", partsInBoundCheckBillDetailVo.getWarehouseAreaId());
            detailMap.put("quantity", partsInBoundCheckBillDetailVo.getInspectedQuantity());
            detailMap.put("remark", partsInBoundCheckBillDetailVo.getRemark());
            listMap.add(detailMap);
        }
        map.put("details",listMap);
        return RespUtil.make(HttpStatus.OK.value(),HttpStatus.OK.getReasonPhrase(),map);
    }
}
