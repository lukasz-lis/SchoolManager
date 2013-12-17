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

/**
 *
 * @author l.lis
 */
@WebServlet("/user")
public class UserController extends HttpServlet {
    
    private final static String PAGE = "/user.jsp";
    @EJB
    private UserDAO userDAO;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());
        req.setAttribute("users", userDAO.find().asList());
        mvc.forward(req, resp);
        
    }    
    
    
}
