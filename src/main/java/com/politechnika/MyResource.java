package com.politechnika;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.apache.log4j.Logger;
import com.politechnika.model.User;
import com.politechnika.user.dao.UserDAO;
import java.util.List;
import javax.ejb.EJB;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;



@Path("/myusers")
public class MyResource {

    private static final Logger LOGGER = Logger.getLogger(MyResource.class.getName());

    @EJB
    private UserDAO userDAO;
    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<User> getIt() {
        
        return userDAO.find().asList();
    }
}
