/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.progress.resource;

import com.politechnika.model.Progress;
import com.politechnika.model.Student;
import com.politechnika.model.User;
import com.politechnika.progress.dao.ProgressDAO;
import com.politechnika.student.dao.StudentDAO;
import com.politechnika.user.dao.UserDAO;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;
import org.apache.shiro.SecurityUtils;
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
    @EJB
    private UserDAO userDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Progress> getAll() {
        return progressDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(Progress progress) {
        progress = setTheLoggedInUser(progress);
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

    private Progress setTheLoggedInUser(Progress progress) {
        String username = SecurityUtils.getSubject().getPrincipal().toString();
        User user = userDAO.findOne("username", username);
        progress.setCreatedBy(user);

        return progress;
    }
}
