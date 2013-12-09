package com.politechnika;

import com.politechnika.model.Student;
import com.politechnika.model.User;
import org.apache.log4j.Logger;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.util.ByteSource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


/**
 * Root resource (exposed at "myresource" path)
 */
@Path("/api/myresource")
public class MyResource {

    private static final Logger LOGGER = Logger.getLogger(MyResource.class.getName());

    private UserDAO userDAO = new UserDAOImpl();
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
        user.setUsername("lukaszek");

        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        ByteSource salt = rng.nextBytes();
        user.setSalt(salt.toBase64());

        user.setPassword(new Sha256Hash("lukaszek", salt.toBase64(), 100000).toBase64());

        userDAO.addNewUser(user);

        return user;
    }
}
