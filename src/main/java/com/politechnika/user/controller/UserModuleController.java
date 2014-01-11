/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.controller;

import com.politechnika.utlis.MVCService;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author l.lis
 */
@WebServlet("/user")
public class UserModuleController extends HttpServlet {
    
    private final static String PAGE = "/users.jsp";
    private final static Logger LOGGER = Logger.getLogger(UserModuleController.class);
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());   
        mvc.forward(req, resp);
    }    
    
    
}