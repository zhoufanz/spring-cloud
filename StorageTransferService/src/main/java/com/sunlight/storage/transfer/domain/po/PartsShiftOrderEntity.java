package com.sunlight.storage.transfer.domain.po;

import javax.persistence.*;
import java.util.Date;
import java.util.Date;
import java.util.Set;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "parts_shift_order")
public class PartsShiftOrderEntity {
    private int id;
    private String code;
    private int branchId;
    private int warehouseId;
    private String warehouseCode;
    private String warehouseName;
    private int storageCompanyId;
    private String storageCompanyCode;
    private String storageCompanyName;
    private int storageCompanyType;
    private int status;
    private int type;
    private String remark;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Date rowVersion;
    private int orderType;
    private Set<PartsShiftOrderDetailEntity> ShiftOrderDetailEntities;


    @OneToMany(targetEntity = PartsShiftOrderDetailEntity.class)
    @JoinColumn(name = "PARTS_SHIFT_ORDER_ID")
    public Set<PartsShiftOrderDetailEntity> getShiftOrderDetailEntities() {
        return ShiftOrderDetailEntities;
    }

    public void setShiftOrderDetailEntities(Set<PartsShiftOrderDetailEntity> shiftOrderDetailEntities) {
        ShiftOrderDetailEntities = shiftOrderDetailEntities;
    }
    @Basic
    @Column(name="ORDER_TYPE")
    public int getOrderType() {
        return orderType;
    }

    public void setOrderType(int orderType) {
        this.orderType = orderType;
    }

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "CODE")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Basic
    @Column(name = "BRANCH_ID")
    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    @Basic
    @Column(name = "WAREHOUSE_ID")
    public int getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }

    @Basic
    @Column(name = "WAREHOUSE_CODE")
    public String getWarehouseCode() {
        return warehouseCode;
    }

    public void setWarehouseCode(String warehouseCode) {
        this.warehouseCode = warehouseCode;
    }

    @Basic
    @Column(name = "WAREHOUSE_NAME")
    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_ID")
    public int getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(int storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_CODE")
    public String getStorageCompanyCode() {
        return storageCompanyCode;
    }

    public void setStorageCompanyCode(String storageCompanyCode) {
        this.storageCompanyCode = storageCompanyCode;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_NAME")
    public String getStorageCompanyName() {
        return storageCompanyName;
    }

    public void setStorageCompanyName(String storageCompanyName) {
        this.storageCompanyName = storageCompanyName;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_TYPE")
    public int getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(int storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    @Basic
    @Column(name = "STATUS")
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Basic
    @Column(name = "TYPE")
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Basic
    @Column(name = "REMARK")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "CREATOR_ID")
    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    @Basic
    @Column(name = "CREATOR_NAME")
    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    @Basic
    @Column(name = "CREATE_TIME")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "ROW_VERSION")
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

        PartsShiftOrderEntity that = (PartsShiftOrderEntity) o;

        if (id != that.id) return false;
        if (branchId != that.branchId) return false;
        if (warehouseId != that.warehouseId) return false;
        if (storageCompanyId != that.storageCompanyId) return false;
        if (storageCompanyType != that.storageCompanyType) return false;
        if (status != that.status) return false;
        if (type != that.type) return false;
        if (code != null ? !code.equals(that.code) : that.code != null) return false;
        if (warehouseCode != null ? !warehouseCode.equals(that.warehouseCode) : that.warehouseCode != null)
            return false;
        if (warehouseName != null ? !warehouseName.equals(that.warehouseName) : that.warehouseName != null)
            return false;
        if (storageCompanyCode != null ? !storageCompanyCode.equals(that.storageCompanyCode) : that.storageCompanyCode != null)
            return false;
        if (storageCompanyName != null ? !storageCompanyName.equals(that.storageCompanyName) : that.storageCompanyName != null)
            return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (creatorId != null ? !creatorId.equals(that.creatorId) : that.creatorId != null) return false;
        if (creatorName != null ? !creatorName.equals(that.creatorName) : that.creatorName != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (rowVersion != null ? !rowVersion.equals(that.rowVersion) : that.rowVersion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + branchId;
        result = 31 * result + warehouseId;
        result = 31 * result + (warehouseCode != null ? warehouseCode.hashCode() : 0);
        result = 31 * result + (warehouseName != null ? warehouseName.hashCode() : 0);
        result = 31 * result + storageCompanyId;
        result = 31 * result + (storageCompanyCode != null ? storageCompanyCode.hashCode() : 0);
        result = 31 * result + (storageCompanyName != null ? storageCompanyName.hashCode() : 0);
        result = 31 * result + storageCompanyType;
        result = 31 * result + status;
        result = 31 * result + type;
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (creatorId != null ? creatorId.hashCode() : 0);
        result = 31 * result + (creatorName != null ? creatorName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (rowVersion != null ? rowVersion.hashCode() : 0);
        return result;
    }
}
