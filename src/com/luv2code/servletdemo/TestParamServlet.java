package com.luv2code.servletdemo;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TestParamServlet")
public class TestParamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //set content type
        response.setContentType("text/html");
        //get printwriter
        PrintWriter out = response.getWriter();
        //read config params
        ServletContext context = getServletContext(); //inherit from HttpServlet
        String maxCartSize = context.getInitParameter("max-shopping-cart-size");
        String teamName = context.getInitParameter("project-team-name");

        //generate html content
        out.println("<html><body>");

        out.println("Max cart: " + maxCartSize);
        out.println("<br>");
        out.println("Team name: " + teamName);

        out.println("</body></html>");
    }
}
