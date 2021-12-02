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
import connection.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

@WebServlet("/signUpServlet")

public class signUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        PrintWriter out = res.getWriter();
        out.println("Get Request Is Not Allowed");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int uid;

        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (!name.isEmpty() && !email.isEmpty() && !password.isEmpty()) {

            try {

                Connection connection = DatabaseConnection.initializeDatabase();
                String checkEmail = "select * from jobseeker where Email = '" + email + "'";
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery(checkEmail);

                if (rs.next()) {

                    session.setAttribute("error", "Email Already Exist !");
                    session.setMaxInactiveInterval(3);
                    resp.sendRedirect("/JobPortal/pages/signup");

                } else {

                    try {
                        String query = "insert into jobseeker(FirstName,Email,Password)values(?,?,?)";
                        PreparedStatement stmt1 = connection.prepareStatement(query);

                        stmt1.setString(1, name);
                        stmt1.setString(2, email);
                        stmt1.setString(3, password);
                        stmt1.execute();

                        String selectQuery = "select * from jobseeker where Email = '" + email + "'";

                        ResultSet rs1 = stmt1.executeQuery(selectQuery);

                        if (rs1.next()) {

                            uid = Integer.parseInt(rs1.getString("Id"));

                            session.setAttribute("uid", uid);
                            resp.sendRedirect("/JobPortal");

                            out.println("Success Insertion Id is " + uid);
                        }

                    } catch (IOException | NumberFormatException | SQLException e) {
                        out.println("Error : " + e);
                    }

                }

            } catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
                out.println("Error : " + e);
            }
        } else {
            session.setAttribute("error", "Please Enter Valid Value");
            session.setMaxInactiveInterval(3);
            resp.sendRedirect("/JobPortal/pages/signup");
        }

    }

}
