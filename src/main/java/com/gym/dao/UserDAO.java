package com.gym.dao;

import java.sql.*;
import com.gym.util.DBConnection;

public class UserDAO {

    // ✅ REGISTER
    public static boolean register(String name, String email, String password) {
        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(name,email,password) VALUES(?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            ps.executeUpdate();
            return true;

        } catch(Exception e) {
            return false;
        }
    }

    // ✅ LOGIN
    public static boolean login(String email, String password) {
        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM users WHERE email=? AND password=?"
            );

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch(Exception e) {
            return false;
        }
    }
}