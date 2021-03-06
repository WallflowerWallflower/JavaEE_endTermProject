package kz.javaee.music.service;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AdminServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        request.getRequestDispatcher("adminPage.jsp").include(request, response);

        Cookie ck[]=request.getCookies();
        if(ck!=null){
            String name=ck[0].getValue();
            if(!name.equals("")||name!=null){
                out.print("<b>Welcome to Admin Profile</b>");
                out.print("<br>Welcome, "+name);
            }
        }else{
            out.print("Please login first");
            request.getRequestDispatcher("adminLogin.jsp").include(request, response);
        }
        out.close();
    }
}
