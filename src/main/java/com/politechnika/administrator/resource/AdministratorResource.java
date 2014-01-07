package com.politechnika.administrator.resource;

import com.politechnika.administrator.dao.AdministatorDAO;
import com.politechnika.model.Administrator;
import com.politechnika.security.MongoDBRealm;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

/**
 * Created by Łukasz on 31.12.13.
 */
@Path("/administrators/")
public class AdministratorResource {

    private static final Logger LOGGER = Logger.getLogger(AdministratorResource.class);

    @EJB
    private AdministatorDAO administatorDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Administrator> getAll() {
        return administatorDAO.find().asList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response create(Administrator administrator) {
        administrator = MongoDBRealm.createAdminAuthorization(administrator);
        administatorDAO.save(administrator);
        LOGGER.debug(administrator);
        return Response.ok().build();
    }
}
