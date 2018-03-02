package com.sunlight.storage.transfer.domain.vo.recieve;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nicholas on 16/12/21.
 */
public class PartsShiftOrderReceive {
    private Integer warehouseId;
    private String remark;
    private Integer orderType;
    private Set<PartsShiftOrderDetailReceive> details=new HashSet<>();

    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }

    public Set<PartsShiftOrderDetailReceive> getDetails() {
        return details;
    }

    public void setDetails(Set<PartsShiftOrderDetailReceive> details) {
        this.details = details;
    }
}
