package com.sunlight.storage.in.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * 入库计划单检验结果
 * Created by hasee on 2016/12/21.
 */
public class PartsInBoundPlanCheckInfoVo {
    private Integer planOrderId;
    private String remark;
    private List<PartsInBoundPlanCheckInfoDetailVo> details;

    public Integer getPlanOrderId() {
        return planOrderId;
    }

    public void setPlanOrderId(Integer planOrderId) {
        this.planOrderId = planOrderId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @JSONField(name="detais")
    public List<PartsInBoundPlanCheckInfoDetailVo> getDetails() {
        return details;
    }

    public void setDetails(List<PartsInBoundPlanCheckInfoDetailVo> details) {
        this.details = details;
    }

}
