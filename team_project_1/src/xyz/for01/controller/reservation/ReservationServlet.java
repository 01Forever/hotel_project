package xyz.for01.controller.reservation;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.dao.HotelDAO;
import xyz.for01.dao.MemberDao;
import xyz.for01.dao.ReservationDao;
import xyz.for01.hotelvo.HotelVo;
import xyz.for01.hotelvo.RoomVo;
import xyz.for01.membervo.MemberVo;
import xyz.for01.reservation.ReservationVo;

@WebServlet("/resPage")
public class ReservationServlet extends HttpServlet{
	long diff = 0;
	long diffDays = 0;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String res_Start = req.getParameter("res_Start");
		String res_End = req.getParameter("res_End");
		String roomNo = req.getParameter("roomNo");
		
		try {
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	        java.util.Date beginDate = formatter.parse(res_Start);
	        java.util.Date endDate = formatter.parse(res_End);
	         
	        // 시간차이를 시간,분,초를 곱한 값으로 나누면 하루 단위가 나옴
	        diff = endDate.getTime() - beginDate.getTime();
	        diffDays = diff / (24 * 60 * 60 * 1000);
	         
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
		
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		
		MemberDao mDao = MemberDao.getInstance();
		ReservationDao rDao = ReservationDao.getInstance();
		RoomVo rVo = rDao.showRoomInfo(Integer.parseInt(roomNo));
		
		String price = String.valueOf((Integer.parseInt(rVo.getPrice()) * diffDays));
		
		rVo.setPrice(price);
		
		if(mVo != null) {
			mVo = mDao.getResMember(mVo.getUserno());
		}
		
		System.out.println(mVo);
		
		req.setAttribute("start", res_Start);
		req.setAttribute("end", res_End);
		req.setAttribute("loginUser", mVo);
		req.setAttribute("roomInfo", rVo);
		RequestDispatcher dispatcher = req.getRequestDispatcher("./hotel/payment.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		String userNo;
		if(mVo == null) {
			userNo = "0";
		}else {
			userNo = String.valueOf(mVo.getUserno());
		}
		
		String name = req.getParameter("userName");
		String phone = req.getParameter("phone");
		String grade = req.getParameter("grade");
		String res_Start = req.getParameter("res_Start");
		String res_End = req.getParameter("res_End");
		String hotelNo = req.getParameter("hotelNo");
		String roomNo = req.getParameter("roomNo");
		String price = req.getParameter("price");
		String mileage = req.getParameter("mileage") == null ? "0" : req.getParameter("mileage");
		String price_ori = price;
		price = String.valueOf(Long.parseLong(price) - Long.parseLong(mileage));
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date resStart = null;
		Date resEnd = null;
		
		try {
			resStart = new Date(format.parse(res_Start).getTime());
			resEnd = new Date(format.parse(res_End).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ReservationVo rVo = new ReservationVo(name, phone, 
				Integer.parseInt(grade), resStart, resEnd, 
				Integer.parseInt(hotelNo), Integer.parseInt(roomNo), price, Long.parseLong(userNo));
		
		ReservationDao rDao = ReservationDao.getInstance();
		
		rDao.insertRes(rVo, mileage, price_ori);
		
		resp.sendRedirect("resCheckPage");
	}
	
}
