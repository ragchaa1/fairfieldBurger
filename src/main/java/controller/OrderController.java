package controller;


import dao.OrderDAO;
import model.Cart;
import model.Order;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet({ "/order"})
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
//        Cart cart = (Cart)session.getAttribute("cart");
        session.setAttribute("orders", OrderDAO.getOrdersByUsername(user.getUsername()));
        resp.sendRedirect("orders.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        StringBuilder address = new StringBuilder();
        address.append(req.getParameter("address"));
        address.append(", " + req.getParameter("city"));
        address.append(", " + req.getParameter("state"));
        address.append(", " + req.getParameter("zip"));
        Cart cart = (Cart) session.getAttribute("cart");

        Order order = new Order(user, cart, address.toString(),req.getParameter("state"));

        OrderDAO.placeOrder(user.getUsername(), order);
      //  OrderDAO orderDAO=new OrderDAO();
       // orderDAO.placeOrder(user.getUsername(), order);

        session.setAttribute("cart", new Cart());
        resp.sendRedirect("/order");
    }
}
