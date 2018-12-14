package xyz.for01.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.google.gson.Gson;

import xyz.for01.dao.MemberDao;
import xyz.for01.membervo.MemberVo;
import xyz.for01.sha256.SecurityUtil;


@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailid = request.getParameter("emailid");
		
		MemberDao mDao = MemberDao.getInstance();
		
		int result = mDao.confirmID(emailid);
		
		request.setAttribute("emailid", emailid);
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVo mVo = new MemberVo();
		
		SecurityUtil securityUtil = new SecurityUtil(); //��ȣȭ Ŭ����
		// securityUtil.encryptSHA256()

		mVo.setEmailid(request.getParameter("emailid"));
		mVo.setPwd(securityUtil.encryptSHA256(request.getParameter("pwd")));
		 
		MemberDao mDao = MemberDao.getInstance();
		String result = mDao.memberLoginCheck(mVo);	
		Map<String, Object> resultMap =  new HashMap<String,Object>();
		

		resultMap.put("result", result);

		if ("2".equals(result)) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo); 
			session.setAttribute("loginUserId", mVo.getEmailid());
		}
		
		String json = new Gson().toJson(resultMap);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}

}
