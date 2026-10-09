package com.gym.dao;

import java.sql.*;
import com.gym.util.DBConnection;

public class MemberDAO {

    public void addMember(String name, String phone) throws Exception {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO member(name, phone, join_date) VALUES (?, ?, ?)");

        ps.setString(1, name);
        ps.setString(2, phone);
        ps.setDate(3, new java.sql.Date(System.currentTimeMillis()));

        ps.executeUpdate();
    }
}