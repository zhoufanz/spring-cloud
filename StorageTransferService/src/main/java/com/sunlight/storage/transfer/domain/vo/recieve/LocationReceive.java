package com.sunlight.storage.transfer.domain.vo.recieve;

/**
 * Created by Nicholas on 16/12/21.
 */
public class LocationReceive {
    private Integer storageAreaLocationId;
    private Integer quantity;

    public Integer getStorageAreaLocationId() {
        return storageAreaLocationId;
    }

    public void setStorageAreaLocationId(Integer storageAreaLocationId) {
        this.storageAreaLocationId = storageAreaLocationId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
