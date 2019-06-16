package controller;


import com.google.gson.Gson;
import dao.DataDAO;
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

@WebServlet({"/payment",""})
@Log
public class PaymentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static Logger logger = Logger.getLogger("PaymentController");

    private PaymentDAO paymentDAO;

    @Override
    public void init() throws ServletException {
       paymentDAO=new PaymentDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        logger.info("called");
        log.info("called");
        //request.setAttribute("payments", paymentDAO.getPaymentByMonth(6));
        request.setAttribute("payments", paymentDAO.getList());
        request.setAttribute("map", paymentDAO.getMap());
        request.setAttribute("yearList", paymentDAO.getIntList());
        request.setAttribute("asia", paymentDAO.getAsia());
        RequestDispatcher view = request.getRequestDispatcher("dashboard.jsp");
        view.forward(request, response);
    }


}
