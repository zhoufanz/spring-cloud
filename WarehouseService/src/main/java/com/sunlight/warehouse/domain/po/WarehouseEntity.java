package com.sunlight.warehouse.domain.po;

import javax.persistence.*;
import java.util.Date;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/27.
 */
@Entity
@Table(name = "warehouse", schema = "storage", catalog = "")
public class WarehouseEntity {
    private int id;
    private String code;
    private String name;
    private int type;
    private int status;
    private String address;
    private Integer regionId;
    private String phoneNumber;
    private String contact;
    private String fax;
    private String email;
    private int storageStrategy;
    private String remark;
    private String picture;
    private int branchId;
    private int storageCompanyId;
    private int storageCompanyType;
    private Integer storageCenter;
    private byte wmsInterface;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Date rowVersion;
    private Byte isCentralizedPurchase;
    private Byte isQualityWarehouse;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "TYPE")
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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
    @Column(name = "ADDRESS")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "REGIONID")
    public Integer getRegionid() {
        return regionId;
    }

    public void setRegionid(Integer regionid) {
        this.regionId = regionid;
    }

    @Basic
    @Column(name = "PHONE_NUMBER")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Basic
    @Column(name = "CONTACT")
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Basic
    @Column(name = "FAX")
    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    @Basic
    @Column(name = "EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "STORAGE_STRATEGY")
    public int getStorageStrategy() {
        return storageStrategy;
    }

    public void setStorageStrategy(int storageStrategy) {
        this.storageStrategy = storageStrategy;
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
    @Column(name = "PICTURE")
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Basic
    @Column(name = "BRANCHID")
    public int getBranchid() {
        return branchId;
    }

    public void setBranchid(int branchid) {
        this.branchId = branchid;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_ID")
    public int getStorageCompanyId() {
        return storageCompanyId;
    }

    public void setStorageCompanyId(int storageCompanyId) {
        this.storageCompanyId = storageCompanyId;
    }

    @Basic
    @Column(name = "STORAGE_COMPANY_TYPE")
    public int getStorageCompanyType() {
        return storageCompanyType;
    }

    public void setStorageCompanyType(int storageCompanyType) {
        this.storageCompanyType = storageCompanyType;
    }

    @Basic
    @Column(name = "STORAGE_CENTER")
    public Integer getStorageCenter() {
        return storageCenter;
    }

    public void setStorageCenter(Integer storageCenter) {
        this.storageCenter = storageCenter;
    }

    @Basic
    @Column(name = "WMS_INTERFACE")
    public byte getWmsInterface() {
        return wmsInterface;
    }

    public void setWmsInterface(byte wmsInterface) {
        this.wmsInterface = wmsInterface;
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
    @Column(name = "ROWVERSION")
    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowversion) {
        this.rowVersion = rowversion;
    }

    @Basic
    @Column(name = "IS_CENTRALIZED_PURCHASE")
    public Byte getIsCentralizedPurchase() {
        return isCentralizedPurchase;
    }

    public void setIsCentralizedPurchase(Byte isCentralizedPurchase) {
        this.isCentralizedPurchase = isCentralizedPurchase;
    }

    @Basic
    @Column(name = "IS_QUALITY_WAREHOUSE")
    public Byte getIsQualityWarehouse() {
        return isQualityWarehouse;
    }

    public void setIsQualityWarehouse(Byte isQualityWarehouse) {
        this.isQualityWarehouse = isQualityWarehouse;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WarehouseEntity that = (WarehouseEntity) o;

        if (id != that.id) return false;
        if (type != that.type) return false;
        if (status != that.status) return false;
        if (storageStrategy != that.storageStrategy) return false;
        if (branchId != that.branchId) return false;
        if (storageCompanyId != that.storageCompanyId) return false;
        if (storageCompanyType != that.storageCompanyType) return false;
        if (wmsInterface != that.wmsInterface) return false;
        if (code != null ? !code.equals(that.code) : that.code != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (regionId != null ? !regionId.equals(that.regionId) : that.regionId != null) return false;
        if (phoneNumber != null ? !phoneNumber.equals(that.phoneNumber) : that.phoneNumber != null) return false;
        if (contact != null ? !contact.equals(that.contact) : that.contact != null) return false;
        if (fax != null ? !fax.equals(that.fax) : that.fax != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (picture != null ? !picture.equals(that.picture) : that.picture != null) return false;
        if (storageCenter != null ? !storageCenter.equals(that.storageCenter) : that.storageCenter != null)
            return false;
        if (creatorId != null ? !creatorId.equals(that.creatorId) : that.creatorId != null) return false;
        if (creatorName != null ? !creatorName.equals(that.creatorName) : that.creatorName != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (modifierId != null ? !modifierId.equals(that.modifierId) : that.modifierId != null) return false;
        if (modifierName != null ? !modifierName.equals(that.modifierName) : that.modifierName != null) return false;
        if (modifyTime != null ? !modifyTime.equals(that.modifyTime) : that.modifyTime != null) return false;
        if (rowVersion != null ? !rowVersion.equals(that.rowVersion) : that.rowVersion != null) return false;
        if (isCentralizedPurchase != null ? !isCentralizedPurchase.equals(that.isCentralizedPurchase) : that.isCentralizedPurchase != null)
            return false;
        if (isQualityWarehouse != null ? !isQualityWarehouse.equals(that.isQualityWarehouse) : that.isQualityWarehouse != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + type;
        result = 31 * result + status;
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (regionId != null ? regionId.hashCode() : 0);
        result = 31 * result + (phoneNumber != null ? phoneNumber.hashCode() : 0);
        result = 31 * result + (contact != null ? contact.hashCode() : 0);
        result = 31 * result + (fax != null ? fax.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + storageStrategy;
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (picture != null ? picture.hashCode() : 0);
        result = 31 * result + branchId;
        result = 31 * result + storageCompanyId;
        result = 31 * result + storageCompanyType;
        result = 31 * result + (storageCenter != null ? storageCenter.hashCode() : 0);
        result = 31 * result + (int) wmsInterface;
        result = 31 * result + (creatorId != null ? creatorId.hashCode() : 0);
        result = 31 * result + (creatorName != null ? creatorName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (modifierId != null ? modifierId.hashCode() : 0);
        result = 31 * result + (modifierName != null ? modifierName.hashCode() : 0);
        result = 31 * result + (modifyTime != null ? modifyTime.hashCode() : 0);
        result = 31 * result + (rowVersion != null ? rowVersion.hashCode() : 0);
        result = 31 * result + (isCentralizedPurchase != null ? isCentralizedPurchase.hashCode() : 0);
        result = 31 * result + (isQualityWarehouse != null ? isQualityWarehouse.hashCode() : 0);
        return result;
    }
}
