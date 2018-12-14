<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTf-8");

	Cookie c = new Cookie("name", null);
	c.setMaxAge(0);
	response.addCookie(c);

	Cookie[] ck = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>삭제 후</p>

<%
	for(Cookie cc: ck) {
		out.println(cc.getName()+":"+cc.getValue());
		
	}
%>
</body>
</html>