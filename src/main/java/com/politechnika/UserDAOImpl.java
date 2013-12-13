package com.politechnika;


import java.util.List;

import javax.ejb.Singleton;
import javax.ejb.Startup;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.mongodb.morphia.Datastore;

import com.politechnika.model.User;
import com.politechnika.utlis.MongoDBDataStore;


/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 08.11.13
 * Time: 22:47
 * To change this template use File | Settings | File Templates.
 */

@Singleton
@Startup
public class UserDAOImpl implements UserDAO {
    private static Logger LOGGER;
    private Datastore ds;

    public UserDAOImpl() {
        LOGGER = Logger.getLogger(UserDAOImpl.class.getName());
        ds = MongoDBDataStore.getDs();
    }

    @Override
	public void addNewUser(User user) {
        LOGGER.log(Level.INFO, "Dodaje nowego uzytkownika");
        ds.save(user);
    }

    @Override
	public User findUserBy(String username) {
        return ds.find(User.class, "username", username).get();
    }


    @Override
	public List<User> getAllUsers() {
        LOGGER.debug("Pobieram");
        return ds.find(User.class).asList();
    }
}
