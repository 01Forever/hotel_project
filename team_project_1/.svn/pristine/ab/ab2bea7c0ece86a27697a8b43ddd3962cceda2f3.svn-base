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
import xyz.for01.sha256.SecurityUtil;;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SecurityUtil securityUtil = new SecurityUtil(); // 암호화 클래스
		// securityUtil.encryptSHA256()

		String url = "login.jsp";

		String emailid = request.getParameter("emailid");
		String pwd = securityUtil.encryptSHA256(request.getParameter("pwd"));
		String nickName = request.getParameter("nickName");
		MemberDao mDao = MemberDao.getInstance();
		MemberVo mVo = new MemberVo();
		HttpSession session = request.getSession(); // 세션
		
		// 일반회원가입시
		if ("normal".equals(request.getParameter("loginType"))) {
			int result = mDao.userCheck(emailid, pwd); //유저가 있는지 체크합니다.
			// 유저 체크 메서드에서 반환된 값에 따라서 로그인처리를 합니다.
			if (result == 1) {
				mVo = mDao.getMember(emailid);
				session.setAttribute("loginUser", mVo); // 각각 정보를 세션안에 담아 줍니다.
				session.setAttribute("loginEmailId", request.getParameter("emailid").toString()); // 각각 정보를 세션안에 담아 줍니다. 
				session.setMaxInactiveInterval(1800); // 세션 유지 시간을 30분으로 지정합니다.
				//request.setAttribute("message", "");
				url = "main"; // 로그인이 성공적으로 되었을시에는 메인 화면으로 이동되게끔 URL 값을 바꿔주었습니다.
			} else if (result == 0) {
				//request.setAttribute("message", " ");
			} else if (result == -1) {
				//request.setAttribute("message", " ");
			}
		}
		response.sendRedirect(url);
	}
}
