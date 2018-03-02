package com.sunlight.price.domain.po;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "parts_planned_price")
public class PartsPlannedPriceEntity {
    private int id;
    private int ownerCompanyId;
    private int ownerCompanyType;
    private int partsSalesCategoryId;
    private String partsSalesCategoryName;
    private int sparepartId;
    private BigDecimal plannedPrice;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "OWNER_COMPANY_ID")
    public int getOwnerCompanyId() {
        return ownerCompanyId;
    }

    public void setOwnerCompanyId(int ownerCompanyId) {
        this.ownerCompanyId = ownerCompanyId;
    }

    @Basic
    @Column(name = "OWNER_COMPANY_TYPE")
    public int getOwnerCompanyType() {
        return ownerCompanyType;
    }

    public void setOwnerCompanyType(int ownerCompanyType) {
        this.ownerCompanyType = ownerCompanyType;
    }

    @Basic
    @Column(name = "PARTS_SALES_CATEGORY_ID")
    public int getPartsSalesCategoryId() {
        return partsSalesCategoryId;
    }

    public void setPartsSalesCategoryId(int partsSalesCategoryId) {
        this.partsSalesCategoryId = partsSalesCategoryId;
    }

    @Basic
    @Column(name = "PARTS_SALES_CATEGORY_NAME")
    public String getPartsSalesCategoryName() {
        return partsSalesCategoryName;
    }

    public void setPartsSalesCategoryName(String partsSalesCategoryName) {
        this.partsSalesCategoryName = partsSalesCategoryName;
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
    @Column(name = "PLANNED_PRICE")
    public BigDecimal getPlannedPrice() {
        return plannedPrice;
    }

    public void setPlannedPrice(BigDecimal plannedPrice) {
        this.plannedPrice = plannedPrice;
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
    @Column(name = "MODIFIER_ID")
    public Integer getModifierId() {
        return modifierId;
    }

    public void setModifierId(Integer modifierId) {
        this.modifierId = modifierId;
    }

    @Basic
    @Column(name = "MODIFIER_NAME")
    public String getModifierName() {
        return modifierName;
    }

    public void setModifierName(String modifierName) {
        this.modifierName = modifierName;
    }

    @Basic
    @Column(name = "MODIFY_TIME")
    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
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

        PartsPlannedPriceEntity that = (PartsPlannedPriceEntity) o;

        if (id != that.id) return false;
        if (ownerCompanyId != that.ownerCompanyId) return false;
        if (ownerCompanyType != that.ownerCompanyType) return false;
        if (partsSalesCategoryId != that.partsSalesCategoryId) return false;
        if (sparepartId != that.sparepartId) return false;
        if (partsSalesCategoryName != null ? !partsSalesCategoryName.equals(that.partsSalesCategoryName) : that.partsSalesCategoryName != null)
            return false;
        if (plannedPrice != null ? !plannedPrice.equals(that.plannedPrice) : that.plannedPrice != null) return false;
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
        int result = id;
        result = 31 * result + ownerCompanyId;
        result = 31 * result + ownerCompanyType;
        result = 31 * result + partsSalesCategoryId;
        result = 31 * result + (partsSalesCategoryName != null ? partsSalesCategoryName.hashCode() : 0);
        result = 31 * result + sparepartId;
        result = 31 * result + (plannedPrice != null ? plannedPrice.hashCode() : 0);
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
