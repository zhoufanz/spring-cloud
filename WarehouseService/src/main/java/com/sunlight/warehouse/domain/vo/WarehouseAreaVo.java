package com.sunlight.warehouse.domain.vo;

import java.util.Date;
import java.util.Date;

/**
 * Created by brad on 16/11/24.
 */
public class WarehouseAreaVo {
    private int id;
    private int warehouseId;
    private Integer parentId;
    private String code;
    private Integer topLevelWarehouseAreaId;
    private Integer areaCategoryId;
    private int status;
    private String remark;
    private int areaKind;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getTopLevelWarehouseAreaId() {
        return topLevelWarehouseAreaId;
    }

    public void setTopLevelWarehouseAreaId(Integer topLevelWarehouseAreaId) {
        this.topLevelWarehouseAreaId = topLevelWarehouseAreaId;
    }

    public Integer getAreaCategoryId() {
        return areaCategoryId;
    }

    public void setAreaCategoryId(Integer areaCategoryId) {
        this.areaCategoryId = areaCategoryId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getAreaKind() {
        return areaKind;
    }

    public void setAreaKind(Integer areaKind) {
        this.areaKind = areaKind;
    }

    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getModifierId() {
        return modifierId;
    }

    public void setModifierId(Integer modifierId) {
        this.modifierId = modifierId;
    }

    public String getModifierName() {
        return modifierName;
    }

    public void setModifierName(String modifierName) {
        this.modifierName = modifierName;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowVersion) {
        this.rowVersion = rowVersion;
    }
}
