package xyz.for01.cooki;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookiServlet
 */
@WebServlet("/CookiServlet")
public class CookiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CookiServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cp= request.getContextPath();
		request.setCharacterEncoding("UTF-8");
		
		Cookie[] ck = request.getCookies();
		
		Cookie c = new Cookie("sname3",URLEncoder.encode("TV","utf-8"));
			
		c.setMaxAge(60*60*24);
		
		response.addCookie(c);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
