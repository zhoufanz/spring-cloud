package com.sunlight.warehouse.domain.po;

import javax.persistence.*;
import java.util.Date;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "warehouse_area")
public class WarehouseAreaEntity {
    private int id;
    private int warehouseId;
    private Integer parentId;
    private String code;
    private Integer topLevelWarehouseAreaId;
    private Integer areaCategoryId;
    private int status;
    private String remark;
    private int areaKind;
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
    @Column(name = "WAREHOUSE_ID")
    public int getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }

    @Basic
    @Column(name = "PARENT_ID")
    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
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
    @Column(name = "TOP_LEVEL_WAREHOUSE_AREA_ID")
    public Integer getTopLevelWarehouseAreaId() {
        return topLevelWarehouseAreaId;
    }

    public void setTopLevelWarehouseAreaId(Integer topLevelWarehouseAreaId) {
        this.topLevelWarehouseAreaId = topLevelWarehouseAreaId;
    }

    @Basic
    @Column(name = "AREA_CATEGORY_ID")
    public Integer getAreaCategoryId() {
        return areaCategoryId;
    }

    public void setAreaCategoryId(Integer areaCategoryId) {
        this.areaCategoryId = areaCategoryId;
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
    @Column(name = "REMARK")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "AREA_KIND")
    public int getAreaKind() {
        return areaKind;
    }

    public void setAreaKind(int areaKind) {
        this.areaKind = areaKind;
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

        WarehouseAreaEntity that = (WarehouseAreaEntity) o;

        if (id != that.id) return false;
        if (warehouseId != that.warehouseId) return false;
        if (status != that.status) return false;
        if (areaKind != that.areaKind) return false;
        if (parentId != null ? !parentId.equals(that.parentId) : that.parentId != null) return false;
        if (code != null ? !code.equals(that.code) : that.code != null) return false;
        if (topLevelWarehouseAreaId != null ? !topLevelWarehouseAreaId.equals(that.topLevelWarehouseAreaId) : that.topLevelWarehouseAreaId != null)
            return false;
        if (areaCategoryId != null ? !areaCategoryId.equals(that.areaCategoryId) : that.areaCategoryId != null)
            return false;
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
        int result = id;
        result = 31 * result + warehouseId;
        result = 31 * result + (parentId != null ? parentId.hashCode() : 0);
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + (topLevelWarehouseAreaId != null ? topLevelWarehouseAreaId.hashCode() : 0);
        result = 31 * result + (areaCategoryId != null ? areaCategoryId.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + areaKind;
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
