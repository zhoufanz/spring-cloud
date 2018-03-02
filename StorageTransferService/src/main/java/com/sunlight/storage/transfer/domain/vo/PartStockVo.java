package com.sunlight.storage.transfer.domain.vo;

/**
 * Created by Nicholas on 16/12/22.
 */
public class PartStockVo {
    private int sparePartId;
    private String sparePartCode;
    private String sparePartName;
    private int checkAreaLocationId;
    private String checkAreaLocation;
    private int quantity;
    private int recommendedLocationId;
    private String recommendedLocation;

    public int getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(int sparePartId) {
        this.sparePartId = sparePartId;
    }

    public String getSparePartCode() {
        return sparePartCode;
    }

    public void setSparePartCode(String sparePartCode) {
        this.sparePartCode = sparePartCode;
    }

    public String getSparePartName() {
        return sparePartName;
    }

    public void setSparePartName(String sparePartName) {
        this.sparePartName = sparePartName;
    }

    public int getCheckAreaLocationId() {
        return checkAreaLocationId;
    }

    public void setCheckAreaLocationId(int checkAreaLocationId) {
        this.checkAreaLocationId = checkAreaLocationId;
    }

    public String getCheckAreaLocation() {
        return checkAreaLocation;
    }

    public void setCheckAreaLocation(String checkAreaLocation) {
        this.checkAreaLocation = checkAreaLocation;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getRecommendedLocationId() {
        return recommendedLocationId;
    }

    public void setRecommendedLocationId(int recommendedLocationId) {
        this.recommendedLocationId = recommendedLocationId;
    }

    public String getRecommendedLocation() {
        return recommendedLocation;
    }

    public void setRecommendedLocation(String recommendedLocation) {
        this.recommendedLocation = recommendedLocation;
    }
}
