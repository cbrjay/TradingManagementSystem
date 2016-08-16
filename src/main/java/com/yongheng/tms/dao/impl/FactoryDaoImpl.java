package com.yongheng.tms.dao.impl;

import com.yongheng.tms.dao.FactoryDao;
import com.yongheng.tms.entity.Factory;
import org.springframework.stereotype.Repository;

@Repository
public class FactoryDaoImpl extends BaseDaoImpl<Factory> implements FactoryDao<Factory>{

    public FactoryDaoImpl() {
        super.setNameSpace("com.yongheng.tms.factory");
    }

}
