package com.sunlight.storage.in.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * Created by hasee on 2016/12/21.
 */
public class PlanOrderDetailJoinVo {
    private Integer sparePartId;
    private String sparePartCode;
    private String sparePartName;
    private Integer planQuantity;
    private Integer uncheckedQuantity;
    private String unit;
    private Integer locationId;
    private String location;

    public Integer getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(Integer sparePartId) {
        this.sparePartId = sparePartId;
    }

    public String getSparePartCode() {
        return sparePartCode;
    }

    @JSONField(name = "sparepartCode")
    public void setSparePartCode(String sparePartCode) {
        this.sparePartCode = sparePartCode;
    }

    public String getSparePartName() {
        return sparePartName;
    }

    @JSONField(name = "sparepartName")
    public void setSparePartName(String sparePartName) {
        this.sparePartName = sparePartName;
    }

    public Integer getPlanQuantity() {
        return planQuantity;
    }

    @JSONField(name = "quantity")
    public void setPlanQuantity(Integer planQuantity) {
        this.planQuantity = planQuantity;
    }

    public Integer getUncheckedQuantity() {
        return uncheckedQuantity;
    }

    public void setUncheckedQuantity(Integer uncheckedQuantity) {
        this.uncheckedQuantity = uncheckedQuantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getLocationId() {
        return locationId;
    }

    @JSONField(name = "warehouseAreaId")
    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
