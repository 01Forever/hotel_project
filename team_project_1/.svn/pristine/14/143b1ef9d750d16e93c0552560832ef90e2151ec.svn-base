package xyz.for01.controller.hotel;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.dao.HotelDAO;
import xyz.for01.hotelvo.HotelVo;

@WebServlet("/HotelSearch")
public class HotelSearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		req.setCharacterEncoding("utf-8");
		
		String borugh = req.getParameter("borugh");
		String resStartStr = req.getParameter("res_Start");
		String resEndStr = req.getParameter("res_End");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date resStart = null;
		Date resEnd = null;
		
		try {
			resStart = new Date(format.parse(resStartStr).getTime());
			resEnd = new Date(format.parse(resEndStr).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
				
		HotelVo hVo = new HotelVo();
		hVo.setBorugh(borugh);
		hVo.setRes_Start(resStart);
		hVo.setRes_End(resEnd);
		
		HotelDAO hDao = HotelDAO.getInstance();
		List<HotelVo> list =  hDao.searchHotelList(borugh);
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("search.jsp");
		dispatcher.forward(req, resp);
	}
	
}
