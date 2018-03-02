package com.sunlight.storage.transfer.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nicholas on 16/12/22.
 */
public class PartsShiftOrderForDetail {
    private int id;
    private String code;
    private String warehouseName;
    private Date createTime;
    private String creator;
    private String remark;
    private Set<PartsSiftOrderDetailJoinVo> details=new HashSet<>();

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

    public String getWarehouseName() {
        return warehouseName;
    }
    @JSONField(name="warehousename")
    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    @JSONField(name="createtime")
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreator() {
        return creator;
    }

    @JSONField(name="creatorname")
    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Set<PartsSiftOrderDetailJoinVo> getDetails() {
        return details;
    }

    @JSONField(name="shiftOrderDetailEntities")
    public void setDetails(Set<PartsSiftOrderDetailJoinVo> details) {
        this.details = details;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PartsShiftOrderForDetail{");
        sb.append("id=").append(id);
        sb.append(", code='").append(code).append('\'');
        sb.append(", warehouseName='").append(warehouseName).append('\'');
        sb.append(", createTime=").append(createTime);
        sb.append(", creator='").append(creator).append('\'');
        sb.append(", remark='").append(remark).append('\'');
        sb.append(", details=").append(details);
        sb.append('}');
        return sb.toString();
    }
}
