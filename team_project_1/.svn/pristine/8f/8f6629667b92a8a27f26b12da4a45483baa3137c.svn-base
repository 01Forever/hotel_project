package xyz.for01.resent;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RecentViewPageServlet
 */
@WebServlet("/RecentViewPageServlet")
public class RecentViewPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RecentViewPageServlet() {}

	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Cookie cookie = new Cookie("HotelNo",URLEncoder.encode("HotelNo"));
		response.addCookie(cookie);
		
		Cookie[] cookies = request.getCookies();
		String HotelNo = null;
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("HotelNo")) {
					HotelNo = URLDecoder.decode(cookies[i].getValue());
				}
			}
		}
		
		//String HotelNo = request.getParameter("HotelNo");
		request.setAttribute("HotelNo", HotelNo);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("RecentViewPage.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
