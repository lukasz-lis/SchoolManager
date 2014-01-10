/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.dao;

import com.politechnika.model.User;
import com.politechnika.utlis.MongoDBDataStore;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author l.lis
 */
@Singleton
@Startup
public class UserDAOImpl extends BasicDAO<User, String> implements UserDAO {
    public UserDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
