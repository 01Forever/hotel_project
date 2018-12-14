<%@page import="java.util.List"%>
<%@page import="java.text.Format"%>
<%@ page import= "xyz.for01.hotelvo.HotelVo"%>
<%@ page import= "xyz.for01.cooki.CookieUtils" %>
<%@ page import= "java.net.URLEncoder" %>
<%@ page import= "java.net.URI" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	
	Cookie[] ck = request.getCookies();
	
	Cookie c = new Cookie("sname1",URLEncoder.encode("세탁기","utf-8"));
	
	
		
	c.setMaxAge(60*60*24);
	
	response.addCookie(c);
%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="./comm/head.jsp" />
<jsp:include page="./comm/header.jsp" />
<script src="./js/cookie.js"></script>
<style>
.contents {
	background-color: #eee;
	width: 60%;
	height: 1000px;
	margin: 0 auto;
	padding-top: 30px;
}

.otherList {
	background-color: gray;
	font-size: 18px;
	width: 15%;
	padding: 20px 0;
	margin-right: 70px;
	float: left;
	line-height: 3;
}

.otherList a {
	padding-left: 15px;
}

#condition {
	background-color: black;
}

.content {
	width: 95%;
}

.tab {
	overflow: hidden;
	border-bottom: 1px solid gray;
	padding-bottom: 20px;
}

.tabList {
	overflow: hidden;
	display: block;
}

.tabList b {
	font-size: 18px;
}

.tabList div {
	width: 700px;
	height: 200px;
	margin: 30px 0;
	overflow-x: hidden;
	overflow-y: auto;
}
</style>
<script type="text/javascript" src="js/toggle.js"></script>
<meta charset="UTF-8">
<title>더보기 - 예약내역</title>
</head>
<body>
	<%
		String title = (String) request.getAttribute("title");
		String mypage = (String) request.getAttribute("page");
	%>
	<div class="container">
		<div class="contents">
			<div class="otherList">
				<ul>
					<li><a href="#">포인트</a></li>
					<li id="notice"><a href="#">예약 내역</a></li>
					<li><a href="#">최근 본 숙소</a></li>
					<li><a href="#">내 정보 관리</a></li>
				</ul>
			</div>
			<div>
				<h2><%=title%>
					<%=mypage%>
				</h2>
			</div>
			<div>
				
			</div>
		</div>
		<jsp:include page="./comm/footer.jsp" />
	</div>
</body>
</html>