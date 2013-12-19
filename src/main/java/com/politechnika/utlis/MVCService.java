/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.utlis;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author l.lis
 */
public class MVCService {

    private String pageToRedirect;
    private ServletContext servletContext;

    public MVCService(String pageToRedirect, ServletContext servletContext) {
        this.pageToRedirect = pageToRedirect;
        this.servletContext = servletContext;
    }

    public void forward(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = servletContext.getRequestDispatcher(pageToRedirect);
        
        rd.forward(req, resp);
    }
}
