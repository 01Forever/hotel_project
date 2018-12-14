package xyz.for01.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.boardvo.BoardVo;

@WebServlet("/boardDelete.do")
public class BoardDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String boardno = req.getParameter("boardno");
		
		BoardDAO bDao =BoardDAO.getInstance();
		BoardVo bVo = bDao.selectBoardByBoardno(boardno);
		bDao.deleteBoard(boardno);
		
		req.setAttribute("boardList", bVo);
		resp.sendRedirect("boardList.do");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*String url = null;
		
		String boardno = req.getParameter("boardno");
		String pwd = req.getParameter("pwd");
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVo bVo = bDao.selectBoardByBoardno(boardno);*/
		
		/*String boardno = req.getParameter("boardno");
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.deleteBoard(boardno);
		
		resp.sendRedirect("boardList.do");*/
	}

}
