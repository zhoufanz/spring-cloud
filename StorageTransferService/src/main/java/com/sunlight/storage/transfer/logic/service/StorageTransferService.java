package com.sunlight.storage.transfer.logic.service;

import com.sunlight.platform.page.Payload;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderEntity;
import com.sunlight.storage.transfer.domain.vo.*;
import com.sunlight.storage.transfer.domain.vo.recieve.PartsShiftOrderReceive;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Map;

/**
 * Created by hasee on 2016/11/20.
 * 移库服务
 */
public interface StorageTransferService {


    Map<String,String> savePartsShiftOrder(PartsShiftOrderReceive partsShiftOrderVo);

    /**
     * create by zhoufan 2016/11/22
     *
     * @param id 移库单id
     * @return 移库单
     */


    Payload findPartsShiftOrders(Specification<PartsShiftOrderEntity> spec, Pageable pageable);

    Map<String,List<Map<String, String>>> findWarehouseByUserId(int id);

    List<PartStockVo> findByWarehouseId(int id);

    PartsShiftOrderForDetail findByid(int id);
}

