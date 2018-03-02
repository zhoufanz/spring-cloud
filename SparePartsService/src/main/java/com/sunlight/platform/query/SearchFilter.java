package com.sunlight.platform.query;

import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.Map;

/**
 * Created by Nicholas on 16/11/23.
 */
public class SearchFilter {
    public enum Operator {
        EQ, LIKE, GT, LT, GTE, LTE, IN
    }

    public String fieldName;
    public Object value;
    public Operator operator;

    public SearchFilter(String fieldName, Operator operator, Object value) {
        this.fieldName = fieldName;
        this.value = value;
        this.operator = operator;
    }

    /**
     * searchParams中key的格式为OPERATOR_FIELDNAME
     */
    public static Map<String, SearchFilter> parseSearchContent(Map<String, Object> searchParams) {
        Map<String, SearchFilter> filters = Maps.newHashMap();

        for (Map.Entry<String, Object> entry : searchParams.entrySet()) {
            // 过滤掉空值
            String key = entry.getKey();
            Object value = entry.getValue();
            if (StringUtils.contains((String) key, "page") || null == value) {
                continue;
            }

            // 拆分operator与filedAttribute
            String[] names = StringUtils.split(key, "_");
            if (names.length != 2) {
                throw new IllegalArgumentException(key + " is not a valid search filter name");
            }
            String filedName = names[1];
            Operator operator = Operator.valueOf(names[0]);

            // 创建searchFilter
            SearchFilter filter = new SearchFilter(filedName, operator, value);
            filters.put(key, filter);
        }

        return filters;
    }

    public static Pageable parsePageContent(int currentPage, int pageSize) {
        return new PageRequest(currentPage - 1, pageSize);
    }

    public static Pageable parsePageContent(int currentPage, int pageSize, String sort, String sortType) {
        if (null != sort && null != sortType) {
            if ("true".equals(sortType)) {
                sortType = Sort.Direction.DESC.name();
            } else {
                sortType = Sort.Direction.ASC.name();
            }
            return new PageRequest(currentPage - 1, pageSize, new Sort(Sort.Direction.valueOf(sortType), sort));
        } else {
            return new PageRequest(currentPage - 1, pageSize);
        }
    }
}
