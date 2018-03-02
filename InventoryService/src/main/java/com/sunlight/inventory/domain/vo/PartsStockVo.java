package com.sunlight.inventory.domain.vo;


import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by brad on 16/11/22.
 */
public class PartsStockVo {

    private Integer id;
    private Integer warehouseId;
    private Integer storageCompanyId;
    private Integer storageCompanyType;
    private Integer branchId;
    private Integer warehouseAreaId;
    private Integer warehouseAreaCategoryId;
    private Integer partId;
    private Integer quantity;
    private String remark;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;

    //通过partid 查找备件服务
    //备件编号
    //备件名称
    private String code;
    private String name;

    //通过partid 查看价格服务
    //计划价
    private BigDecimal plannedPrice;

    private Set<PartsStockHistoryVo> historyEntities = new HashSet<>();

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

    public Integer getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(Integer storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    public Integer getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(Integer storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    public Integer getBranchId() {
        return branchId;
    }

    public void setBranchId(Integer branchId) {
        this.branchId = branchId;
    }

    public Integer getWarehouseAreaId() {
        return warehouseAreaId;
    }

    public void setWarehouseAreaId(Integer warehouseAreaId) {
        this.warehouseAreaId = warehouseAreaId;
    }

    public Integer getWarehouseAreaCategoryId() {
        return warehouseAreaCategoryId;
    }

    public void setWarehouseAreaCategoryId(Integer warehouseAreaCategoryId) {
        this.warehouseAreaCategoryId = warehouseAreaCategoryId;
    }

    public Integer getPartId() {
        return partId;
    }

    public void setPartId(Integer partId) {
        this.partId = partId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPlannedPrice() {
        return plannedPrice;
    }

    public void setPlannedPrice(BigDecimal plannedPrice) {
        this.plannedPrice = plannedPrice;
    }

    public Set<PartsStockHistoryVo> getHistoryEntities() {
        return historyEntities;
    }

    public void setHistoryEntities(Set<PartsStockHistoryVo> historyEntities) {
        this.historyEntities = historyEntities;
    }
}
