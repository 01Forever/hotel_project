package xyz.for01.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.dao.MemberDao;
import xyz.for01.membervo.MemberVo;

// х╦©Ь╟║ют
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("join.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String emailId = request.getParameter("emailId");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");

		MemberVo mVo = new MemberVo();
		mVo.setEmailid(emailId);
		mVo.setPwd(pwd);
		mVo.setPhone(phone);
		mVo.setNic(nic);

		MemberDao mDao = MemberDao.getInstance();
		int result = mDao.insertMember(mVo);

		HttpSession session = request.getSession();

		if (result == 1) {
			session.setAttribute("EmeliId", mVo.getEmailid());
			//request.setAttribute("message", "х╦О©╫О©╫О©╫О©╫О©╫т©О©╫ О©╫О©╫О©╫О©╫О©╫ъ╫О©╫О©╫о╢О©╫.");
		} else {
			//request.setAttribute("message", "х╦О©╫О©╫О©╫О©╫О©╫О©╫");
		}

		//RequestDispatcher dispatcher = request.getRequestDispatcher("");
		//dispatcher.forward(request, response);
		response.sendRedirect("login");
	}

}
