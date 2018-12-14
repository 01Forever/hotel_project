package xyz.for01.chart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DonutChartServlet
 */
@WebServlet("/DonutChartServlet")
public class DonutChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DonutChartServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html; charset=utf-8");
		ChartDao cDao = ChartDao.getInstance();
		
		String donutChart = cDao.donutChart();
		response.getWriter().println(donutChart);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
