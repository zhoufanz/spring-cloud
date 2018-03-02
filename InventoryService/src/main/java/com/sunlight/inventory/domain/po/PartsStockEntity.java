package com.sunlight.inventory.domain.po;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by hasee on 2016/12/26.
 */
@Entity
@Table(name = "parts_stock")
public class PartsStockEntity {
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
    private Set<PartsStockHistoryEntity> historyEntities = new HashSet<>();

    @OneToMany(targetEntity = PartsStockHistoryEntity.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "PARTS_STOCK_ID")
    public Set<PartsStockHistoryEntity> getHistoryEntities() {
        return historyEntities;
    }

    public void setHistoryEntities(Set<PartsStockHistoryEntity> historyEntities) {
        this.historyEntities = historyEntities;
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

    @Basic
    @Column(name = "ROW_VERSION", nullable = true)
    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowVersion) {
        this.rowVersion = rowVersion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PartsStockEntity that = (PartsStockEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (warehouseId != null ? !warehouseId.equals(that.warehouseId) : that.warehouseId != null) return false;
        if (storageCompanyId != null ? !storageCompanyId.equals(that.storageCompanyId) : that.storageCompanyId != null)
            return false;
        if (storageCompanyType != null ? !storageCompanyType.equals(that.storageCompanyType) : that.storageCompanyType != null)
            return false;
        if (branchId != null ? !branchId.equals(that.branchId) : that.branchId != null) return false;
        if (warehouseAreaId != null ? !warehouseAreaId.equals(that.warehouseAreaId) : that.warehouseAreaId != null)
            return false;
        if (warehouseAreaCategoryId != null ? !warehouseAreaCategoryId.equals(that.warehouseAreaCategoryId) : that.warehouseAreaCategoryId != null)
            return false;
        if (partId != null ? !partId.equals(that.partId) : that.partId != null) return false;
        if (quantity != null ? !quantity.equals(that.quantity) : that.quantity != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (creatorId != null ? !creatorId.equals(that.creatorId) : that.creatorId != null) return false;
        if (creatorName != null ? !creatorName.equals(that.creatorName) : that.creatorName != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (modifierId != null ? !modifierId.equals(that.modifierId) : that.modifierId != null) return false;
        if (modifierName != null ? !modifierName.equals(that.modifierName) : that.modifierName != null) return false;
        if (modifyTime != null ? !modifyTime.equals(that.modifyTime) : that.modifyTime != null) return false;
        if (rowVersion != null ? !rowVersion.equals(that.rowVersion) : that.rowVersion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (warehouseId != null ? warehouseId.hashCode() : 0);
        result = 31 * result + (storageCompanyId != null ? storageCompanyId.hashCode() : 0);
        result = 31 * result + (storageCompanyType != null ? storageCompanyType.hashCode() : 0);
        result = 31 * result + (branchId != null ? branchId.hashCode() : 0);
        result = 31 * result + (warehouseAreaId != null ? warehouseAreaId.hashCode() : 0);
        result = 31 * result + (warehouseAreaCategoryId != null ? warehouseAreaCategoryId.hashCode() : 0);
        result = 31 * result + (partId != null ? partId.hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (creatorId != null ? creatorId.hashCode() : 0);
        result = 31 * result + (creatorName != null ? creatorName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (modifierId != null ? modifierId.hashCode() : 0);
        result = 31 * result + (modifierName != null ? modifierName.hashCode() : 0);
        result = 31 * result + (modifyTime != null ? modifyTime.hashCode() : 0);
        result = 31 * result + (rowVersion != null ? rowVersion.hashCode() : 0);
        return result;
    }
}
