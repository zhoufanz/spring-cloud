package com.sunlight.storage.in.domain.po;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by hasee on 2016/12/26.
 */
@Entity
@Table(name = "parts_in_bound_check_bill")
public class PartsInBoundCheckBillEntity {
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
    private Set<PartsInBoundCheckBillDetailEntity> checkBillDetailEntities = new HashSet();

    @OneToMany(targetEntity = PartsInBoundCheckBillDetailEntity.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "PARTS_IN_BOUND_CHECK_BILL_ID")
    public Set<PartsInBoundCheckBillDetailEntity> getCheckBillDetailEntities() {
        return checkBillDetailEntities;
    }

    public void setCheckBillDetailEntities(Set<PartsInBoundCheckBillDetailEntity> checkBillDetailEntities) {
        this.checkBillDetailEntities = checkBillDetailEntities;
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "CODE", nullable = false, length = 50)
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Basic
    @Column(name = "PARTS_IN_BOUND_PLAN_ID", nullable = false)
    public Integer getPartsInBoundPlanId() {
        return partsInBoundPlanId;
    }

    public void setPartsInBoundPlanId(Integer partsInBoundPlanId) {
        this.partsInBoundPlanId = partsInBoundPlanId;
    }

    @Basic
    @Column(name = "WAREHOUSE_ID", nullable = false)
    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    @Basic
    @Column(name = "WAREHOUSE_CODE", nullable = false, length = 50)
    public String getWarehouseCode() {
        return warehouseCode;
    }

    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }

    @Basic
    @Column(name = "WAREHOUSE_NAME", nullable = false, length = 100)
    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_ID", nullable = false)
    public Integer getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(Integer storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_CODE", nullable = false, length = 50)
    public String getStorageCompanyCode() {
        return storageCompanyCode;
    }

    public void setStorageCompanyCode(String storageCompanyCode) {
        this.storageCompanyCode = storageCompanyCode;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_NAME", nullable = false, length = 100)
    public String getStorageCompanyName() {
        return storageCompanyName;
    }

    public void setStorageCompanyName(String storageCompanyName) {
        this.storageCompanyName = storageCompanyName;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_TYPE", nullable = false)
    public Integer getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(Integer storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    @Basic
    @Column(name = "PARTS_SALES_CATEGORY_ID", nullable = false)
    public Integer getPartsSalesCategoryId() {
        return partsSalesCategoryId;
    }

    public void setPartsSalesCategoryId(Integer partsSalesCategoryId) {
        this.partsSalesCategoryId = partsSalesCategoryId;
    }

    @Basic
    @Column(name = "BRANCH_ID", nullable = false)
    public Integer getBranchId() {
        return branchId;
    }

    public void setBranchId(Integer branchId) {
        this.branchId = branchId;
    }

    @Basic
    @Column(name = "BRANCH_CODE", nullable = false, length = 50)
    public String getBranchCode() {
        return branchCode;
    }

    public void setBranchCode(String branchCode) {
        this.branchCode = branchCode;
    }

    @Basic
    @Column(name = "BRANCH_NAME", nullable = false, length = 100)
    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    @Basic
    @Column(name = "COUNTERPART_COMPANY_ID", nullable = false)
    public Integer getCounterpartCompanyId() {
        return counterpartCompanyId;
    }

    public void setCounterpartCompanyId(Integer counterpartCompanyId) {
        this.counterpartCompanyId = counterpartCompanyId;
    }

    @Basic
    @Column(name = "COUNTERPART_COMPANY_CODE", nullable = false, length = 50)
    public String getCounterpartCompanyCode() {
        return counterpartCompanyCode;
    }

    public void setCounterpartCompanyCode(String counterpartCompanyCode) {
        this.counterpartCompanyCode = counterpartCompanyCode;
    }

    @Basic
    @Column(name = "COUNTERPART_COMPANY_NAME", nullable = false, length = 100)
    public String getCounterpartCompanyName() {
        return counterpartCompanyName;
    }

    public void setCounterpartCompanyName(String counterpartCompanyName) {
        this.counterpartCompanyName = counterpartCompanyName;
    }

    @Basic
    @Column(name = "INBOUND_TYPE", nullable = false)
    public Integer getInboundType() {
        return inboundType;
    }

    public void setInboundType(Integer inboundType) {
        this.inboundType = inboundType;
    }

    @Basic
    @Column(name = "CUSTOMER_ACCOUNT_ID", nullable = true)
    public Integer getCustomerAccountId() {
        return customerAccountId;
    }

    public void setCustomerAccountId(Integer customerAccountId) {
        this.customerAccountId = customerAccountId;
    }

    @Basic
    @Column(name = "ORIGINAL_REQUIREMENT_BILL_ID", nullable = false)
    public Integer getOriginalRequirementBillId() {
        return originalRequirementBillId;
    }

    public void setOriginalRequirementBillId(Integer originalRequirementBillId) {
        this.originalRequirementBillId = originalRequirementBillId;
    }

    @Basic
    @Column(name = "ORIGINAL_REQUIREMENT_BILL_TYPE", nullable = false)
    public Integer getOriginalRequirementBillType() {
        return originalRequirementBillType;
    }

    public void setOriginalRequirementBillType(Integer originalRequirementBillType) {
        this.originalRequirementBillType = originalRequirementBillType;
    }

    @Basic
    @Column(name = "ORIGINAL_REQUIREMENT_BILL_CODE", nullable = false, length = 50)
    public String getOriginalRequirementBillCode() {
        return originalRequirementBillCode;
    }

    public void setOriginalRequirementBillCode(String originalRequirementBillCode) {
        this.originalRequirementBillCode = originalRequirementBillCode;
    }

    @Basic
    @Column(name = "STATUS", nullable = false)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "SETTLEMENT_STATUS", nullable = false)
    public Integer getSettlementStatus() {
        return settlementStatus;
    }

    public void setSettlementStatus(Integer settlementStatus) {
        this.settlementStatus = settlementStatus;
    }

    @Basic
    @Column(name = "REMARK", nullable = true, length = 400)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "CREATOR_ID", nullable = true)
    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    @Basic
    @Column(name = "CREATOR_NAME", nullable = true, length = 100)
    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    @Basic
    @Column(name = "CREATE_TIME", nullable = true)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "MODIFIER_ID", nullable = true)
    public Integer getModifierId() {
        return modifierId;
    }

    public void setModifierId(Integer modifierId) {
        this.modifierId = modifierId;
    }

    @Basic
    @Column(name = "MODIFIER_NAME", nullable = true, length = 100)
    public String getModifierName() {
        return modifierName;
    }

    public void setModifierName(String modifierName) {
        this.modifierName = modifierName;
    }

    @Basic
    @Column(name = "MODIFY_TIME", nullable = true)
    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    @Basic
    @Column(name = "ROW_VERSION", nullable = true)
    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowVersion) {
        this.rowVersion = rowVersion;
    }

    @Basic
    @Column(name = "OBJ_ID", nullable = true, length = 25)
    public String getObjId() {
        return objId;
    }

    public void setObjId(String objId) {
        this.objId = objId;
    }

    @Basic
    @Column(name = "GPMS_PUR_ORDER_CODE", nullable = true, length = 50)
    public String getGpmsPurOrderCode() {
        return gpmsPurOrderCode;
    }

    public void setGpmsPurOrderCode(String gpmsPurOrderCode) {
        this.gpmsPurOrderCode = gpmsPurOrderCode;
    }

    @Basic
    @Column(name = "PUR_ORDER_CODE", nullable = true, length = 50)
    public String getPurOrderCode() {
        return purOrderCode;
    }

    public void setPurOrderCode(String purOrderCode) {
        this.purOrderCode = purOrderCode;
    }

    @Basic
    @Column(name = "RETURN_CONTAINER_NUMBER", nullable = true, length = 25)
    public String getReturnContainerNumber() {
        return returnContainerNumber;
    }

    public void setReturnContainerNumber(String returnContainerNumber) {
        this.returnContainerNumber = returnContainerNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PartsInBoundCheckBillEntity that = (PartsInBoundCheckBillEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (code != null ? !code.equals(that.code) : that.code != null) return false;
        if (partsInBoundPlanId != null ? !partsInBoundPlanId.equals(that.partsInBoundPlanId) : that.partsInBoundPlanId != null)
            return false;
        if (warehouseId != null ? !warehouseId.equals(that.warehouseId) : that.warehouseId != null) return false;
        if (warehouseCode != null ? !warehouseCode.equals(that.warehouseCode) : that.warehouseCode != null)
            return false;
        if (warehouseName != null ? !warehouseName.equals(that.warehouseName) : that.warehouseName != null)
            return false;
        if (storageCompanyId != null ? !storageCompanyId.equals(that.storageCompanyId) : that.storageCompanyId != null)
            return false;
        if (storageCompanyCode != null ? !storageCompanyCode.equals(that.storageCompanyCode) : that.storageCompanyCode != null)
            return false;
        if (storageCompanyName != null ? !storageCompanyName.equals(that.storageCompanyName) : that.storageCompanyName != null)
            return false;
        if (storageCompanyType != null ? !storageCompanyType.equals(that.storageCompanyType) : that.storageCompanyType != null)
            return false;
        if (partsSalesCategoryId != null ? !partsSalesCategoryId.equals(that.partsSalesCategoryId) : that.partsSalesCategoryId != null)
            return false;
        if (branchId != null ? !branchId.equals(that.branchId) : that.branchId != null) return false;
        if (branchCode != null ? !branchCode.equals(that.branchCode) : that.branchCode != null) return false;
        if (branchName != null ? !branchName.equals(that.branchName) : that.branchName != null) return false;
        if (counterpartCompanyId != null ? !counterpartCompanyId.equals(that.counterpartCompanyId) : that.counterpartCompanyId != null)
            return false;
        if (counterpartCompanyCode != null ? !counterpartCompanyCode.equals(that.counterpartCompanyCode) : that.counterpartCompanyCode != null)
            return false;
        if (counterpartCompanyName != null ? !counterpartCompanyName.equals(that.counterpartCompanyName) : that.counterpartCompanyName != null)
            return false;
        if (inboundType != null ? !inboundType.equals(that.inboundType) : that.inboundType != null) return false;
        if (customerAccountId != null ? !customerAccountId.equals(that.customerAccountId) : that.customerAccountId != null)
            return false;
        if (originalRequirementBillId != null ? !originalRequirementBillId.equals(that.originalRequirementBillId) : that.originalRequirementBillId != null)
            return false;
        if (originalRequirementBillType != null ? !originalRequirementBillType.equals(that.originalRequirementBillType) : that.originalRequirementBillType != null)
            return false;
        if (originalRequirementBillCode != null ? !originalRequirementBillCode.equals(that.originalRequirementBillCode) : that.originalRequirementBillCode != null)
            return false;
        if (status != null ? !status.equals(that.status) : that.status != null) return false;
        if (settlementStatus != null ? !settlementStatus.equals(that.settlementStatus) : that.settlementStatus != null)
            return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (creatorId != null ? !creatorId.equals(that.creatorId) : that.creatorId != null) return false;
        if (creatorName != null ? !creatorName.equals(that.creatorName) : that.creatorName != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (modifierId != null ? !modifierId.equals(that.modifierId) : that.modifierId != null) return false;
        if (modifierName != null ? !modifierName.equals(that.modifierName) : that.modifierName != null) return false;
        if (modifyTime != null ? !modifyTime.equals(that.modifyTime) : that.modifyTime != null) return false;
        if (rowVersion != null ? !rowVersion.equals(that.rowVersion) : that.rowVersion != null) return false;
        if (objId != null ? !objId.equals(that.objId) : that.objId != null) return false;
        if (gpmsPurOrderCode != null ? !gpmsPurOrderCode.equals(that.gpmsPurOrderCode) : that.gpmsPurOrderCode != null)
            return false;
        if (purOrderCode != null ? !purOrderCode.equals(that.purOrderCode) : that.purOrderCode != null) return false;
        if (returnContainerNumber != null ? !returnContainerNumber.equals(that.returnContainerNumber) : that.returnContainerNumber != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + (partsInBoundPlanId != null ? partsInBoundPlanId.hashCode() : 0);
        result = 31 * result + (warehouseId != null ? warehouseId.hashCode() : 0);
        result = 31 * result + (warehouseCode != null ? warehouseCode.hashCode() : 0);
        result = 31 * result + (warehouseName != null ? warehouseName.hashCode() : 0);
        result = 31 * result + (storageCompanyId != null ? storageCompanyId.hashCode() : 0);
        result = 31 * result + (storageCompanyCode != null ? storageCompanyCode.hashCode() : 0);
        result = 31 * result + (storageCompanyName != null ? storageCompanyName.hashCode() : 0);
        result = 31 * result + (storageCompanyType != null ? storageCompanyType.hashCode() : 0);
        result = 31 * result + (partsSalesCategoryId != null ? partsSalesCategoryId.hashCode() : 0);
        result = 31 * result + (branchId != null ? branchId.hashCode() : 0);
        result = 31 * result + (branchCode != null ? branchCode.hashCode() : 0);
        result = 31 * result + (branchName != null ? branchName.hashCode() : 0);
        result = 31 * result + (counterpartCompanyId != null ? counterpartCompanyId.hashCode() : 0);
        result = 31 * result + (counterpartCompanyCode != null ? counterpartCompanyCode.hashCode() : 0);
        result = 31 * result + (counterpartCompanyName != null ? counterpartCompanyName.hashCode() : 0);
        result = 31 * result + (inboundType != null ? inboundType.hashCode() : 0);
        result = 31 * result + (customerAccountId != null ? customerAccountId.hashCode() : 0);
        result = 31 * result + (originalRequirementBillId != null ? originalRequirementBillId.hashCode() : 0);
        result = 31 * result + (originalRequirementBillType != null ? originalRequirementBillType.hashCode() : 0);
        result = 31 * result + (originalRequirementBillCode != null ? originalRequirementBillCode.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (settlementStatus != null ? settlementStatus.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (creatorId != null ? creatorId.hashCode() : 0);
        result = 31 * result + (creatorName != null ? creatorName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (modifierId != null ? modifierId.hashCode() : 0);
        result = 31 * result + (modifierName != null ? modifierName.hashCode() : 0);
        result = 31 * result + (modifyTime != null ? modifyTime.hashCode() : 0);
        result = 31 * result + (rowVersion != null ? rowVersion.hashCode() : 0);
        result = 31 * result + (objId != null ? objId.hashCode() : 0);
        result = 31 * result + (gpmsPurOrderCode != null ? gpmsPurOrderCode.hashCode() : 0);
        result = 31 * result + (purOrderCode != null ? purOrderCode.hashCode() : 0);
        result = 31 * result + (returnContainerNumber != null ? returnContainerNumber.hashCode() : 0);
        return result;
    }
}
