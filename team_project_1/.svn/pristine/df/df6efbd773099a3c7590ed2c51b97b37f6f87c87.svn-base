package xyz.for01.resent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class GetCookieTest
 */
@WebServlet("/GetCookieTest")
public class GetCookieTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public GetCookieTest() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		String title = "";
		String page = "";
		for (int i=0; i< cookies.length; i++) {
			System.out.println(cookies[i].getName()+":"+cookies[i].getValue());
			if(cookies[i].getName().equals("title")) {
				title=cookies[i].getValue();
			}else if(cookies[i].getName().equals("page")) {
				page=cookies[i].getValue();
			}
		}
		request.setAttribute("title", title);
		request.setAttribute("page", page);
		
		RequestDispatcher rd = request.getRequestDispatcher("RecentViewPage.jsp");
		rd.forward(request, response);
				
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
