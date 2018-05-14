package org.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FormServlet extends HttpServlet {


    Client client = new Client();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        try {
            switch (action) {
                case "/register":
                    registerResource(request, response);
                    break;
                case "/delete":
                    deleteResource(request, response);
                    break;
                case "/display":
                    showResource(request, response);
                    break;
                case "/update":
                    updateResource(request, response);
                    break;
                default:
                    listResource(request, response);
                    break;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void listResource(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, Exception {

        request.getParameter("");
        Resource resource = client.getAllResource();
        request.setAttribute("resource",resource);
        RequestDispatcher dispatcher = request.getRequestDispatcher("GetAllResource.jsp");
        dispatcher.forward(request, response);

    }


    private void showResource(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        System.out.println("+++++++"+request.getParameter("resource_id"));
        Resource resource = client.getResource(request.getParameter("resource_id"));
        request.setAttribute("resource",resource);
        RequestDispatcher dispatcher = request.getRequestDispatcher("GetResource.jsp");
        dispatcher.forward(request, response);
    }

    private void registerResource(HttpServletRequest request, HttpServletResponse response)
            throws IOException, Exception {

        String [] array = new String[]{"resource_name","scopes","type","icon_uri","description"};
        request.getAttribute(String.valueOf(array));
        /*System.out.println("+++++++"+request.getParameter(array));*/
        Resource resource = client.registerResource();
        request.setAttribute("resource",resource);
        RequestDispatcher dispatcher = request.getRequestDispatcher("RegisterResource.jsp");
        dispatcher.forward(request, response);

    }

    private void updateResource(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

    }

    private void deleteResource(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, Exception {

        System.out.println("+++++++"+request.getParameter("resource_id"));

        Resource resource = client.getResource(request.getParameter("resource_id"));
        request.setAttribute("resource",resource);
        RequestDispatcher dispatcher = request.getRequestDispatcher("DeleteResource.jsp");
        dispatcher.forward(request, response);

}


    public static void main(String[] args){
        Client client = new Client();
        try {
            Resource resource=client.getResource("b549c9e8-1ca8-41eb-8b12-907b9fa164e4");
//            System.out.println(resource.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
