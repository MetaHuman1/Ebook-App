package com.DAO;

import com.entty.User;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAOImpl implements UserDAO{
    private Connection conn;

    public UserDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean userRegister(User user) {
        boolean f=false;

        try {
            String sql = "insert into users (name,email,phno,password) values (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPhNo());
            ps.setString(4,user.getPassword());

            int i = ps.executeUpdate();
            if (i==1) {
                f=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}







