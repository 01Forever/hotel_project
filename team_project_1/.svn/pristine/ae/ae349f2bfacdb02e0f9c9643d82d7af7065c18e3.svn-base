package xyz.for01.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.boardvo.BoardVo;

@WebServlet("/boardView.do")
public class BoardViewServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String boardno = req.getParameter("boardno");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		
		BoardVo bVo = bDao.selectBoardByBoardno(boardno);
		
		req.setAttribute("board", bVo);
		RequestDispatcher dispatcher = req.getRequestDispatcher("board/boardView.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
