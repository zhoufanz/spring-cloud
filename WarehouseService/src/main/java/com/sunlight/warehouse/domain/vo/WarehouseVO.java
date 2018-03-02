package com.sunlight.warehouse.domain.vo;

import com.sunlight.warehouse.domain.po.WarehouseEntity;

import java.util.List;

/**
 * Created by brad on 16/11/21.
 */
public class WarehouseVO {
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
    private Integer creatorId;
    private String creatorName;
    private Byte isCentralizedPurchase;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getRegionId() {
        return regionId;
    }

    public void setRegionId(Integer regionId) {
        this.regionId = regionId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getStorageStrategy() {
        return storageStrategy;
    }

    public void setStorageStrategy(int storageStrategy) {
        this.storageStrategy = storageStrategy;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
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

    public Integer getStorageCenter() {
        return storageCenter;
    }

    public void setStorageCenter(Integer storageCenter) {
        this.storageCenter = storageCenter;
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

    public Byte getIsCentralizedPurchase() {
        return isCentralizedPurchase;
    }

    public void setIsCentralizedPurchase(Byte isCentralizedPurchase) {
        this.isCentralizedPurchase = isCentralizedPurchase;
    }
}
