/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.lection.resource;

import com.politechnika.lection.dao.LectionDAO;
import com.politechnika.model.Lection;
import com.politechnika.user.resource.*;
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
@Path("/lections/")
public class LectionResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    @EJB
    private LectionDAO lectionDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Lection> getAll() {
        return lectionDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Lection create(Lection lection) {
        lectionDAO.save(lection);
        LOGGER.debug(lection);
        return lection;
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Lection lection) {
        lectionDAO.save(lection);

    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Lection findByID(@PathParam("id") String id) {
        return lectionDAO.findOne("lectionID", id);
    }
}
