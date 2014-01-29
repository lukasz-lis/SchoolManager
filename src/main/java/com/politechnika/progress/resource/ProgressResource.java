/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.progress.resource;

import com.politechnika.model.Progress;
import com.politechnika.model.Student;
import com.politechnika.progress.dao.ProgressDAO;
import com.politechnika.security.MongoDBRealm;
import com.politechnika.student.dao.StudentDAO;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;
import org.mongodb.morphia.query.Query;

/**
 *
 * @author l.lis
 */
@Path("/progress/")
public class ProgressResource {

    private static final Logger LOGGER = Logger.getLogger(ProgressResource.class);
    @EJB
    private ProgressDAO progressDAO;
    @EJB
    private StudentDAO studentDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Progress> getAll() {
        return progressDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
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
    @Path("{student}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Progress> findByStudent(@PathParam("student") String id) {
        final Student temp = studentDAO.findOne("userID", id);
        
        Query<Progress> query = progressDAO.createQuery().filter("student", temp);
        return progressDAO.find(query).asList();
    }
}
