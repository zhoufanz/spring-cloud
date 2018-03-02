package com.sunlight.storage.in.domain.vo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * Created by hasee on 2016/12/21.
 */
public class PartsInBoundPlanJoinVo {
    private Integer id;
    private String code;
    private String warehousecName;
    private String brandName;
    private Integer type;
    private String otherCompanyName;
    private String sourceCode;
    private Integer status;
    private Float amount;
    private Object options;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getWarehousecName() {
        return warehousecName;
    }

    @JSONField(name = "warehouseName")
    public void setWarehousecName(String warehousecName) {
        this.warehousecName = warehousecName;
    }

    public String getBrandName() {
        return brandName;
    }

    @JSONField(name = "brandName")
    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public Integer getType() {
        return type;
    }

    @JSONField(name = "inboundType")
    public void setType(Integer type) {
        this.type = type;
    }

    public String getOtherCompanyName() {
        return otherCompanyName;
    }

    @JSONField(name = "counterpartCompanyName")
    public void setOtherCompanyName(String otherCompanyName) {
        this.otherCompanyName = otherCompanyName;
    }

    public String getSourceCode() {
        return sourceCode;
    }

    @JSONField(name = "originalRequirementBillCode")
    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Float getAmount() {
        return amount;
    }

    public void setAmount(Float amount) {
        this.amount = amount;
    }

    public Object getOptions() {
        return options;
    }

    public void setOptions(Object options) {
        this.options = options;
    }
}
