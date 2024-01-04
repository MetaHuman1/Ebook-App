package com.user.servlet;


import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entty.BookDetails;
import com.entty.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            int bid = Integer.parseInt(req.getParameter("bid"));
            int uid = Integer.parseInt(req.getParameter("uid"));

            BookDAOImpl bookDAO = new BookDAOImpl(DBConnect.getConn());
            BookDetails bookDetails = bookDAO.getBookById(bid);

            Cart cart = new Cart();
            cart.setBid(bid);
            cart.setUser_id(uid);
            cart.setBookName(bookDetails.getBookName());
            cart.setAuthor(bookDetails.getAuthor());
            cart.setPrice(Double.parseDouble(bookDetails.getPrice()));
            cart.setTotalPrice(Double.parseDouble(bookDetails.getPrice()));

            CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
            boolean f = dao2.addCart(cart);

            HttpSession session = req.getSession();

            if(f) {
                session.setAttribute("addCart","Book added to cart");
                resp.sendRedirect("all_new_book.jsp");
            } else {
                session.setAttribute("failed","Something wrong on server");
                resp.sendRedirect("all_new_book.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}


















