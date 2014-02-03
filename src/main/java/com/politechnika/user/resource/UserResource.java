/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.resource;

import com.politechnika.model.Student;
import com.politechnika.model.User;
import com.politechnika.security.MongoDBRealm;
import com.politechnika.user.dao.UserDAO;
import org.apache.log4j.Logger;
import org.mongodb.morphia.query.Query;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 *
 * @author l.lis
 */
@Path("/users/")
public class UserResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    @EJB
    private UserDAO userDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<User> getAll() {
        return userDAO.find().asList();
    }

    @GET
    @Path("/lecturers")
    @Produces(MediaType.APPLICATION_JSON)
    public List<User> getAllLecturers() {
        Query<User> query = userDAO.createQuery().filter("role", MongoDBRealm.LECTURER_ROLE);
        return userDAO.find(query).asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(User user) {
        user = MongoDBRealm.createUserAuthorization(user);
        if(userDAO == null) {
            LOGGER.debug("mamy problem");
        }
        userDAO.save(user);
        LOGGER.debug(user);
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(User user) {
        user = linkNotUpdatedData(user);
        if (user != null) {
            userDAO.save(user);
        }
    }

    private User linkNotUpdatedData(User user) {
        LOGGER.debug(user.getUsername());
        User temp = userDAO.findOne("username", user.getUsername());
        if (temp != null) {
            LOGGER.debug(temp);
            user.setPassword(temp.getPassword());
            user.setSalt(temp.getSalt());
            user.setUserID(temp.getUserID());
            return user;
        }
        return null;
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public User findByUsername(@PathParam("id") String id) {
        LOGGER.debug( userDAO.findOne("userID", id));
        return userDAO.findOne("userID", id);
    }

    @GET
    @Path("password")
    @Produces(MediaType.APPLICATION_JSON)
    public void saveNewPassword(User user) {
        create(user);
    }
}
