package com.sunlight.storage.transfer.domain.vo.recieve;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nicholas on 16/12/21.
 */
public class PartsShiftOrderDetailReceive {
    private Integer sparePartId;
    private Integer checkAreaLocationId;
    private String remark;
    private Set<LocationReceive> locations= new HashSet<>();

    public Integer getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(Integer sparePartId) {
        this.sparePartId = sparePartId;
    }

    public Integer getCheckAreaLocationId() {
        return checkAreaLocationId;
    }

    public void setCheckAreaLocationId(Integer checkAreaLocationId) {
        this.checkAreaLocationId = checkAreaLocationId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Set<LocationReceive> getReceiveSet() {
        return locations;
    }
    @JSONField(name="locations")
    public void setReceiveSet(Set<LocationReceive> receiveSet) {
        this.locations = receiveSet;
    }
}
