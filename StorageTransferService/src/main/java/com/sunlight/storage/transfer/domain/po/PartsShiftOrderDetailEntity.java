package com.sunlight.storage.transfer.domain.po;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "parts_shift_order_detail")
public class PartsShiftOrderDetailEntity {
    private int id;
    private int partsShiftOrderId;
    private int sparepartId;
    private String sparepartCode;
    private String sparepartName;
    private int originalWarehouseAreaId;
    private String originalWarehouseAreaCode;
    private int originalWarehouseAreaCategory;
    private int destWarehouseAreaId;
    private String destWarehouseAreaCode;
    private int destWarehouseAreaCategory;
    private String batchNumber;
    private int quantity;
    private String remark;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "PARTS_SHIFT_ORDER_ID")
    public int getPartsShiftOrderId() {
        return partsShiftOrderId;
    }

    public void setPartsShiftOrderId(int partsShiftOrderId) {
        this.partsShiftOrderId = partsShiftOrderId;
    }

    @Basic
    @Column(name = "SPAREPART_ID")
    public int getSparepartId() {
        return sparepartId;
    }

    public void setSparepartId(int sparepartId) {
        this.sparepartId = sparepartId;
    }

    @Basic
    @Column(name = "SPAREPART_CODE")
    public String getSparepartCode() {
        return sparepartCode;
    }

    public void setSparepartCode(String sparepartCode) {
        this.sparepartCode = sparepartCode;
    }

    @Basic
    @Column(name = "SPAREPART_NAME")
    public String getSparepartName() {
        return sparepartName;
    }

    public void setSparepartName(String sparepartName) {
        this.sparepartName = sparepartName;
    }

    @Basic
    @Column(name = "ORIGINAL_WAREHOUSE_AREA_ID")
    public int getOriginalWarehouseAreaId() {
        return originalWarehouseAreaId;
    }

    public void setOriginalWarehouseAreaId(int originalWarehouseAreaId) {
        this.originalWarehouseAreaId = originalWarehouseAreaId;
    }

    @Basic
    @Column(name = "ORIGINAL_WAREHOUSE_AREA_CODE")
    public String getOriginalWarehouseAreaCode() {
        return originalWarehouseAreaCode;
    }

    public void setOriginalWarehouseAreaCode(String originalWarehouseAreaCode) {
        this.originalWarehouseAreaCode = originalWarehouseAreaCode;
    }

    @Basic
    @Column(name = "ORIGINAL_WAREHOUSE_AREA_CATEGORY")
    public int getOriginalWarehouseAreaCategory() {
        return originalWarehouseAreaCategory;
    }

    public void setOriginalWarehouseAreaCategory(int originalWarehouseAreaCategory) {
        this.originalWarehouseAreaCategory = originalWarehouseAreaCategory;
    }

    @Basic
    @Column(name = "DEST_WAREHOUSE_AREA_ID")
    public int getDestWarehouseAreaId() {
        return destWarehouseAreaId;
    }

    public void setDestWarehouseAreaId(int destWarehouseAreaId) {
        this.destWarehouseAreaId = destWarehouseAreaId;
    }

    @Basic
    @Column(name = "DEST_WAREHOUSE_AREA_CODE")
    public String getDestWarehouseAreaCode() {
        return destWarehouseAreaCode;
    }

    public void setDestWarehouseAreaCode(String destWarehouseAreaCode) {
        this.destWarehouseAreaCode = destWarehouseAreaCode;
    }

    @Basic
    @Column(name = "DEST_WAREHOUSE_AREA_CATEGORY")
    public int getDestWarehouseAreaCategory() {
        return destWarehouseAreaCategory;
    }

    public void setDestWarehouseAreaCategory(int destWarehouseAreaCategory) {
        this.destWarehouseAreaCategory = destWarehouseAreaCategory;
    }

    @Basic
    @Column(name = "BATCH_NUMBER")
    public String getBatchNumber() {
        return batchNumber;
    }

    public void setBatchNumber(String batchNumber) {
        this.batchNumber = batchNumber;
    }

    @Basic
    @Column(name = "QUANTITY")
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "REMARK")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PartsShiftOrderDetailEntity that = (PartsShiftOrderDetailEntity) o;

        if (id != that.id) return false;
        if (partsShiftOrderId != that.partsShiftOrderId) return false;
        if (sparepartId != that.sparepartId) return false;
        if (originalWarehouseAreaId != that.originalWarehouseAreaId) return false;
        if (originalWarehouseAreaCategory != that.originalWarehouseAreaCategory) return false;
        if (destWarehouseAreaId != that.destWarehouseAreaId) return false;
        if (destWarehouseAreaCategory != that.destWarehouseAreaCategory) return false;
        if (quantity != that.quantity) return false;
        if (sparepartCode != null ? !sparepartCode.equals(that.sparepartCode) : that.sparepartCode != null)
            return false;
        if (sparepartName != null ? !sparepartName.equals(that.sparepartName) : that.sparepartName != null)
            return false;
        if (originalWarehouseAreaCode != null ? !originalWarehouseAreaCode.equals(that.originalWarehouseAreaCode) : that.originalWarehouseAreaCode != null)
            return false;
        if (destWarehouseAreaCode != null ? !destWarehouseAreaCode.equals(that.destWarehouseAreaCode) : that.destWarehouseAreaCode != null)
            return false;
        if (batchNumber != null ? !batchNumber.equals(that.batchNumber) : that.batchNumber != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + partsShiftOrderId;
        result = 31 * result + sparepartId;
        result = 31 * result + (sparepartCode != null ? sparepartCode.hashCode() : 0);
        result = 31 * result + (sparepartName != null ? sparepartName.hashCode() : 0);
        result = 31 * result + originalWarehouseAreaId;
        result = 31 * result + (originalWarehouseAreaCode != null ? originalWarehouseAreaCode.hashCode() : 0);
        result = 31 * result + originalWarehouseAreaCategory;
        result = 31 * result + destWarehouseAreaId;
        result = 31 * result + (destWarehouseAreaCode != null ? destWarehouseAreaCode.hashCode() : 0);
        result = 31 * result + destWarehouseAreaCategory;
        result = 31 * result + (batchNumber != null ? batchNumber.hashCode() : 0);
        result = 31 * result + quantity;
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
