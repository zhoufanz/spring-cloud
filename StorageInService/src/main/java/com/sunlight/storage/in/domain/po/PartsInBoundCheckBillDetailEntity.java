package com.sunlight.storage.in.domain.po;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * Created by hasee on 2016/12/26.
 */
@Entity
@Table(name = "parts_in_bound_check_bill_detail")
public class PartsInBoundCheckBillDetailEntity {
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

    @Id
    @Column(name = "ID", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "PARTS_IN_BOUND_CHECK_BILL_ID", nullable = false)
    public Integer getPartsInBoundCheckBillId() {
        return partsInBoundCheckBillId;
    }

    public void setPartsInBoundCheckBillId(Integer partsInBoundCheckBillId) {
        this.partsInBoundCheckBillId = partsInBoundCheckBillId;
    }

    @Basic
    @Column(name = "SPAREPART_ID", nullable = false)
    public Integer getSparepartId() {
        return sparepartId;
    }

    public void setSparepartId(Integer sparepartId) {
        this.sparepartId = sparepartId;
    }

    @Basic
    @Column(name = "SPAREPART_CODE", nullable = false, length = 50)
    public String getSparepartCode() {
        return sparepartCode;
    }

    public void setSparepartCode(String sparepartCode) {
        this.sparepartCode = sparepartCode;
    }

    @Basic
    @Column(name = "SPAREPART_NAME", nullable = false, length = 100)
    public String getSparepartName() {
        return sparepartName;
    }

    public void setSparepartName(String sparepartName) {
        this.sparepartName = sparepartName;
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
    @Column(name = "WAREHOUSE_AREA_CODE", nullable = false, length = 50)
    public String getWarehouseAreaCode() {
        return warehouseAreaCode;
    }

    public void setWarehouseAreaCode(String warehouseAreaCode) {
        this.warehouseAreaCode = warehouseAreaCode;
    }

    @Basic
    @Column(name = "INSPECTED_QUANTITY", nullable = false)
    public Integer getInspectedQuantity() {
        return inspectedQuantity;
    }

    public void setInspectedQuantity(Integer inspectedQuantity) {
        this.inspectedQuantity = inspectedQuantity;
    }

    @Basic
    @Column(name = "SETTLEMENT_PRICE", nullable = false, precision = 4)
    public BigDecimal getSettlementPrice() {
        return settlementPrice;
    }

    public void setSettlementPrice(BigDecimal settlementPrice) {
        this.settlementPrice = settlementPrice;
    }

    @Basic
    @Column(name = "COST_PRICE", nullable = false, precision = 4)
    public BigDecimal getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(BigDecimal costPrice) {
        this.costPrice = costPrice;
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
    @Column(name = "SPARE_ORDER_REMARK", nullable = true, length = 200)
    public String getSpareOrderRemark() {
        return spareOrderRemark;
    }

    public void setSpareOrderRemark(String spareOrderRemark) {
        this.spareOrderRemark = spareOrderRemark;
    }

    @Basic
    @Column(name = "OVERSEAS_PARTS_FIGURE", nullable = true, length = 25)
    public String getOverseasPartsFigure() {
        return overseasPartsFigure;
    }

    public void setOverseasPartsFigure(String overseasPartsFigure) {
        this.overseasPartsFigure = overseasPartsFigure;
    }

    @Basic
    @Column(name = "OVERSEAS_PROJECT_NUMBER", nullable = true)
    public Integer getOverseasProjectNumber() {
        return overseasProjectNumber;
    }

    public void setOverseasProjectNumber(Integer overseasProjectNumber) {
        this.overseasProjectNumber = overseasProjectNumber;
    }

    @Basic
    @Column(name = "ZXIANGI", nullable = true, length = 25)
    public String getZxiangi() {
        return zxiangi;
    }

    public void setZxiangi(String zxiangi) {
        this.zxiangi = zxiangi;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PartsInBoundCheckBillDetailEntity that = (PartsInBoundCheckBillDetailEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (partsInBoundCheckBillId != null ? !partsInBoundCheckBillId.equals(that.partsInBoundCheckBillId) : that.partsInBoundCheckBillId != null)
            return false;
        if (sparepartId != null ? !sparepartId.equals(that.sparepartId) : that.sparepartId != null) return false;
        if (sparepartCode != null ? !sparepartCode.equals(that.sparepartCode) : that.sparepartCode != null)
            return false;
        if (sparepartName != null ? !sparepartName.equals(that.sparepartName) : that.sparepartName != null)
            return false;
        if (warehouseAreaId != null ? !warehouseAreaId.equals(that.warehouseAreaId) : that.warehouseAreaId != null)
            return false;
        if (warehouseAreaCode != null ? !warehouseAreaCode.equals(that.warehouseAreaCode) : that.warehouseAreaCode != null)
            return false;
        if (inspectedQuantity != null ? !inspectedQuantity.equals(that.inspectedQuantity) : that.inspectedQuantity != null)
            return false;
        if (settlementPrice != null ? !settlementPrice.equals(that.settlementPrice) : that.settlementPrice != null)
            return false;
        if (costPrice != null ? !costPrice.equals(that.costPrice) : that.costPrice != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (spareOrderRemark != null ? !spareOrderRemark.equals(that.spareOrderRemark) : that.spareOrderRemark != null)
            return false;
        if (overseasPartsFigure != null ? !overseasPartsFigure.equals(that.overseasPartsFigure) : that.overseasPartsFigure != null)
            return false;
        if (overseasProjectNumber != null ? !overseasProjectNumber.equals(that.overseasProjectNumber) : that.overseasProjectNumber != null)
            return false;
        if (zxiangi != null ? !zxiangi.equals(that.zxiangi) : that.zxiangi != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (partsInBoundCheckBillId != null ? partsInBoundCheckBillId.hashCode() : 0);
        result = 31 * result + (sparepartId != null ? sparepartId.hashCode() : 0);
        result = 31 * result + (sparepartCode != null ? sparepartCode.hashCode() : 0);
        result = 31 * result + (sparepartName != null ? sparepartName.hashCode() : 0);
        result = 31 * result + (warehouseAreaId != null ? warehouseAreaId.hashCode() : 0);
        result = 31 * result + (warehouseAreaCode != null ? warehouseAreaCode.hashCode() : 0);
        result = 31 * result + (inspectedQuantity != null ? inspectedQuantity.hashCode() : 0);
        result = 31 * result + (settlementPrice != null ? settlementPrice.hashCode() : 0);
        result = 31 * result + (costPrice != null ? costPrice.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (spareOrderRemark != null ? spareOrderRemark.hashCode() : 0);
        result = 31 * result + (overseasPartsFigure != null ? overseasPartsFigure.hashCode() : 0);
        result = 31 * result + (overseasProjectNumber != null ? overseasProjectNumber.hashCode() : 0);
        result = 31 * result + (zxiangi != null ? zxiangi.hashCode() : 0);
        return result;
    }
}
