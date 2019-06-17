package controller;

import dao.OrderDAO;
import dao.PaymentDAO;
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

    @Override
    public void init() throws ServletException {
        paymentDAO = new PaymentDAO();
        orderDAO = new OrderDAO();
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
        request.setAttribute("payments", paymentDAO.getList());
        request.setAttribute("map", paymentDAO.getMap());
        request.setAttribute("yearList", paymentDAO.getIntList());
        request.setAttribute("state", paymentDAO.getState(integer));
        request.setAttribute("surveyMap", orderDAO.getStateStat());
        request.setAttribute("totalOrder",orderDAO.getTotalOrder());
        request.setAttribute("totalIncome",orderDAO.getTotalIncome());
/*
        response.setHeader("");*/
        RequestDispatcher view = request.getRequestDispatcher("chart.jsp");
        view.forward(request, response);
    }


}
