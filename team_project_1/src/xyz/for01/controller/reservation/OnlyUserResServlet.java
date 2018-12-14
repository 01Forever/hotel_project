package xyz.for01.controller.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.dao.ReservationDao;
import xyz.for01.reservation.ReservationVo;

@WebServlet("/reservationListCheck")
public class OnlyUserResServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int res_idx = Integer.parseInt(req.getParameter("res_idx"));
		ReservationDao rDao = ReservationDao.getInstance();
		ReservationVo rVo = rDao.getResOnly(res_idx);
		
		req.setAttribute("rVo", rVo);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("./ReserveListCheck.jsp");
		dispatcher.forward(req, resp);
	}
	
	
}
