package xyz.for01.controller.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.dao.ReservationDao;
import xyz.for01.membervo.MemberVo;
import xyz.for01.reservation.ReservationVo;

@WebServlet("/resCheckPage")
public class ResCheckServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		
		ReservationDao rDao = ReservationDao.getInstance();
		ReservationVo rVo = rDao.checkReservation();
		
		req.setAttribute("loginUser", mVo);
		req.setAttribute("reserve", rVo);
		RequestDispatcher dispatcher = req.getRequestDispatcher("hotel/resCheck.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
}
