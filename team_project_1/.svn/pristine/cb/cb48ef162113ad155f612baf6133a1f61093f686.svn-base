package xyz.for01.controller.Inquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InquiryBoardDelete.do")
public class InquiryBoardDeleteServlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardno = req.getParameter("boardno");
		
		InquiryBoardDAO ibDao = InquiryBoardDAO.getInsatcne();
		InquiryBoardVo ibVo = ibDao.selectInquiryBoardByBoardno(boardno);
		ibDao.deleteinquiryBoard(boardno);
		
		req.setAttribute("inquiryboard", ibVo);
		resp.sendRedirect("inquiryBoardList.do");
		/*RequestDispatcher dispatcher = req.getRequestDispatcher("inquiryboard/InquiryboardList.jsp");
		dispatcher.forward(req, resp);*/
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String boardno = req.getParameter("boardno");
		
		InquiryBoardDAO ibDao = InquiryBoardDAO.getInsatcne();
		//ibDao.deleteInquiryBoard(boardno);
		resp.sendRedirect("inquiryboardList.jsp");
	}

	
}
