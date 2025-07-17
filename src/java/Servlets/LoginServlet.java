/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;





/**
 *
 * @author kekel
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Load PostgreSQL JDBC driver
            Class.forName("org.postgresql.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/student_wellness",
                "postgres",  
                "postgres"  
            );

            // SQL to authenticate user
            PreparedStatement ps = conn.prepareStatement(
                "SELECT name FROM users WHERE email = ? AND password = ?"
            );
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String studentName = rs.getString("name");

                // Start session and redirect
                HttpSession session = request.getSession();
                session.setAttribute("studentName", studentName);
                response.sendRedirect("dashboard.jsp");

            } else {
                // Failed login
                request.setAttribute("errorMessage", "Invalid email or password.");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            }

            rs.close();
            ps.close();
            conn.close();

        } catch (Exception e) {
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }
}
