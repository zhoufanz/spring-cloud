package com.sunlight.storage.in.domain.vo;

import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillDetailEntity;
import com.sunlight.storage.in.domain.po.PartsInBoundCheckBillEntity;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by hasee on 2016/11/22.
 */
public class PartsInBoundCheckBillVo {
    private Integer id;
    private String code;
    private Integer partsInBoundPlanId;
    private Integer warehouseId;
    private String warehouseCode;
    private String warehouseName;
    private Integer storageCompanyId;
    private String storageCompanyCode;
    private String storageCompanyName;
    private Integer storageCompanyType;
    private Integer partsSalesCategoryId;
    private Integer branchId;
    private String branchCode;
    private String branchName;
    private Integer counterpartCompanyId;
    private String counterpartCompanyCode;
    private String counterpartCompanyName;
    private Integer inboundType;
    private Integer customerAccountId;
    private Integer originalRequirementBillId;
    private Integer originalRequirementBillType;
    private String originalRequirementBillCode;
    private Integer status;
    private Integer settlementStatus;
    private String remark;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;
    private String objId;
    private String gpmsPurOrderCode;
    private String purOrderCode;
    private String returnContainerNumber;
    private Set<PartsInBoundCheckBillDetailVo> checkBillDetailEntities = new HashSet();

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

    public Integer getPartsInBoundPlanId() {
        return partsInBoundPlanId;
    }

    public void setPartsInBoundPlanId(Integer partsInBoundPlanId) {
        this.partsInBoundPlanId = partsInBoundPlanId;
    }

    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getWarehouseCode() {
        return warehouseCode;
    }

    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public Integer getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(Integer storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    public String getStorageCompanyCode() {
        return storageCompanyCode;
    }

    public void setStorageCompanyCode(String storageCompanyCode) {
        this.storageCompanyCode = storageCompanyCode;
    }

    public String getStorageCompanyName() {
        return storageCompanyName;
    }

    public void setStorageCompanyName(String storageCompanyName) {
        this.storageCompanyName = storageCompanyName;
    }

    public Integer getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(Integer storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    public Integer getPartsSalesCategoryId() {
        return partsSalesCategoryId;
    }

    public void setPartsSalesCategoryId(Integer partsSalesCategoryId) {
        this.partsSalesCategoryId = partsSalesCategoryId;
    }

    public Integer getBranchId() {
        return branchId;
    }

    public void setBranchId(Integer branchId) {
        this.branchId = branchId;
    }

    public String getBranchCode() {
        return branchCode;
    }

    public void setBranchCode(String branchCode) {
        this.branchCode = branchCode;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public Integer getCounterpartCompanyId() {
        return counterpartCompanyId;
    }

    public void setCounterpartCompanyId(Integer counterpartCompanyId) {
        this.counterpartCompanyId = counterpartCompanyId;
    }

    public String getCounterpartCompanyCode() {
        return counterpartCompanyCode;
    }

    public void setCounterpartCompanyCode(String counterpartCompanyCode) {
        this.counterpartCompanyCode = counterpartCompanyCode;
    }

    public String getCounterpartCompanyName() {
        return counterpartCompanyName;
    }

    public void setCounterpartCompanyName(String counterpartCompanyName) {
        this.counterpartCompanyName = counterpartCompanyName;
    }

    public Integer getInboundType() {
        return inboundType;
    }

    public void setInboundType(Integer inboundType) {
        this.inboundType = inboundType;
    }

    public Integer getCustomerAccountId() {
        return customerAccountId;
    }

    public void setCustomerAccountId(Integer customerAccountId) {
        this.customerAccountId = customerAccountId;
    }

    public Integer getOriginalRequirementBillId() {
        return originalRequirementBillId;
    }

    public void setOriginalRequirementBillId(Integer originalRequirementBillId) {
        this.originalRequirementBillId = originalRequirementBillId;
    }

    public Integer getOriginalRequirementBillType() {
        return originalRequirementBillType;
    }

    public void setOriginalRequirementBillType(Integer originalRequirementBillType) {
        this.originalRequirementBillType = originalRequirementBillType;
    }

    public String getOriginalRequirementBillCode() {
        return originalRequirementBillCode;
    }

    public void setOriginalRequirementBillCode(String originalRequirementBillCode) {
        this.originalRequirementBillCode = originalRequirementBillCode;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSettlementStatus() {
        return settlementStatus;
    }

    public void setSettlementStatus(Integer settlementStatus) {
        this.settlementStatus = settlementStatus;
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

    public String getObjId() {
        return objId;
    }

    public void setObjId(String objId) {
        this.objId = objId;
    }

    public String getGpmsPurOrderCode() {
        return gpmsPurOrderCode;
    }

    public void setGpmsPurOrderCode(String gpmsPurOrderCode) {
        this.gpmsPurOrderCode = gpmsPurOrderCode;
    }

    public String getPurOrderCode() {
        return purOrderCode;
    }

    public void setPurOrderCode(String purOrderCode) {
        this.purOrderCode = purOrderCode;
    }

    public String getReturnContainerNumber() {
        return returnContainerNumber;
    }

    public void setReturnContainerNumber(String returnContainerNumber) {
        this.returnContainerNumber = returnContainerNumber;
    }

    public Set<PartsInBoundCheckBillDetailVo> getCheckBillDetailEntities() {
        return checkBillDetailEntities;
    }

    public void setCheckBillDetailEntities(Set<PartsInBoundCheckBillDetailVo> checkBillDetailEntities) {
        this.checkBillDetailEntities = checkBillDetailEntities;
    }
}
