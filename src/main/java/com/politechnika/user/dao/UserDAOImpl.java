package com.politechnika.user.dao;

import com.politechnika.model.User;
import com.politechnika.utlis.MongoDBDataStore;
import java.util.List;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author l.lis
 */
@Singleton
@Startup
public class UserDAOImpl extends BasicDAO<User, ObjectId> implements UserDAO{
   
    public UserDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
       
}
