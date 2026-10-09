package com.gym.servlet;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.gym.util.DBConnection;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO member(name,email,phone,join_date) VALUES(?,?,?,?)",
                Statement.RETURN_GENERATED_KEYS
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setDate(4, new java.sql.Date(System.currentTimeMillis()));

            ps.executeUpdate();

            // 🔥 GET MEMBER ID
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int memberId = rs.getInt(1);

                HttpSession session = req.getSession();
                session.setAttribute("member_id", memberId);
                session.setAttribute("name", name);
            }

            // 👉 Redirect to payment directly
            res.sendRedirect(req.getContextPath() + "/pages/common/login.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error: " + e.getMessage());
        }
    }
}