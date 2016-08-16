package com.yongheng.tms.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseDao<T> {

    List<T> find(Map param);

    T get(Serializable id);

    void update(T obj);

    void delete(T obj);

    void insert(T obj);

}
