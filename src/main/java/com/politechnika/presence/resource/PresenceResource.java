/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.presence.resource;

import com.politechnika.model.Presence;
import com.politechnika.model.User;
import com.politechnika.presence.dao.PresenceDAO;
import com.politechnika.security.MongoDBRealm;
import com.politechnika.user.dao.UserDAO;
import com.politechnika.user.resource.UserResource;
import org.apache.log4j.Logger;
import org.mongodb.morphia.query.Query;
import org.mongodb.morphia.query.UpdateOperations;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author l.lis
 */
@Path("/presences/")
public class PresenceResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    @EJB
    private PresenceDAO presenceDAO;
    @EJB
    private UserDAO userDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Presence> getAll() {
        return presenceDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(Presence presence) {
        presenceDAO.save(presence);

    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Presence presence) {
        presenceDAO.save(presence);

    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Presence findByID(@PathParam("id") String id) {
        return presenceDAO.findOne("presenceID", id);
    }

    @GET
    @Path("student/{username}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Presence> findPresencesByStudentName(@PathParam("username") String username) {

        Query<User> userQuery = userDAO.createQuery().filter("username", username);
        User user = userDAO.findOne(userQuery);
        Query<Presence> presencesQuery = presenceDAO.createQuery().filter("student", user);

        return presenceDAO.find(presencesQuery).asList();
    }
}
