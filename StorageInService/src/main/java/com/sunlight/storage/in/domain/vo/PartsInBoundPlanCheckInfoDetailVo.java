package com.sunlight.storage.in.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 入库计划检验明细
 * Created by hasee on 2016/12/21.
 */
public class PartsInBoundPlanCheckInfoDetailVo {
    private Integer sparePartId;
    private Integer quantity;
    private Integer locationId;
    private String remark;

    public Integer getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(Integer sparePartId) {
        this.sparePartId = sparePartId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @JSONField(name = "warehouseAreaId")
    public Integer getLocationId() {
        return locationId;
    }

    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
