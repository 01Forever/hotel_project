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

@WebServlet("/RecommendPage")
public class RecommendHotelServelt extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("recommend_hotel.jsp");
		dispatcher.forward(req, resp);
	}
}
