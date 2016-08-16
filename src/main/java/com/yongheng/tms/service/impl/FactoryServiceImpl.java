package com.yongheng.tms.service.impl;

import com.yongheng.tms.dao.impl.FactoryDaoImpl;
import com.yongheng.tms.entity.Factory;
import com.yongheng.tms.service.FactoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Service
public class FactoryServiceImpl implements FactoryService{

    @Resource
    private FactoryDaoImpl factoryDao;

    public List<Factory> find(Map param) {
        return factoryDao.find(param);
    }

    public Factory get(Serializable id) {
        return factoryDao.get(id);
    }

    public void update(Factory factory) {
        factoryDao.update(factory);
    }

    public void delete(Factory factory) {
        factoryDao.delete(factory);
    }

    public void insert(Factory factory) {
        factoryDao.insert(factory);
    }
}
