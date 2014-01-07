package com.politechnika.administrator.dao;

import com.politechnika.model.Administrator;
import com.politechnika.utlis.MongoDBDataStore;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.BasicDAO;

import javax.ejb.Singleton;
import javax.ejb.Startup;

/**
 * Created by Łukasz on 31.12.13.
 */
@Singleton
@Startup
public class AdministratorDAOImpl extends BasicDAO<Administrator, ObjectId> implements AdministatorDAO {
    public AdministratorDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
