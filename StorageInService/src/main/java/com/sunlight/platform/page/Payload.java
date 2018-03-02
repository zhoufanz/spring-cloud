package com.sunlight.platform.page;


import java.util.List;

/**
 * Created by Nicholas on 16/12/14.
 */

public class Payload {
    private int pageIndex;
    private int pageSize;
    private int totalPages;
    private long totalElements;
    private String sort;
    private List content;


    public Payload() {

    }

    public Payload(int pageIndex, int pageSize, List content, int totalPages, long totalElements) {
        this.pageIndex = pageIndex + 1;
        this.pageSize = pageSize;
        this.content = content;
        this.totalPages = totalPages;
        this.totalElements = totalElements;
    }
    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }
    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public long getTotalElements() {
        return totalElements;
    }

    public void setTotalElements(long totalElements) {
        this.totalElements = totalElements;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex + 1;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List getContent() {
        return content;
    }

    public void setContent(List content) {
        this.content = content;
    }
}
