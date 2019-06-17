package controller;


import com.google.gson.Gson;
import dao.BurgerDAO;
import model.Cart;
import model.CartItem;
import model.Size;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet({ "/cart" })
public class CartController extends HttpServlet {
    Gson mapper = new Gson();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null)  resp.getWriter().print(mapper.toJson(null));
        else resp.getWriter().print(mapper.toJson(cart.getItems()));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String burgerId = req.getParameter("burgerId");
        String burgerSize = req.getParameter("burgerSize");
        String burgerQuantity = req.getParameter("burgerQuantity");
        int id = Integer.parseInt(burgerId);
        int quantity = Integer.parseInt(burgerQuantity);
        Size size = Size.valueOf(burgerSize);
        CartItem item = new CartItem(BurgerDAO.getBurgerById(id), size, quantity);

        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        cart.addItem(item);
        RequestDispatcher view = req.getRequestDispatcher("index.jsp");
        view.forward(req, resp);
    }
}