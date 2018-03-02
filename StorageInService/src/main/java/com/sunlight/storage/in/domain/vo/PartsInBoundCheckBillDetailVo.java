package com.sunlight.storage.in.domain.vo;


import java.math.BigDecimal;

/**
 * Created by hasee on 2016/11/22.
 */
public class PartsInBoundCheckBillDetailVo {
    private Integer id;
    private Integer partsInBoundCheckBillId;
    private Integer sparepartId;
    private String sparepartCode;
    private String sparepartName;
    private Integer warehouseAreaId;
    private String warehouseAreaCode;
    private Integer inspectedQuantity;
    private BigDecimal settlementPrice;
    private BigDecimal costPrice;
    private String remark;
    private String spareOrderRemark;
    private String overseasPartsFigure;
    private Integer overseasProjectNumber;
    private String zxiangi;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPartsInBoundCheckBillId() {
        return partsInBoundCheckBillId;
    }

    public void setPartsInBoundCheckBillId(Integer partsInBoundCheckBillId) {
        this.partsInBoundCheckBillId = partsInBoundCheckBillId;
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

    public Integer getWarehouseAreaId() {
        return warehouseAreaId;
    }

    public void setWarehouseAreaId(Integer warehouseAreaId) {
        this.warehouseAreaId = warehouseAreaId;
    }

    public String getWarehouseAreaCode() {
        return warehouseAreaCode;
    }

    public void setWarehouseAreaCode(String warehouseAreaCode) {
        this.warehouseAreaCode = warehouseAreaCode;
    }

    public Integer getInspectedQuantity() {
        return inspectedQuantity;
    }

    public void setInspectedQuantity(Integer inspectedQuantity) {
        this.inspectedQuantity = inspectedQuantity;
    }

    public BigDecimal getSettlementPrice() {
        return settlementPrice;
    }

    public void setSettlementPrice(BigDecimal settlementPrice) {
        this.settlementPrice = settlementPrice;
    }

    public BigDecimal getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(BigDecimal costPrice) {
        this.costPrice = costPrice;
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

    public String getZxiangi() {
        return zxiangi;
    }

    public void setZxiangi(String zxiangi) {
        this.zxiangi = zxiangi;
    }
}
