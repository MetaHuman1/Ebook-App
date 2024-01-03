package com.admin.servlet;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/delete_book")
public class DeleteBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(req.getParameter("id"));

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            boolean f = dao.deleteBook(id);

            HttpSession session = req.getSession();

            if(f){
                session.setAttribute("successMsg", "Book Delete Successfully..");
                resp.sendRedirect("/admin/all_books.jsp");
            } else {
                session.setAttribute("failedMsg", "Something wrong on server..");
                resp.sendRedirect("/admin/all_books.jsp");
            }

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
