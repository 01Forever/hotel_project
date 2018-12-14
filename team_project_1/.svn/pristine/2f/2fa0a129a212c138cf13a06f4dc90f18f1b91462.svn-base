<%@ page import = "java.net.URLDecoder" %>
<%@ page import = "java.net.URI" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	
	Cookie[] ck = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘본 상품 목록 나오게하기</title>
<style>
	table { width: 200px; }
	table tr { height: 25px; }
	table td { width: 100px }
</style>
</head>
<body>
<p>상품목록</p>
</br>
<table>
	<tr>
		<td>상품명</td>
		<td>단가</td>
	</tr>
	<tr>
		<td><a href="shop1.jsp">세탁기</a></td>
		<td>100</td>
	</tr>
	<tr>
		<td><a href="shop2.jsp">냉장고</a></td>
		<td>200</td>
	</tr>
	<tr>
		<td><a href="shop3.jsp">TV</a></td>
		<td>150</td>
	</tr>
</table>
<p>오늘 본 상품 목록</p>
</br>
<%
	if (ck != null) {
		for (Cookie c : ck) {
			if(c.getName().indexOf("sname") != -1) {
				out.println(java.net.URLDecoder.decode(c.getValue(),"UTF-8") + "</br>");
			}
		}
	}
%>
</body>
</html>