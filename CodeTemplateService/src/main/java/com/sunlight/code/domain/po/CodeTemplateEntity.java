package com.sunlight.code.domain.po;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Nicholas on 16/12/20.
 */
@Entity
@Table(name="code_template")
public class CodeTemplateEntity {
    private int id;
    private Date createDate;
    private String orderCode;
    private String serial;

    @Id
    @Column(name="id",nullable = false,length = 11)
    public int getId() {
        return id;
    }

    @Basic
    @Column(name="create_date")
    public Date getCreateDate() {
        return createDate;
    }

    @Basic
    @Column(name="order_code")
    public String getOrderCode() {
        return orderCode;
    }

    @Basic
    @Column(name="serial")
    public String getSerial() {
        return serial;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }
}
