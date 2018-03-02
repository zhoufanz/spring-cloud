package com.sunlight.storage.in.domain.po;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * Created by hasee on 2016/12/26.
 */
@Entity
@Table(name = "parts_in_bound_plan_detail")
public class PartsInBoundPlanDetailEntity {
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
    @Column(name = "PARTS_IN_BOUND_PLAN_ID", nullable = false)
    public Integer getPartsInBoundPlanId() {
        return partsInBoundPlanId;
    }

    public void setPartsInBoundPlanId(Integer partsInBoundPlanId) {
        this.partsInBoundPlanId = partsInBoundPlanId;
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
    @Column(name = "PLANNED_AMOUNT", nullable = false)
    public Integer getPlannedAmount() {
        return plannedAmount;
    }

    public void setPlannedAmount(Integer plannedAmount) {
        this.plannedAmount = plannedAmount;
    }

    @Basic
    @Column(name = "INSPECTED_QUANTITY", nullable = true)
    public Integer getInspectedQuantity() {
        return inspectedQuantity;
    }

    public void setInspectedQuantity(Integer inspectedQuantity) {
        this.inspectedQuantity = inspectedQuantity;
    }

    @Basic
    @Column(name = "PRICE", nullable = false, precision = 4)
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PartsInBoundPlanDetailEntity that = (PartsInBoundPlanDetailEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (partsInBoundPlanId != null ? !partsInBoundPlanId.equals(that.partsInBoundPlanId) : that.partsInBoundPlanId != null)
            return false;
        if (sparepartId != null ? !sparepartId.equals(that.sparepartId) : that.sparepartId != null) return false;
        if (sparepartCode != null ? !sparepartCode.equals(that.sparepartCode) : that.sparepartCode != null)
            return false;
        if (sparepartName != null ? !sparepartName.equals(that.sparepartName) : that.sparepartName != null)
            return false;
        if (plannedAmount != null ? !plannedAmount.equals(that.plannedAmount) : that.plannedAmount != null)
            return false;
        if (inspectedQuantity != null ? !inspectedQuantity.equals(that.inspectedQuantity) : that.inspectedQuantity != null)
            return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (spareOrderRemark != null ? !spareOrderRemark.equals(that.spareOrderRemark) : that.spareOrderRemark != null)
            return false;
        if (overseasPartsFigure != null ? !overseasPartsFigure.equals(that.overseasPartsFigure) : that.overseasPartsFigure != null)
            return false;
        if (overseasProjectNumber != null ? !overseasProjectNumber.equals(that.overseasProjectNumber) : that.overseasProjectNumber != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (partsInBoundPlanId != null ? partsInBoundPlanId.hashCode() : 0);
        result = 31 * result + (sparepartId != null ? sparepartId.hashCode() : 0);
        result = 31 * result + (sparepartCode != null ? sparepartCode.hashCode() : 0);
        result = 31 * result + (sparepartName != null ? sparepartName.hashCode() : 0);
        result = 31 * result + (plannedAmount != null ? plannedAmount.hashCode() : 0);
        result = 31 * result + (inspectedQuantity != null ? inspectedQuantity.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (spareOrderRemark != null ? spareOrderRemark.hashCode() : 0);
        result = 31 * result + (overseasPartsFigure != null ? overseasPartsFigure.hashCode() : 0);
        result = 31 * result + (overseasProjectNumber != null ? overseasProjectNumber.hashCode() : 0);
        return result;
    }
}
