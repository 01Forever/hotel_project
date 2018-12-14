package xyz.for01.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.boardvo.Paging;
import xyz.for01.dao.MemberDao;
import xyz.for01.membervo.MemberVo;

@WebServlet("/userList")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDao mDo = MemberDao.getInstance();
		
		MemberVo mVo = new MemberVo();
		HttpSession session = request.getSession();
		
		String col = request.getParameter("col");
        String word = request.getParameter("word");
		
		try {
			mVo = (MemberVo) session.getAttribute("loginUser");
			if (mVo == null || !"4".equals(mVo.getGrade())) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			} else {

				
				String page = request.getParameter("page");
				if(page == null) page = "1";
				
				MemberDao mDao = new MemberDao();
				
				int totalCount = mDao.getMemberListCount();
				
				Paging paging = new Paging();
				paging.setRecent(Integer.parseInt(page));
				paging.setPagePerView(10);
				paging.setRecentLastPPV(10);
				paging.setTotalPage(totalCount);
				paging.getPageCount();

				
				try {
					paging.setTotalPage(mDao.getMemberListCount());

					request.setAttribute("userList", mDao.getMemberList(paging.getStart(), paging.getEnd()));
					request.setAttribute("paging", paging);
					request.getRequestDispatcher("userList.jsp").forward(request, response);
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String[] userNo = request.getParameterValues("userno");
		String[] userNoList = request.getParameterValues("listUserNo");
		String[] grade = request.getParameterValues("grade");
		MemberDao mDao = MemberDao.getInstance();
		
		//int userNoCnt = userNo.length;
		int result = 0;
	
		for (int i = 0; i < userNoList.length; i++) {
			for (int j = 0; j < userNo.length; j++) {
				if (userNo[j].equals(userNoList[i])) {
					MemberVo mv = new MemberVo();
					mv.setUserno(Integer.parseInt(userNo[j]));
					mv.setGrade(grade[i]);
					result += mDao.selectUserModify(mv);
				}
			}
		}
		//doGet(request, response);
		response.sendRedirect("./userList");
	}
}