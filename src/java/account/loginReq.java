/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.DatabaseConnection;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "loginReq", urlPatterns = {"/loginReq"})
public class loginReq extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        PrintWriter out = res.getWriter();
        out.println("Get Request Not Allowed");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        PrintWriter out = res.getWriter();
        HttpSession session = req.getSession();

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (!email.isEmpty() && !password.isEmpty()) {

            try {

                String query = "select * from jobseeker where email ='"
                        + email + "' and password ='"
                        + password + "'";

                Connection connetion = DatabaseConnection.initializeDatabase();
                Statement stmt = connetion.createStatement();

                ResultSet rs = stmt.executeQuery(query);

                if (rs.next()) {
                    String uid = rs.getString("Id");
                    session.setAttribute("uid", uid);
                    res.sendRedirect("/JobPortal");
                } else {
                    session.setAttribute("error", "Invalid Email Or Password");
                    session.setMaxInactiveInterval(3);
                    res.sendRedirect("/JobPortal/pages/login");
                }

            } catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
                out.println(e);
            }
        } else {
            session.setAttribute("error", "Please Enter Valid Value");
            session.setMaxInactiveInterval(3);
            res.sendRedirect("/JobPortal/pages/login");
        }

    }

}
