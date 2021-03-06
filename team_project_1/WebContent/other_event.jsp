<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
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
	
	#event {
		background-color: black;
	}
	
	.eventContainer {
		float: right;
		width: 78%;
	}
	
	.eventList {
		overflow: hidden;
		display: block;
	}
	
	.eventList li {
		padding: 0 25px 70px 0;
	}
	
	#eventName {
		font-size: 20px;
		color: black;
		width: auto;
		padding-bottom: 5px;
		display: block;
	}
	
	#writeDate {
		font-size: 15px;
		color: gray;
		width: auto;
	}
	
	.eventList img {
		width: 90%;
		margin-top: 10px;
		display: block;
	}
</style>
<meta charset="UTF-8">
<title>더보기 - 이벤트</title>
</head>
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
	<div class="contents">
		<div class="otherList">
			<ul>
				<li><a href="#">공지사항</a></li>
				<li id="event"><a href="#">이벤트</a></li>
				<li><a href="#">자주 묻는 질문</a></li>
				<li><a href="#">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</div>
		<div class="eventContainer">
			<div class="eventList">
				<ul>
					<li>
						<a href="#">
							<span id="eventName">이벤트1</span>
							<span id="writeDate">기간</span>
							<img alt="이벤트1" src="images/event1.png">
						</a>
					</li>
					<li>
						<a href="#">
							<span id="eventName">이벤트2</span>
							<span id="writeDate">기간</span>
							<img alt="이벤트2" src="images/event2.png">
						</a>
					</li>
					<li>
						<a href="#">
							<span id="eventName">이벤트3</span>
							<span id="writeDate">기간</span>
							<img alt="이벤트3" src="images/event3.png">
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>	
</div>
</body>
</html>