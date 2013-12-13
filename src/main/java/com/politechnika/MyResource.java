package com.politechnika;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.apache.log4j.Logger;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.util.ByteSource;

import com.politechnika.model.Student;
import com.politechnika.model.User;
import javax.ejb.EJB;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


/**
 * Root resource (exposed at "myresource" path)
 */
@Path("/myresource")
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
    public User getIt() {
        User user = new Student();
        user.setFirstName("Łukasz");
        user.setEmail("luqi.fox@gmail.com");
        user.setUsername("nowy");

        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        ByteSource salt = rng.nextBytes();
        user.setSalt(salt.toBase64());

        user.setPassword(new Sha256Hash("test", salt.toBase64(), 100000).toBase64());

        userDAO.addNewUser(user);

        return user;
    }
}
