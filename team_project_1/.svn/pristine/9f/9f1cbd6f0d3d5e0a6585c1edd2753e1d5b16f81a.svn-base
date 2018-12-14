package xyz.for01.controller.reservation;

import java.io.IOException;
import java.util.Date;

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

@WebServlet("/reservationCancel")
public class OnlyUserCancelServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int res_idx = Integer.parseInt(req.getParameter("res_idx"));
		ReservationDao rDao = ReservationDao.getInstance();
		ReservationVo rVo = rDao.getResOnly(res_idx);
		String cancel_vat;
		String payBack;
		Date now = new Date();
		Date startDate = rVo.getRes_start();
		Date endDate = rVo.getRes_end();
		Long diffDay = (startDate.getTime() - now.getTime()) / (24*60*60*1000);
		Long day = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
		rVo.setPrice_ori(String.valueOf((int)(Integer.parseInt(rVo.getPrice_ori()) * day)));
		
		if(diffDay >= 2.0) {
			cancel_vat = "0";
			payBack = rVo.getPrice();
		}else if(diffDay >= 1.0) {
			cancel_vat = String.valueOf((int)(Integer.parseInt(rVo.getPrice_ori()) * 0.5));
			payBack = String.valueOf(Integer.parseInt(rVo.getPrice())-Integer.parseInt(cancel_vat));
		}else {
			cancel_vat = rVo.getPrice_ori();
			payBack = "0";
		}
		
		req.setAttribute("rVo", rVo);
		req.setAttribute("cancel_vat", cancel_vat);
		req.setAttribute("payBack", payBack);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("./ReserveListCancel.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int res_idx = Integer.parseInt(req.getParameter("res_idx"));
		ReservationDao rDao = ReservationDao.getInstance();
		HttpSession session = req.getSession();
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		rDao.deleteRes(res_idx);
		
		resp.getWriter().print("<script>opener.location.reload(); window.close();</script>");
		
	}
	
}
