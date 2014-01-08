/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.administrator.controller;

import com.politechnika.administrator.dao.AdministatorDAO;
import com.politechnika.utlis.MVCService;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.ejb.EJB;

/**
 *
 * @author l.lis
 */
@WebServlet("/administrators")
public class AdministratorController extends HttpServlet {
    
    private final static String PAGE = "/users/admin.jsp";
    private final static Logger LOGGER = Logger.getLogger(AdministratorController.class);
    
    @EJB
    private AdministatorDAO administatorDAO;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());
        req.setAttribute("users", administatorDAO.find().asList());
        mvc.forward(req, resp);
    }    
    
    
}
