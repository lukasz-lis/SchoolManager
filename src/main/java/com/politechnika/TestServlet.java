package com.politechnika;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 06.12.13
 * Time: 21:12
 * To change this template use File | Settings | File Templates.
 */
@WebServlet("/login")
public class TestServlet extends HttpServlet {

    @EJB
    private UserDAO userDAO;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination = "/login.jsp";
        RequestDispatcher red = getServletContext().getRequestDispatcher(destination);
        red.forward(request, response);
    }
}
