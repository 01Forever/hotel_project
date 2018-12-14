package xyz.for01.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import xyz.for01.boardvo.BoardVo;

@WebServlet("/boardUpdate.do")
public class BoardUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*String url = "board/boardUpdate.jsp";
		
		String boardno = req.getParameter("boardno");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		BoardVo bVo = bDao.selectBoardByBoardno(boardno);
		
		req.setAttribute("board", bVo);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		
		dispatcher.forward(req, resp);*/
		String boardno = req.getParameter("boardno");
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVo bVo = bDao.selectBoardByBoardno(boardno);
		
		req.setAttribute("board", bVo);
		RequestDispatcher dispatcher = req.getRequestDispatcher("board/boardUpdate.jsp");
		dispatcher.forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(req, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		int boardno = Integer.parseInt(multi.getParameter("boardno"));
		int category_num = Integer.parseInt(multi.getParameter("category_num"));
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
	
		BoardVo bVo = new BoardVo();
		bVo.setBoardno(boardno);
		bVo.setCategory_num(category_num);
		bVo.setTitle(title);
		bVo.setContent(content);
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateBoard(bVo);
		
		resp.sendRedirect("boardList.do");
	}

}
