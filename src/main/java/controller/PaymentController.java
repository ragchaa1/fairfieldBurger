package controller;


import com.google.gson.Gson;
import dao.DataDAO;
import dao.PaymentDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet({"/payment"})
public class PaymentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private PaymentDAO paymentDAO;
    Gson mapper = new Gson();

    @Override
    public void init() throws ServletException {
       paymentDAO=new PaymentDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("payments", paymentDAO.getPaymentByMonth(6));
        RequestDispatcher view = request.getRequestDispatcher("dashboard.jsp");
        view.forward(request, response);
    }


}
