package xyz.for01.controller.Inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inquiryBoardList.do")
public class InquiryBoardList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InquiryBoardDAO IDAO = InquiryBoardDAO.getInsatcne();
		
		List<InquiryBoardVo> inquiryBoardList = IDAO.selectAllInquiryBoards();
		req.setAttribute("inquiryBoardList", inquiryBoardList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("boardInquiry/InquiryboardList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
