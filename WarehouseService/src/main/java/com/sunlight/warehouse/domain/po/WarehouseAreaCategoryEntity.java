package com.sunlight.warehouse.domain.po;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/12/27.
 */
@Entity
@Table(name = "warehouse_area_category", schema = "storage", catalog = "")
public class WarehouseAreaCategoryEntity {
    private int id;
    private int category;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "CATEGORY")
    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WarehouseAreaCategoryEntity that = (WarehouseAreaCategoryEntity) o;

        if (id != that.id) return false;
        if (category != that.category) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + category;
        return result;
    }
}
