package controller;

import dao.BurgerDAO;
import dao.OrderDAO;
import dao.PaymentDAO;
import dao.UserDAO;
import lombok.extern.java.Log;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet({"/chart"})
public class ChartController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static Logger logger = Logger.getLogger("PaymentController");

    private PaymentDAO paymentDAO;
    private OrderDAO orderDAO;
    private BurgerDAO burgerDAO;
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        paymentDAO = new PaymentDAO();
        orderDAO = new OrderDAO();
        burgerDAO=new BurgerDAO();
        userDAO=new UserDAO();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        Integer integer=new Integer(1);
        if (id != null)
            integer = Integer.valueOf(id);
        System.out.println("id = " + id);

        //request.setAttribute("payments", paymentDAO.getPaymentByMonth(6));

        request.setAttribute("state", paymentDAO.getState(integer));
        request.setAttribute("totalOrder",orderDAO.getTotalOrder());
        request.setAttribute("totalIncome",orderDAO.getTotalIncome());
        request.setAttribute("totalProduct",burgerDAO.getSize());
        request.setAttribute("totalUser",userDAO.getSize());

        /*response.setHeader("");*/

        RequestDispatcher view = request.getRequestDispatcher("chart.jsp");
        view.forward(request, response);
    }


}
