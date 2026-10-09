package com.gym.servlet;
import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import com.gym.util.DBConnection;
@WebServlet("/addMember")
public class AddMemberServlet extends HttpServlet {

protected void doPost(HttpServletRequest req,HttpServletResponse res)
throws ServletException, IOException {

String name=req.getParameter("name");
String phone=req.getParameter("phone");

String error=null;

if(name==null || !name.matches("[A-Za-z ]+")){
    error="Invalid name";
}
else if(phone==null || !phone.matches("\\d{10}")){
    error="Phone must be 10 digits";
}

if(error!=null){
    req.setAttribute("error", error);
    req.getRequestDispatcher("pages/admin/addMember.jsp").forward(req,res);
    return;
}

try{
Connection con=DBConnection.getConnection();

PreparedStatement ps=con.prepareStatement(
"INSERT INTO member(name,phone,join_date) VALUES(?,?,?)");

ps.setString(1,name);
ps.setString(2,phone);

java.sql.Date today=new java.sql.Date(System.currentTimeMillis());
ps.setDate(3,today);

ps.executeUpdate();

res.sendRedirect("pages/admin/payment.jsp");

}catch(Exception e){ e.printStackTrace(); }

}
}