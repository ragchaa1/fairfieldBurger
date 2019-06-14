package controller;

import dao.DataDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({"/product", ""})
public class DataController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DataDAO dao;


}
