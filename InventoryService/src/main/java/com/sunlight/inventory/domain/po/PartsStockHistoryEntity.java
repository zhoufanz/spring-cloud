package com.sunlight.inventory.domain.po;


import javax.persistence.*;
import java.util.Date;

/**
 * Created by hasee on 2016/12/26.
 */
@Entity
@Table(name = "parts_stock_history")
public class PartsStockHistoryEntity {
    private Integer id;
    private Integer partsStockId;
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
    @Column(name = "PARTS_STOCK_ID", nullable = false)
    public Integer getPartsStockId() {
        return partsStockId;
    }

    public void setPartsStockId(Integer partsStockId) {
        this.partsStockId = partsStockId;
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
    @Column(name = "STORAGE_COMPANY_ID", nullable = false)
    public Integer getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(Integer storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
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
    @Column(name = "BRANCH_ID", nullable = false)
    public Integer getBranchId() {
        return branchId;
    }

    public void setBranchId(Integer branchId) {
        this.branchId = branchId;
    }

    @Basic
    @Column(name = "WAREHOUSE_AREA_ID", nullable = false)
    public Integer getWarehouseAreaId() {
        return warehouseAreaId;
    }

    public void setWarehouseAreaId(Integer warehouseAreaId) {
        this.warehouseAreaId = warehouseAreaId;
    }

    @Basic
    @Column(name = "WAREHOUSE_AREA_CATEGORY_ID", nullable = true)
    public Integer getWarehouseAreaCategoryId() {
        return warehouseAreaCategoryId;
    }

    public void setWarehouseAreaCategoryId(Integer warehouseAreaCategoryId) {
        this.warehouseAreaCategoryId = warehouseAreaCategoryId;
    }

    @Basic
    @Column(name = "PART_ID", nullable = false)
    public Integer getPartId() {
        return partId;
    }

    public void setPartId(Integer partId) {
        this.partId = partId;
    }

    @Basic
    @Column(name = "QUANTITY", nullable = false)
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "REMARK", nullable = true, length = 200)
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

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PartsStockHistoryEntity{");
        sb.append("id=").append(id);
        sb.append(", partsStockId=").append(partsStockId);
        sb.append(", warehouseId=").append(warehouseId);
        sb.append(", storageCompanyId=").append(storageCompanyId);
        sb.append(", storageCompanyType=").append(storageCompanyType);
        sb.append(", branchId=").append(branchId);
        sb.append(", warehouseAreaId=").append(warehouseAreaId);
        sb.append(", warehouseAreaCategoryId=").append(warehouseAreaCategoryId);
        sb.append(", partId=").append(partId);
        sb.append(", quantity=").append(quantity);
        sb.append(", remark='").append(remark).append('\'');
        sb.append(", creatorId=").append(creatorId);
        sb.append(", creatorName='").append(creatorName).append('\'');
        sb.append(", createTime=").append(createTime);
        sb.append(", modifierId=").append(modifierId);
        sb.append(", modifierName='").append(modifierName).append('\'');
        sb.append(", modifyTime=").append(modifyTime);
        sb.append('}');
        return sb.toString();
    }
}
