package com.sunlight.storage.transfer.domain.vo;

/**
 * Created by Administrator on 2016/12/26.
 */
public class PartsShiftOrderDetailVo {
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPartsShiftOrderId() {
        return partsShiftOrderId;
    }

    public void setPartsShiftOrderId(int partsShiftOrderId) {
        this.partsShiftOrderId = partsShiftOrderId;
    }

    public int getSparepartId() {
        return sparepartId;
    }

    public void setSparepartId(int sparepartId) {
        this.sparepartId = sparepartId;
    }

    public String getSparepartCode() {
        return sparepartCode;
    }

    public void setSparepartCode(String sparepartCode) {
        this.sparepartCode = sparepartCode;
    }

    public String getSparepartName() {
        return sparepartName;
    }

    public void setSparepartName(String sparepartName) {
        this.sparepartName = sparepartName;
    }

    public int getOriginalWarehouseAreaId() {
        return originalWarehouseAreaId;
    }

    public void setOriginalWarehouseAreaId(int originalWarehouseAreaId) {
        this.originalWarehouseAreaId = originalWarehouseAreaId;
    }

    public String getOriginalWarehouseAreaCode() {
        return originalWarehouseAreaCode;
    }

    public void setOriginalWarehouseAreaCode(String originalWarehouseAreaCode) {
        this.originalWarehouseAreaCode = originalWarehouseAreaCode;
    }

    public int getOriginalWarehouseAreaCategory() {
        return originalWarehouseAreaCategory;
    }

    public void setOriginalWarehouseAreaCategory(int originalWarehouseAreaCategory) {
        this.originalWarehouseAreaCategory = originalWarehouseAreaCategory;
    }

    public int getDestWarehouseAreaId() {
        return destWarehouseAreaId;
    }

    public void setDestWarehouseAreaId(int destWarehouseAreaId) {
        this.destWarehouseAreaId = destWarehouseAreaId;
    }

    public String getDestWarehouseAreaCode() {
        return destWarehouseAreaCode;
    }

    public void setDestWarehouseAreaCode(String destWarehouseAreaCode) {
        this.destWarehouseAreaCode = destWarehouseAreaCode;
    }

    public int getDestWarehouseAreaCategory() {
        return destWarehouseAreaCategory;
    }

    public void setDestWarehouseAreaCategory(int destWarehouseAreaCategory) {
        this.destWarehouseAreaCategory = destWarehouseAreaCategory;
    }

    public String getBatchNumber() {
        return batchNumber;
    }

    public void setBatchNumber(String batchNumber) {
        this.batchNumber = batchNumber;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
