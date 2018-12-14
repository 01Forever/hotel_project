package xyz.for01.controller.board;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import xyz.for01.boardvo.BoardFileVo;
import xyz.for01.boardvo.BoardVo;

@WebServlet("/boardWrite.do")
public class BoardWriteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		RequestDispatcher dispatcher = req.getRequestDispatcher("board/boardWrite.jsp");
		dispatcher.forward(req, resp);
				
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		fileWrite(req, resp);
		resp.sendRedirect("boardList.do");
	}
	
	public void fileWrite(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
		
		try {
			List<FileItem> items = upload.parseRequest(req);
			System.out.println(items.size());
			Iterator<FileItem> iter = items.iterator();
			
			int category_num = 0;
			String title = "";
			String content = "";
			
			List<BoardFileVo> list = new ArrayList<>();
			BoardVo bVo = new BoardVo();
			
			
			while(iter.hasNext()) {
				FileItem item = iter.next();
				String fileName = null;
				if(!item.isFormField()) {
					fileName = item.getName();
					
					BoardFileVo vo = new BoardFileVo(0, 0, fileName, fileName, null);
					list.add(vo);
					
					ServletContext cxt = getServletContext();
					String dir = cxt.getRealPath("/");
					File uploadedFile = new File(dir + "/upload/"+ fileName);
					item.write(uploadedFile);
				}
				else {
					if(item.getFieldName().equals("category_num")) {
						category_num = Integer.parseInt(item.getString());
						bVo.setCategory_num(category_num);
					}
					if(item.getFieldName().equals("title")) {
						title = item.getString("utf-8");
						//bVo.setTitle(new String(title.getBytes("iso-8859-1")));
						bVo.setTitle(title);
					}
					if(item.getFieldName().equals("content")) {
						content = item.getString("utf-8");
						bVo.setContent(content);
					}
				}
				
			}
			
			BoardDAO dao = new BoardDAO();
			dao.insertBoard(bVo, list);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
