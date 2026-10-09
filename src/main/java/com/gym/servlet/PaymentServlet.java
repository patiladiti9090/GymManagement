package com.gym.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.gym.util.DBConnection;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String amount = req.getParameter("plan");
        String mode = req.getParameter("mode");

        try {
            HttpSession session = req.getSession();

            // 🔥 IMPORTANT CHECK
            if (session.getAttribute("member_id") == null) {
                res.sendRedirect("pages/common/login.jsp");
                return;
            }

            int memberId = (int) session.getAttribute("member_id");

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO payment(member_id,amount,payment_mode,payment_date) VALUES(?,?,?,?)"
            );

            ps.setInt(1, memberId);
            ps.setInt(2, Integer.parseInt(amount));
            ps.setString(3, mode);
            ps.setDate(4, new java.sql.Date(System.currentTimeMillis()));

            ps.executeUpdate();

            // store for receipt
            session.setAttribute("amount", amount);
            session.setAttribute("mode", mode);

            res.sendRedirect(req.getContextPath() + "/pages/admin/receipt.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}