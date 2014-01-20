/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.progress.resource;

import com.politechnika.model.Lection;
import com.politechnika.model.Progress;
import com.politechnika.progress.dao.ProgressDAO;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 *
 * @author l.lis
 */
@Path("/progress/")
public class ProgressResource {

    private static final Logger LOGGER = Logger.getLogger(ProgressResource.class);
    @EJB
    private ProgressDAO progressDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Progress> getAll() {
        return progressDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public void create(Progress progress) {
        progressDAO.save(progress);
        LOGGER.debug(progress);
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Progress progress) {
        progressDAO.save(progress);

    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Progress findByID(@PathParam("id") String id) {
        return progressDAO.findOne("lectionID", id);
    }
}
