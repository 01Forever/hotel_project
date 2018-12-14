package xyz.for01.chart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChartServlet
 */
@WebServlet("/BarChartServlet")
public class BarChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public BarChartServlet() {}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		ChartDao cDao = ChartDao.getInstance();
		
		String barChart = cDao.barChart();
		resp.getWriter().println(barChart);
				
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
	}

}
