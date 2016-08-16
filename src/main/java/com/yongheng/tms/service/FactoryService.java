package com.yongheng.tms.service;

import com.yongheng.tms.entity.Factory;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface FactoryService {

    List<Factory> find(Map param);

    Factory get(Serializable id);

    void update(Factory factory);

    void delete(Factory factory);

    void insert(Factory factory);


}
