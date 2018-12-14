<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Cookie[] cookies = request.getCookies();
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>이름 :
	<%=getCookieValue(cookies, "NAME")%></p>
	<p>성별 :
	<%=getCookieValue(cookies, "GENDER")%></p>
	<p>나이 :
	<%=getCookieValue(cookies, "AGE")%></p>


</body>
</html>
<%!private String getCookieValue(Cookie[] cookies, String name) {

		if (cookies == null)

			return null;

		//cookie에 cookies 배열의 객체를 한개씩 넣어서 cookies 배열 길이만큼 돌리라는 의미

		for (Cookie cookie : cookies) {

			if (cookie.getName().equals(name))

				return cookie.getValue();

		}

		return null;

	}%>

