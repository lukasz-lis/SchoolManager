/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.resource;

import com.politechnika.model.User;
import com.politechnika.user.dao.UserDAO;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.apache.log4j.Logger;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;

/**
 *
 * @author l.lis
 */
@Path("/users/")
public class UserResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    
    @EJB
    private UserDAO userDAO;

    public UserResource() {
    }
       
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public void create(User user) {
        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        user.setSalt(rng.nextBytes().toBase64());
        String plainPassword = user.getPassword();
        user.setPassword(new Sha256Hash(plainPassword, user.getSalt(), 100000).toBase64());
        user.setRole("ADMIN");
        
        userDAO.save(user);
        
       LOGGER.debug(user);
    }
}
