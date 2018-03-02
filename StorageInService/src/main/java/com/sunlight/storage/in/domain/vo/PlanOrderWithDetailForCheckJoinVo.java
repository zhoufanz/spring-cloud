package com.sunlight.storage.in.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by hasee on 2016/12/21.
 */
public class PlanOrderWithDetailForCheckJoinVo {
    private Integer id;
    private String code;
    private Integer type;
    private Integer warehouseId;
    private String warehouseName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    @JSONField(name = "warehouseName")
    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public List<PlanOrderDetailJoinVo> getDetails() {
        return details;
    }

    @JSONField(name = "detais")
    public void setDetails(List<PlanOrderDetailJoinVo> details) {
        this.details = details;
    }

    private List<PlanOrderDetailJoinVo> details;
}
