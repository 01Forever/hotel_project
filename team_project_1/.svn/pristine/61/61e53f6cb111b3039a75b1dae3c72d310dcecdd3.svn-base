package xyz.for01.controller.board;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter;

@WebServlet("/FileDownload.do")
public class FileDownloadServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoardDAO bDao = new BoardDAO();

		String board_file = req.getParameter("file_idx");
		String fileName = bDao.selectFile(board_file);
		ServletContext cxt = getServletContext();
		String dir = cxt.getRealPath("/");

		File file = new File(dir + "upload/" + fileName);
		if (file.exists() && file.isFile()) { // exists(): 파일이 존재하는지 확인
			try {
				String userAgent = req.getHeader("User-Agent");
				boolean ie = userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("rv:11") > -1;

				if (ie) {
					fileName = URLEncoder.encode(file.getName(), "utf-8");
				} else {
					fileName = new String(file.getName().getBytes("utf-8"), "iso-8859-1");
				}

				resp.setContentType("application/octet-stream");
				resp.setHeader("Content-Disposition", "attachment;filename=\"" + fileName + "\";");

				FileInputStream fis = new FileInputStream(file);
				BufferedInputStream bis = new BufferedInputStream(fis);
				ServletOutputStream so = resp.getOutputStream();
				BufferedOutputStream bos = new BufferedOutputStream(so);

				byte[] data = new byte[2048];
				int input = 0;
				while ((input = bis.read(data)) != -1) {
					bos.write(data, 0, input);
					bos.flush();
				}

				if (bos != null)
					bos.close();
				if (bis != null)
					bis.close();
				if (so != null)
					so.close();
				if (fis != null)
					fis.close();
			} catch (Exception e) {
				System.out.println("Exception 에러");
			}
		} else {
			System.out.println("파일다운로드 에러");
		}
	}
}
	
