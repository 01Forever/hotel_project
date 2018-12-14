<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp= request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	
	Cookie c1 = new Cookie("name","hong");
	Cookie c2 = new Cookie("age","20");
	
	c1.setMaxAge(60*60*24);
	c2.setMaxAge(60*60*24);
	
	response.addCookie(c1);
	response.addCookie(c2);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

쿠키저장 성공<br/>

<a href="cooki_ok.jsp">쿠키 가져오기</a>

</body>
</html>