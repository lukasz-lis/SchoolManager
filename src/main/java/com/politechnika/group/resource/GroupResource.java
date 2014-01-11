package com.politechnika.group.resource;

import com.politechnika.group.dao.GroupDAO;
import com.politechnika.model.Group;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author l.lis
 */
@Path("/groups/")
public class GroupResource {

    private static final Logger LOGGER = Logger.getLogger(GroupResource.class);
    @EJB
    private GroupDAO groupDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Group> getAll() {
        return groupDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(Group group) {
        groupDAO.save(group);
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void update(Group group) {
        groupDAO.save(group);
    }

    @GET
    @Path("{groupID}")
    @Produces(MediaType.APPLICATION_JSON)
    public Group findByGroupName(@PathParam("groupID") String groupID) {
        return groupDAO.findOne("groupID", groupID);
    }
}
