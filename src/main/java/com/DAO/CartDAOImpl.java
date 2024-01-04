package com.DAO;

import com.entty.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDAOImpl implements CartDao{
    private Connection conn;
    public CartDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart cart) {
        boolean f = false;
        try {
            String sql = "insert into cart (bid,uid,bookname,author,price,total_price) values(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,cart.getBid());
            ps.setInt(2,cart.getCid());
            ps.setString(3,cart.getBookName());
            ps.setString(4,cart.getAuthor());
            ps.setDouble(5,cart.getPrice());
            ps.setDouble(6,cart.getTotalPrice());
            int i = ps.executeUpdate();

            if(i==1) {
                f=true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}




















