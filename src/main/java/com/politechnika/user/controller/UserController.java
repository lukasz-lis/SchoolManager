/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.controller;

import com.politechnika.user.dao.UserDAO;
import com.politechnika.utlis.MVCService;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;

/**
 *
 * @author l.lis
 */
@WebServlet("/users")
public class UserController extends HttpServlet {
    
    private final static String PAGE = "/users/index.jsp";
    private final static Logger LOGGER = Logger.getLogger(UserController.class);
    @EJB
    private UserDAO userDAO;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());
    
        LOGGER.debug("Sciezka"+req.getPathInfo());
        HttpSession session = req.getSession();
        session.setAttribute("users", userDAO.find().asList());
        
        mvc.forward(req, resp);
        
    }    
    
    
}
