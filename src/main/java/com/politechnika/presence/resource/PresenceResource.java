/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.presence.resource;

import com.politechnika.model.Presence;
import com.politechnika.presence.dao.PresenceDAO;
import com.politechnika.user.resource.UserResource;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author l.lis
 */
@Path("/progress/")
public class PresenceResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    @EJB
    private PresenceDAO presenceDAO;

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
}
