package com.politechnika.password.resource;

import com.politechnika.model.Course;
import com.politechnika.model.Student;
import com.politechnika.model.User;
import com.politechnika.security.MongoDBRealm;
import com.politechnika.user.dao.UserDAO;
import org.mongodb.morphia.query.Query;
import org.mongodb.morphia.query.UpdateOperations;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

/**
 * Created by Łukasz on 15.02.14.
 */
@Path("/password")
public class PasswordResource {

    @EJB
    private UserDAO userDAO;

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void changeThePassword(User user) {
        Query<User> query = userDAO.createQuery().filter("username", user.getUsername());
        user = MongoDBRealm.createUserAuthorization(user);
        UpdateOperations<User> updatePassword= userDAO.createUpdateOperations().set("password", user.getPassword());
        UpdateOperations<User> updateSalt = userDAO.createUpdateOperations().set("salt",user.getSalt());


        userDAO.update(query, updatePassword);
        userDAO.update(query, updateSalt);
    }
}
