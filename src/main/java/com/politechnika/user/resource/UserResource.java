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
import javax.ws.rs.core.MediaType;

/**
 *
 * @author l.lis
 */
@Path("users")
public class UserResource {

    @EJB
    private UserDAO userDAO;
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(User user) {
        userDAO.save(user);
    }
}
