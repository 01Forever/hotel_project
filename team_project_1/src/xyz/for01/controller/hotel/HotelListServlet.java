package xyz.for01.controller.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.dao.HotelDAO;
import xyz.for01.hotelvo.HotelVo;

@WebServlet("/hotelListPage")
public class HotelListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String res_Start = req.getParameter("res_Start");
		String res_End = req.getParameter("res_End");
		req.setAttribute("res_Start", res_Start);
		req.setAttribute("res_End", res_End);
		RequestDispatcher dispatcher = req.getRequestDispatcher("hotel/HotelList_new.jsp");
		dispatcher.forward(req, resp);
	}
}
