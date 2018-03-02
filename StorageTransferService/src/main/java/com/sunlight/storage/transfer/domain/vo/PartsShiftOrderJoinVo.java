package com.sunlight.storage.transfer.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;
import com.sunlight.storage.transfer.domain.po.PartsShiftOrderDetailEntity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2016/12/19.
 */
public class PartsShiftOrderJoinVo {
    private int id;
    private String code;
    private String warehouseName;
    private Date createTime;
    private String creator;
    private String remark;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    @JSONField(name="warehouseName")
    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public Date getCreateTime() {
        return createTime;
    }
    @JSONField(name="createTime")
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreator() {
        return creator;
    }
    @JSONField(name="creatorName")
    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}

