package com.politechnika.security;

import com.politechnika.utlis.MVCService;
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
public class LoginController extends HttpServlet {

    private final static String PAGE = "/login.jsp";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MVCService mvc = new MVCService(PAGE, getServletContext());
        mvc.forward(request, response);
        
        
    }
}
