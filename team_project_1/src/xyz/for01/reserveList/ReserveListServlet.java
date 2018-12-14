package xyz.for01.reserveList;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.membervo.MemberVo;

/**
 * Servlet implementation class ReserveListServlet
 */
@WebServlet("/ReserveListPage")
public class ReserveListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ReserveListServlet() {}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		
		if(mVo == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("./reservation/unuserCheck.jsp");
			dispatcher.forward(req, resp);
		}else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("./ReserveList.jsp");
			dispatcher.forward(req, resp);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
