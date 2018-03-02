package com.sunlight.price.domain.vo;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Date;

/**
 * Created by hasee on 2016/11/28.
 */
public class PartsPlannedPriceVo {
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOwnerCompanyId() {
        return ownerCompanyId;
    }

    public void setOwnerCompanyId(int ownerCompanyId) {
        this.ownerCompanyId = ownerCompanyId;
    }

    public int getOwnerCompanyType() {
        return ownerCompanyType;
    }

    public void setOwnerCompanyType(int ownerCompanyType) {
        this.ownerCompanyType = ownerCompanyType;
    }

    public int getPartsSalesCategoryId() {
        return partsSalesCategoryId;
    }

    public void setPartsSalesCategoryId(int partsSalesCategoryId) {
        this.partsSalesCategoryId = partsSalesCategoryId;
    }

    public String getPartsSalesCategoryName() {
        return partsSalesCategoryName;
    }

    public void setPartsSalesCategoryName(String partsSalesCategoryName) {
        this.partsSalesCategoryName = partsSalesCategoryName;
    }

    public int getSparepartId() {
        return sparepartId;
    }

    public void setSparepartId(int sparepartId) {
        this.sparepartId = sparepartId;
    }

    public BigDecimal getPlannedPrice() {
        return plannedPrice;
    }

    public void setPlannedPrice(BigDecimal plannedPrice) {
        this.plannedPrice = plannedPrice;
    }

    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getModifierId() {
        return modifierId;
    }

    public void setModifierId(Integer modifierId) {
        this.modifierId = modifierId;
    }

    public String getModifierName() {
        return modifierName;
    }

    public void setModifierName(String modifierName) {
        this.modifierName = modifierName;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowVersion) {
        this.rowVersion = rowVersion;
    }
}
