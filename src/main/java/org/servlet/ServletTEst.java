package org.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by isuri on 5/14/18.
 */
@WebServlet(name = "ServletTEst" , urlPatterns = "/resource")
public class ServletTEst extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Client client = new Client();
        System.out.println("+++++++"+request.getParameter("resource_id"));
        Resource resource = null;
        try {
            resource = client.getResource(request.getParameter("resource_id"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("resource",resource);
        RequestDispatcher dispatcher = request.getRequestDispatcher("GetResource.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
