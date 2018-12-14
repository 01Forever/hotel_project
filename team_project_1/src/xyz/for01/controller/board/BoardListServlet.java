package xyz.for01.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.boardvo.BoardVo;
import xyz.for01.boardvo.Paging;

@WebServlet("/boardList.do")
public class BoardListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		List<BoardVo> boardList = bDao.selectAllBoards();
		
		
		req.setAttribute("boardList", boardList);
		
		
		String page = req.getParameter("page");
		if(page == null) page = "1";
		
		BoardDAO dao = new BoardDAO();
		
		Paging paging = new Paging();
		paging.setRecent(Integer.parseInt(page));
		paging.setPagePerView(3);
		paging.setRecentLastPPV(10);
		try {
			paging.setTotalPage(dao.getBoardCount());
			boardList = dao.getBoards(paging.getStart(), paging.getEnd());
			for(BoardVo vo : boardList) {
				vo.setFiles(bDao.selectFiles(vo.getBoardno() + ""));
			}
			req.setAttribute("boardList" , boardList);
			
			req.setAttribute("paging", paging);
			req.getRequestDispatcher("board/boardList.jsp").forward(req, resp);
		}
		catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}