package com.sunlight.storage.transfer.domain.vo;

/**
 * Created by Administrator on 2016/12/20.
 */
public class BaseVo {
    private int pageSize;
    private int pageIndex;
    private String sortFieId;
    private boolean isDesc;

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public String getSortFieId() {
        return sortFieId;
    }

    public void setSortFieId(String sortFieId) {
        this.sortFieId = sortFieId;
    }

    public boolean isDesc() {
        return isDesc;
    }

    public void setDesc(boolean desc) {
        isDesc = desc;
    }
}
