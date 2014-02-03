/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.sercurity.resource;

import com.politechnika.user.resource.*;
import com.politechnika.model.User;
import com.politechnika.user.dao.UserDAO;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;

/**
 *
 * @author l.lis
 */
@Path("/security/")
public class SercurityResource {

    private static final Logger LOGGER = Logger.getLogger(UserResource.class);
    @EJB
    private UserDAO userDAO;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public User get() {
        String username = SecurityUtils.getSubject().getPrincipal().toString();
        return userDAO.findOne("username", username);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response checkUserPassword(User user) {
        User tempUser = userDAO.findOne("userID", user.getUserID());
        String tempHashPassword = new Sha256Hash(user.getPassword(), tempUser.getSalt(), 100000).toBase64();
        if(tempHashPassword.equals(tempUser.getPassword())) {
            return Response.status(200).build();
        }
        return  Response.status(401).build();
    }

}
