package com.sunlight.storage.in.domain.vo;


import java.math.BigDecimal;

/**
 * Created by hasee on 2016/11/22.
 */
public class PartsInBoundPlanDetailVo {

    //入库计划单相关VO字段
    private Integer id;
    private Integer partsInBoundPlanId;
    private Integer sparepartId;
    private String sparepartCode;
    private String sparepartName;
    private Integer plannedAmount;
    private Integer inspectedQuantity;
    private BigDecimal price;
    private String remark;
    private String spareOrderRemark;
    private String overseasPartsFigure;
    private Integer overseasProjectNumber;

    private Integer locationId;//前端定义的库位ID

    //库存服务相关VO字段
    private int quantity;
    private int storageCompanyId;
    private int storageCompanyType;
    private int branchId;
    private int warehouseAreaId;
    private int warehouseId;
    private Integer warehouseAreaCategoryId;
    private int partId;

    //仓储计划价
    private BigDecimal plannedprice;

    public Integer getLocationId() {
        return locationId;
    }

    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPartsInBoundPlanId() {
        return partsInBoundPlanId;
    }

    public void setPartsInBoundPlanId(Integer partsInBoundPlanId) {
        this.partsInBoundPlanId = partsInBoundPlanId;
    }

    public Integer getSparepartId() {
        return sparepartId;
    }

    public void setSparepartId(Integer sparepartId) {
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

    public Integer getPlannedAmount() {
        return plannedAmount;
    }

    public void setPlannedAmount(Integer plannedAmount) {
        this.plannedAmount = plannedAmount;
    }

    public Integer getInspectedQuantity() {
        return inspectedQuantity;
    }

    public void setInspectedQuantity(Integer inspectedQuantity) {
        this.inspectedQuantity = inspectedQuantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getSpareOrderRemark() {
        return spareOrderRemark;
    }

    public void setSpareOrderRemark(String spareOrderRemark) {
        this.spareOrderRemark = spareOrderRemark;
    }

    public String getOverseasPartsFigure() {
        return overseasPartsFigure;
    }

    public void setOverseasPartsFigure(String overseasPartsFigure) {
        this.overseasPartsFigure = overseasPartsFigure;
    }

    public Integer getOverseasProjectNumber() {
        return overseasProjectNumber;
    }

    public void setOverseasProjectNumber(Integer overseasProjectNumber) {
        this.overseasProjectNumber = overseasProjectNumber;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(int storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    public int getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(int storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public int getWarehouseAreaId() {
        return warehouseAreaId;
    }

    public void setWarehouseAreaId(int warehouseAreaId) {
        this.warehouseAreaId = warehouseAreaId;
    }

    public int getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Integer getWarehouseAreaCategoryId() {
        return warehouseAreaCategoryId;
    }

    public void setWarehouseAreaCategoryId(Integer warehouseAreaCategoryId) {
        this.warehouseAreaCategoryId = warehouseAreaCategoryId;
    }

    public int getPartId() {
        return partId;
    }

    public void setPartId(int partId) {
        this.partId = partId;
    }

    public BigDecimal getPlannedprice() {
        return plannedprice;
    }

    public void setPlannedprice(BigDecimal plannedprice) {
        this.plannedprice = plannedprice;
    }
}
