package ua.com.manometer.dao;

import java.io.Serializable;

public interface BaseDAO {

     void saveOrUpdate(Object object);

     void removeById(Serializable id, Class aClass);

     Object getById(Serializable id, Class aClass);

}
