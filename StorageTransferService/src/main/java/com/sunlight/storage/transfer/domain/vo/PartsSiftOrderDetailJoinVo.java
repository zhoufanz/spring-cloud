package com.sunlight.storage.transfer.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * Created by Administrator on 2016/12/19.
 */
public class PartsSiftOrderDetailJoinVo {
    private int sparePartId;
    private String sparePartCode;
    private String sparePartName;
    private String location;
    private String quantity;
    private String remark;

    public int getSparePartId() {
        return sparePartId;
    }

    @JSONField(name="sparepartid")
    public void setSparePartId(int sparePartId) {
        this.sparePartId = sparePartId;
    }

    public String getSparePartCode() {
        return sparePartCode;
    }
    @JSONField(name="sparepartcode")
    public void setSparePartCode(String sparePartCode) {
        this.sparePartCode = sparePartCode;
    }
    @JSONField(name="sparepartname")
    public String getSparePartName() {
        return sparePartName;
    }

    public void setSparePartName(String sparePartName) {
        this.sparePartName = sparePartName;
    }

    public String getLocation() {
        return location;
    }

    @JSONField(name = "originalwarehouseareacode")
    public void setLocation(String location) {
        this.location = location;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}

