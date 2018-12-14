package xyz.for01.chart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LineChartServlet")
public class LineChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LineChartServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/jsp; charset=utf-8");
		ChartDao cDao = ChartDao.getInstance();
		
		String lineChart = cDao.lineChart();
		response.getWriter().println(lineChart);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
