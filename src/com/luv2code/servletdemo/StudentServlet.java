package com.luv2code.servletdemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //step 1 set content type
        response.setContentType("text/html");

        //step 2 get the printwriter
        PrintWriter out = response.getWriter();

        //step 3 generate the html
        out.println("<html><body>");

        out.println("This student is confirmed: "
                + request.getParameter("firstName") + " "
                + request.getParameter("lastName"));

        out.println("</body></html>");
    }
}
