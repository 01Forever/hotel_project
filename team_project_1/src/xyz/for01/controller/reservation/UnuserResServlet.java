package xyz.for01.controller.reservation;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/reResCheckPage")
public class UnuserResServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			RequestDispatcher dispatcher = req.getRequestDispatcher("./reservation/unuserCheck.jsp");
			dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String userName = req.getParameter("userName");
		String phone = req.getParameter("phone");
		
		System.out.println(userName);
		System.out.println(phone);
		
		ReservationDao rDao = ReservationDao.getInstance();
		List<ReservationVo> rVo = rDao.unuserResCheck(userName, phone);
		System.out.println(rVo.size());
		if(rVo.size() == 0) {
			req.setAttribute("message", "일치하는 예약 정보가 없습니다.");
			RequestDispatcher dispatcher = req.getRequestDispatcher("./reservation/unuserCheck.jsp");
			dispatcher.forward(req, resp);
		}else {
			req.setAttribute("resUnuser", rVo);
			RequestDispatcher dispatcher = req.getRequestDispatcher("./reservation/unuserResList.jsp");
			dispatcher.forward(req, resp);
		}
		
	}
	
	
	
}
