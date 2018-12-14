package xyz.for01.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.dao.MemberDao;
import xyz.for01.membervo.MemberVo;

/**
 * Servlet implementation class UserListModify 
 */
// 관리자 회원 리스트 수정 페이지
@WebServlet("/userListModify")
public class UserListModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
																																				
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao mDao = MemberDao.getInstance();
		MemberVo mVo = mDao.selectUserByEmailidDelyn(Integer.parseInt(request.getParameter("userno")));
		
		request.setAttribute("user", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("userListModify.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String emailId = request.getParameter("emailId");
		int userNo = Integer.parseInt(request.getParameter("userno"));
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String grade = request.getParameter("grade");
		String delyn = request.getParameter("delyn");

		MemberVo mVo = new MemberVo();
		mVo.setUserno(userNo);
		mVo.setEmailid(emailId);
		mVo.setNic(nic);
		mVo.setPhone(phone);
		mVo.setGrade(grade);
		mVo.setDelyn(delyn);
		
		MemberDao mDao = MemberDao.getInstance();
		int result = mDao.userListModify(mVo);
		
		response.sendRedirect("./userList");
	}

}
