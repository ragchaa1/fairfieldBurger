package controller;

import dao.DataDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

public class DataController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DataDAO dao;

    @Override
    public void init() throws ServletException {
        super.init();
    }
}
