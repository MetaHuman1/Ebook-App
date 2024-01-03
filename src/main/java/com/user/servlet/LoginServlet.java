package com.user.servlet;

import com.DAO.UserDAO;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entty.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            UserDAO userDAO = new UserDAOImpl(DBConnect.getConn());

            HttpSession session = req.getSession();

            String email = req.getParameter("email");
            String password = req.getParameter("password");

            if("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User user = new User();
                user.setName("Admin");
                session.setAttribute("userobj",user);
                resp.sendRedirect("admin/home.jsp");
            } else {

                User user = userDAO.login(email,password);
                if(user!=null) {
                    session.setAttribute("userobj",user);
                    resp.sendRedirect("home.jsp");
                } else {
                    session.setAttribute("failedMsg","Email or Password Invalid");
                    resp.sendRedirect("login.jsp");
                }

                resp.sendRedirect("home.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
