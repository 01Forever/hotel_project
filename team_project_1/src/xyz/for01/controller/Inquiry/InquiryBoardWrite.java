package xyz.for01.controller.Inquiry;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/inquiryBoardWrite.do")
public class InquiryBoardWrite extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = req.getRequestDispatcher("boardInquiry/inquiryboardWrite.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		InquiryBoardVo IbVo = new InquiryBoardVo();
		
		
		IbVo.setCategory(req.getParameter("category"));
		IbVo.setEmailid(req.getParameter("emailid"));
		IbVo.setTitle(req.getParameter("title"));
		IbVo.setContent(req.getParameter("content"));
		IbVo.setPhone(req.getParameter("phone"));
		System.out.println(IbVo);

		InquiryBoardDAO BDAO = InquiryBoardDAO.getInsatcne();
		
		BDAO.insertInquiryBoard(IbVo);
		
		resp.sendRedirect("inquiryBoardList.do");
		
		
		
	}

}
