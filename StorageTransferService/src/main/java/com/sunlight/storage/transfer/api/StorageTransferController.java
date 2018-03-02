package com.sunlight.storage.transfer.api;

import com.sunlight.platform.exception.RespUtil;
import com.sunlight.platform.exception.ResponseData;
import com.sunlight.platform.query.DynamicSpecifications;
import com.sunlight.platform.query.SearchFilter;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderEntity;
import com.sunlight.storage.transfer.domain.vo.*;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderReceive;
import com.sunlight.storage.transfer.logic.service.StorageTransferService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * PartsShiftOrderDetailVo   简写  psod
 * PartsShiftOrderVo         简写  pso
 * Created by hasee on 2016/11/20.
 */
@RestController
@RequestMapping(value = "/api/storage/transfer")
public class StorageTransferController {
    @Autowired
    private StorageTransferService partsShiftOrderDetailService;


    @RequestMapping(method = RequestMethod.GET, value = "/part-shift-orders/init")
    public ResponseData findWarehouseByUserId() {
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), partsShiftOrderDetailService.findWarehouseByUserId(66));
    }

    @RequestMapping(method = RequestMethod.GET, value = "/part-shift-orders/{id}/detail")
    public ResponseData findById(@PathVariable int id) {
        PartsShiftOrderForDetail vo = partsShiftOrderDetailService.findByid(id);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), vo);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/part-shift-orders")
    public ResponseData savePartsShiftOrders(@RequestBody PartsShiftOrderReceive shiftOrderReceive) {
        shiftOrderReceive.setOrderType(1);
        Map<String,String> payload=partsShiftOrderDetailService.savePartsShiftOrder(shiftOrderReceive);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(),payload);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/parts-stock/for-shift")
    public ResponseData findByWarehouseId(@RequestParam int warehouseId) {
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), partsShiftOrderDetailService.findByWarehouseId(warehouseId));
    }

    @RequestMapping(method = RequestMethod.GET, value = "/part-shift-orders")
    public ResponseData findByPartsShiftOrder(@RequestParam Map<String, Object> search) throws ParseException {
        Map<String, Object> maps = new HashMap<>();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        if (null != search.get("code")) {
            String code = (String) search.get("code");
            String[] codes = code.split("\\|");
            maps.put("IN_code", Arrays.asList(codes));
        }
        if (null != search.get("createTimeStart"))
            maps.put("GTE_createTime", simpleDateFormat.parse((String) search.get("createTimeStart")));
        if (null != search.get("createTimeEnd"))
            maps.put("LTE_createTime", simpleDateFormat.parse((String) search.get("createTimeEnd")));

        maps.put("EQ_warehouseid", search.get("warehouseId"));
        maps.put("EQ_shiftOrderDetails.sparepartcode",search.get("sparePart"));
        maps.put("LIKE_shiftOrderDetails.destwarehouseareacode",search.get("location"));

        Collection<SearchFilter> searchFilters = SearchFilter.parseSearchContent(maps).values();
        Specification<PartsShiftOrderEntity> specification = DynamicSpecifications.bySearchFilter(searchFilters);

        int pageIndex = Integer.parseInt(null==search.get("pageIndex")?"1":(String)search.get("pageIndex"));
        int pageSize = Integer.parseInt(null==search.get("pageSize")?"10":(String)search.get("pageIndex"));
        String sortField = null== search.get("sortField")?"id":(String)search.get("sortField");
        String sortType = null==search.get("isDesc")?"ASC":(String)search.get("isDesc");
        Pageable pageable = SearchFilter.parsePageContent(pageIndex, pageSize, sortField, sortType);
        return RespUtil.make(HttpStatus.OK.value(), HttpStatus.OK.getReasonPhrase(), partsShiftOrderDetailService.findPartsShiftOrders(specification, pageable));
    }
}
