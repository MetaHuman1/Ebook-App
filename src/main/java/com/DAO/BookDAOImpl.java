package com.DAO;

import com.entty.BookDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAOImpl implements BookDAO{

    private Connection conn;

    public BookDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean addBooks(BookDetails bookDetails) {
        boolean f=false;
        try {
            String sql = "insert into book_details(bookname, author, price, book_category, status, photo, user_email) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,bookDetails.getBookName());
            ps.setString(2,bookDetails.getAuthor());
            ps.setString(3,bookDetails.getPrice());
            ps.setString(4,bookDetails.getBookCategory());
            ps.setString(5,bookDetails.getStatus());
            ps.setString(6,bookDetails.getPhotoName());
            ps.setString(7,bookDetails.getUserEmail());

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
    public List<BookDetails> getAllBooks() {
        List<BookDetails> list = new ArrayList<BookDetails>();
        BookDetails bookDetails=null;
        try {
            String sql="select * from book_details";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bookDetails=new BookDetails();
                bookDetails.setId(rs.getInt(1));
                bookDetails.setBookName(rs.getString(2));
                bookDetails.setAuthor(rs.getString(3));
                bookDetails.setPrice(rs.getString(4));
                bookDetails.setBookCategory(rs.getString(5));
                bookDetails.setStatus(rs.getString(6));
                bookDetails.setPhotoName(rs.getString(7));
                bookDetails.setUserEmail(rs.getString(8));
                list.add(bookDetails);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public BookDetails getBookById(int id) {

        BookDetails bookDetails=null;
        try {
            String sql = "select * from book_details where book_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bookDetails = new BookDetails();
                bookDetails.setId(rs.getInt(1));
                bookDetails.setBookName(rs.getString(2));
                bookDetails.setAuthor(rs.getString(3));
                bookDetails.setPrice(rs.getString(4));
                bookDetails.setBookCategory(rs.getString(5));
                bookDetails.setStatus(rs.getString(6));
                bookDetails.setPhotoName(rs.getString(7));
                bookDetails.setUserEmail(rs.getString(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookDetails;
    }

    @Override
    public boolean updateEditBook(BookDetails bookDetails) {
        boolean f=false;

        try {
            String sql = "update book_details set bookname=?, author=?, price=?, status=? where book_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,bookDetails.getBookName());
            ps.setString(2,bookDetails.getAuthor());
            ps.setString(3,bookDetails.getPrice());
            ps.setString(4,bookDetails.getStatus());
            ps.setInt(5,bookDetails.getId());

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
    public boolean deleteBook(int id) {
        boolean f = false;

        try {
            String sql = "delete from book_details where book_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
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




