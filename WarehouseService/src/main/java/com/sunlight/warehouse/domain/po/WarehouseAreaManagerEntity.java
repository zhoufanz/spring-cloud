package com.sunlight.warehouse.domain.po;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "warehouse_area_manager", schema = "storage", catalog = "")
public class WarehouseAreaManagerEntity {
    private int id;
    private int warehouseAreaId;
    private int managerId;
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
    @Column(name = "WAREHOUSE_AREA_ID")
    public int getWarehouseAreaId() {
        return warehouseAreaId;
    }

    public void setWarehouseAreaId(int warehouseAreaId) {
        this.warehouseAreaId = warehouseAreaId;
    }

    @Basic
    @Column(name = "MANAGER_ID")
    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
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

        WarehouseAreaManagerEntity that = (WarehouseAreaManagerEntity) o;

        if (id != that.id) return false;
        if (warehouseAreaId != that.warehouseAreaId) return false;
        if (managerId != that.managerId) return false;
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
        result = 31 * result + warehouseAreaId;
        result = 31 * result + managerId;
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
