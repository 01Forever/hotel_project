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
	
	.eventContent {
		overflow: hidden;
	}
	
	.eventPage {
		overflow: hidden;
		margin: 50px 0 0 0;
		display: block;
	}
	
	.eventPage li {
		padding: 0 80px 50px 0;
	}
	
	#eventName {
		font-size: 20px;
		color: black;
		width: 370px;
		padding-left: 50px;
	}
	
	#writeDate {
		font-size: 15px;
		color: gray;
		width: auto;
		float: right;
	}
	
	.eventList {
		text-align: center;
		overflow: hidden;
	}
	
	.eventList button {
		border-radius: 5px;
	    width: 150px;
	    background-color: #f8585b;
	    border: none;
	    color: #fff;
	    padding: 15px 0;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 15px;
	    margin: 4px;
	    cursor: pointer;
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
			<div class="eventContent">
				<p>내용</p>
			</div>
			<div class="eventPage">
				<ul>
					<li>
						<a href="#">
							<span>이전글</span>
							<span id="eventName">이벤트1</span>
							<span id="writeDate">기간</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span>다음글</span>
							<span id="eventName">이벤트3</span>
							<span id="writeDate">기간</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="eventList">
				<button type="submit">목록보기</button>
			</div>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>	
</div>
</body>
</html>