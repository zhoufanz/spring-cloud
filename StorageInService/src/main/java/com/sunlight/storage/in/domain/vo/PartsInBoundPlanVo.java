package com.sunlight.storage.in.domain.vo;


import java.util.List;
import java.util.Date;
import java.util.Map;

/**
 * Created by hasee on 2016/11/22.
 */
public class PartsInBoundPlanVo {
    private Integer id;
    private String code;
    private Integer warehouseId;
    private String warehouseCode;
    private String warehouseName;
    private Integer storageCompanyId;
    private String storageCompanyCode;
    private String storageCompanyName;
    private Integer storageCompanyType;
    private Integer branchId;
    private String branchCode;
    private String branchName;
    private Integer partsSalesCategoryId;
    private Integer counterpartCompanyId;
    private String counterpartCompanyCode;
    private String counterpartCompanyName;
    private Integer sourceId;
    private String sourceCode;
    private Integer inboundType;
    private Integer customerAccountId;
    private Integer originalRequirementBillId;
    private Integer originalRequirementBillType;
    private String originalRequirementBillCode;
    private Integer status;
    private Byte ifWmsInterface;
    private Date arrivalDate;
    private String remark;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;
    private String gpmsPurOrderCode;
    private Integer partsPurchaseOrderTypeId;
    private Date requestedDeliveryTime;
    private String returnContainerNumber;

    private Integer planOrderId;
    private Integer wareHouseAreaId;
    private List<PartsInBoundPlanDetailVo> detais;
    private Map<Integer, PartsInBoundPlanDetailVo> planDetailEntities;


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

    public Integer getPartsSalesCategoryId() {
        return partsSalesCategoryId;
    }

    public void setPartsSalesCategoryId(Integer partsSalesCategoryId) {
        this.partsSalesCategoryId = partsSalesCategoryId;
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

    public Integer getSourceId() {
        return sourceId;
    }

    public void setSourceId(Integer sourceId) {
        this.sourceId = sourceId;
    }

    public String getSourceCode() {
        return sourceCode;
    }

    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode;
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

    public Byte getIfWmsInterface() {
        return ifWmsInterface;
    }

    public void setIfWmsInterface(Byte ifWmsInterface) {
        this.ifWmsInterface = ifWmsInterface;
    }

    public Date getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(Date arrivalDate) {
        this.arrivalDate = arrivalDate;
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

    public String getGpmsPurOrderCode() {
        return gpmsPurOrderCode;
    }

    public void setGpmsPurOrderCode(String gpmsPurOrderCode) {
        this.gpmsPurOrderCode = gpmsPurOrderCode;
    }

    public Integer getPartsPurchaseOrderTypeId() {
        return partsPurchaseOrderTypeId;
    }

    public void setPartsPurchaseOrderTypeId(Integer partsPurchaseOrderTypeId) {
        this.partsPurchaseOrderTypeId = partsPurchaseOrderTypeId;
    }

    public Date getRequestedDeliveryTime() {
        return requestedDeliveryTime;
    }

    public void setRequestedDeliveryTime(Date requestedDeliveryTime) {
        this.requestedDeliveryTime = requestedDeliveryTime;
    }

    public String getReturnContainerNumber() {
        return returnContainerNumber;
    }

    public void setReturnContainerNumber(String returnContainerNumber) {
        this.returnContainerNumber = returnContainerNumber;
    }

    public Integer getPlanOrderId() {
        return planOrderId;
    }

    public void setPlanOrderId(Integer planOrderId) {
        this.planOrderId = planOrderId;
    }

    public Integer getWareHouseAreaId() {
        return wareHouseAreaId;
    }

    public void setWareHouseAreaId(Integer wareHouseAreaId) {
        this.wareHouseAreaId = wareHouseAreaId;
    }

    public List<PartsInBoundPlanDetailVo> getDetais() {
        return detais;
    }

    public void setDetais(List<PartsInBoundPlanDetailVo> detais) {
        this.detais = detais;
    }

    public Map<Integer, PartsInBoundPlanDetailVo> getPlanDetailEntities() {
        return planDetailEntities;
    }

    public void setPlanDetailEntities(Map<Integer, PartsInBoundPlanDetailVo> planDetailEntities) {
        this.planDetailEntities = planDetailEntities;
    }
}
