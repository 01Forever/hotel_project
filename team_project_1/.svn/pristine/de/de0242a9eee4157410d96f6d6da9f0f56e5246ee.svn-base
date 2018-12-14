package xyz.for01.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import xyz.for01.dao.Email;

// 이메일 서블릿
@WebServlet("/emailPermission")
public class EmailPermissionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		Map<String, Object> resultMap = new HashMap<String, Object>();

		String email = "";

		email = request.getParameter("emailId").toString();
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		
		for (int i = 0; i < 5; i++) {
			// 포문을 돌려서 5자리의 랜덤 숫자를 만들어 낸다.
			if (rnd.nextBoolean()) {
				buf.append((char) ((int) (rnd.nextInt(26)) + 97));
			} else {
				buf.append((rnd.nextInt(10)));
			}
		}
		
		String key = buf.toString(); // 랜덤 숫자를 key에 저장한다.
		resultMap.put("result", key);
		Email.emailSend(key, email); // 이메일 메서드에 키값과 이메일 값을 보낸다
		String json = new Gson().toJson(resultMap);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	}
}
