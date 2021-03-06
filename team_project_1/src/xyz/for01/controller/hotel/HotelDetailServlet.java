package xyz.for01.controller.hotel;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import xyz.for01.dao.HotelDAO;
import xyz.for01.hotelvo.HotelVo;
import xyz.for01.hotelvo.RoomImgVo;

@WebServlet("/hotelDetailPage")
public class HotelDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String hotelNo = req.getParameter("hotelNo");
		String res_Start = req.getParameter("res_Start");
		String res_End = req.getParameter("res_End");
		HotelDAO hDao = HotelDAO.getInstance();
		System.out.println(hotelNo);
		HotelVo hVo = hDao.hotelDetail(res_Start, Integer.parseInt(hotelNo));
		Map<String, List<String>> getStar = hDao.getStar(Integer.parseInt(hotelNo));
		
		req.setAttribute("getStar", getStar);
		req.setAttribute("myHotel", hVo);
		req.setAttribute("start", res_Start);
		req.setAttribute("end", res_End);
		RequestDispatcher dispatcher = req.getRequestDispatcher("hotel/hotelDetail.jsp");
		dispatcher.forward(req, resp);
		
		// System.out.println(getStar.get("getStar").get(0));
		// System.out.println(getStar.get("getStar").get(1));		
	}
}
