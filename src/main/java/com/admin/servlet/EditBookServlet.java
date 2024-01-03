package com.admin.servlet;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entty.BookDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/edit_book")
public class EditBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            int id=Integer.parseInt(req.getParameter("id"));
            String bookName = req.getParameter("bName");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String status = req.getParameter("status");

            BookDetails bookDetails = new BookDetails();
            bookDetails.setBookName(bookName);
            bookDetails.setAuthor(author);
            bookDetails.setPrice(price);
            bookDetails.setStatus(status);

            BookDAOImpl bookDAO = new BookDAOImpl(DBConnect.getConn());
            boolean f = bookDAO.updateEditBook(bookDetails);

            HttpSession session = req.getSession();

            if(f){
                session.setAttribute("successMsg", "Book Update Successfully..");
                resp.sendRedirect("/admin/all_books.jsp");
            } else {
                session.setAttribute("failedMsg", "Something wrong on server..");
                resp.sendRedirect("/admin/all_books.jsp");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
