package com.yongheng.tms.dao.impl;

import com.yongheng.tms.dao.BaseDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class BaseDaoImpl<T> implements BaseDao<T> {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    private String nameSpace;

    public List<T> find(Map param) {
        SqlSession session = getSqlSession();
        List<T> result = session.selectList(nameSpace + ".find", param);
        session.close();
        return result;
    }

    public T get(Serializable id) {
        SqlSession session = getSqlSession();
        T result = session.selectOne(nameSpace + ".get", id);
        session.close();
        return result;
    }

    public void update(T obj) {
        SqlSession session = getSqlSession();
        session.update(nameSpace + ".update", obj);
        session.close();
    }

    public void delete(T obj) {
        SqlSession session = getSqlSession();
        session.delete(nameSpace + ".delete", obj);
        session.close();
    }

    public void insert(T obj) {
        SqlSession session = getSqlSession();
        session.insert(nameSpace + ".insert", obj);
        session.close();
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }

    public String getNameSpace() {
        return nameSpace;
    }

    public void setNameSpace(String nameSpace) {
        this.nameSpace = nameSpace;
    }

    public SqlSession getSqlSession() {
        return getSqlSessionFactory().openSession();
    }

}
