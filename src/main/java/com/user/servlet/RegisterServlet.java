package com.user.servlet;

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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");

//            System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPhNo(phno);
            user.setPassword(password);
            System.out.println(user.getId()+user.getName());


            HttpSession session = req.getSession();

            if(check!=null) {
                UserDAOImpl userDAO = new UserDAOImpl(DBConnect.getConn());
                boolean f = userDAO.userRegister(user);
                if(f) {
//                    System.out.println("User Register Success...");
                    session.setAttribute("successMsg","Registration Successfully...");
                    resp.sendRedirect("register.jsp");
                } else {
//                    System.out.println("Something wrong on server...");
                    session.setAttribute("failedMsg","Something wrong on server...");
                    resp.sendRedirect("register.jsp");
                }
            } else {
//                System.out.println("Please Check Agree Terms & Conditions");
                session.setAttribute("failedMsg","Please Check Agree Terms & Condition");
                resp.sendRedirect("register.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
