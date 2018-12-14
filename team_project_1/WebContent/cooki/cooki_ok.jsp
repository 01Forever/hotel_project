<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTf-8");

	Cookie[] ck = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>저장된 쿠키값</p>
<%
	for(Cookie c: ck){
		out.println(c.getName()+":"+c.getValue());
	}
	
%>

<a href="cooki_del.jsp">쿠키 삭제</a>
</body>
</html>

