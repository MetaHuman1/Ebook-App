package com.DAO;

import com.entty.BookDetails;
import com.entty.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Cart> getBookByUser(int user_id) {
        List<Cart> list = new ArrayList<>();
        Cart cart = null;
        double totalPrice = 0;
        try {
            String sql = "select * from cart where uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user_id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                cart = new Cart();
                cart.setCid(rs.getInt(1));
                cart.setBid(rs.getInt(2));
                cart.setUser_id(rs.getInt(3));
                cart.setBookName(rs.getString(4));
                cart.setAuthor(rs.getString(5));
                cart.setPrice(rs.getDouble(6));

                totalPrice = totalPrice + rs.getDouble(7);
                cart.setTotalPrice(totalPrice);

                list.add(cart);


            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}




















