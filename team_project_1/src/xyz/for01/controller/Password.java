package xyz.for01.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import xyz.for01.dao.Email;
import xyz.for01.dao.MemberDao;
import xyz.for01.membervo.MemberVo;
import xyz.for01.sha256.SecurityUtil;


@WebServlet("/password")
public class Password extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("password.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String email = "";

		email = request.getParameter("emailId").toString();
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			if (rnd.nextBoolean()) {
				buf.append((char) ((int) (rnd.nextInt(26)) + 97));
			} else {
				buf.append((rnd.nextInt(10)));
			}
		}
		
		String key = buf.toString();
		Email.emailSend2(key, email);
		

		SecurityUtil securityUtil = new SecurityUtil();
		String emailId = email;
		String pwd = securityUtil.encryptSHA256(key);
		
		MemberVo mVo = new MemberVo();
		mVo.setEmailid(emailId);
		mVo.setPwd(pwd);
		
		MemberDao mDao = MemberDao.getInstance();
		int result = mDao.pwModify(mVo);

		HttpSession session = request.getSession();

		if (result == 1) { session.setAttribute("EmeliId", mVo.getEmailid()); }

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}
}
