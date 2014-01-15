/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.course.resource;

import com.politechnika.course.dao.CourseDAO;
import com.politechnika.group.resource.*;
import com.politechnika.model.Course;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author l.lis
 */
@Path("/courses/")
public class CourseResource {

    private static final Logger LOGGER = Logger.getLogger(GroupResource.class);
    @EJB
    private CourseDAO courseDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Course> getAll() {
        return courseDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(Course course) {
        courseDAO.save(course);
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Course course) {
        courseDAO.save(course);
    }
    
    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Course findByGroupName(@PathParam("id") String id) {
        return courseDAO.findOne("courseID", id);
    }
}
