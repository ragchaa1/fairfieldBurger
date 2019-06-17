package controller;


//import com.fasterxml.jackson.databind.ObjectMapper;
import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet({ "/login" })
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");
        HttpSession session = req.getSession();
        User user = UserDAO.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("user", user);
            Cookie cookie = new Cookie("username", user.getUsername());
            if ("true".equals(remember)) cookie.setMaxAge(30*24*60*60);
            else cookie.setMaxAge(0);
            resp.addCookie(cookie);
            resp.sendRedirect("/");
            return;
        } else {
            resp.getWriter().print("Username or password doesn't match");
            return;
        }
//        Product product = mapper.readValue(request.getParameter("product"), Product.class);
//        out.print(mapper.writeValueAsString(product));
    }
}

