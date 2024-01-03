package com.admin.servlet;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entty.BookDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;


@WebServlet("/add_books")
@MultipartConfig
public class AddBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String bookName = req.getParameter("bName");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String categories = req.getParameter("categories");
            String status = req.getParameter("status");
            Part  part = req.getPart("bimg");
            String fileName = part.getSubmittedFileName();

            BookDetails bookDetails = new BookDetails(bookName,author,price,categories,status,fileName,"admin");


            BookDAOImpl bookDAO = new BookDAOImpl(DBConnect.getConn());



            boolean f=bookDAO.addBooks(bookDetails);

            HttpSession session = req.getSession();

            if(f) {
//                String path = "C:\\Users\\ACER\\OneDrive\\Документы\\SpringBoot\\Ebook-App\\src\\main\\webapp\\book";
                String path = getServletContext().getRealPath("")+"book";
                File file = new File(path);
                part.write(path+File.separator+fileName);

                session.setAttribute("successMsg", "Book Add Successfully");
                resp.sendRedirect("admin/add_book.jsp");
            } else {
                session.setAttribute("failedMsg", "Something wrong on server");
                resp.sendRedirect("admin/add_book.jsp");
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}






