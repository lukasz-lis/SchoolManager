/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.course.controller;

import com.politechnika.group.controller.GroupModuleController;
import com.politechnika.utlis.MVCService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

/**
 *
 * @author l.lis
 */
@WebServlet("/course")
public class CourseModuleController extends HttpServlet {

    private final static String PAGE = "/courses.jsp";
    private final static Logger LOGGER = Logger.getLogger(GroupModuleController.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());
        mvc.forward(req, resp);
    }
}
