package xyz.for01.resent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetCookieTest
 */
@WebServlet("/SetCookieTest")
public class SetCookieTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SetCookieTest() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cookie cookie1 = new Cookie("title","java");
		Cookie cookie2 = new Cookie("page","70");
		
		cookie1.setMaxAge(120);
		cookie2.setMaxAge(120);
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
