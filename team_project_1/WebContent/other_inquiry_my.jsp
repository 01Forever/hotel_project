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
	
	#inquiry {
		background-color: black;
	}
	
	.content {
		width: 72%;
		padding-right: 70px; 
		float: right;
	}
	
	.tab {
		overflow: hidden;
		border-bottom: 1px solid gray;
		padding-bottom: 20px;
	}
	
	.tab li {
		width: auto;
		margin-right: 20px;
		display: inline;
	}
	
	#my a {
		color: red;
		font-size: 20px;
		font-weight: bold;
	}
	
	.tabList {
		overflow: hidden;
		display: block;
	}
	
	.tabList li {
		border-bottom: 1px solid silver;
		padding: 40px 25px 35px 0;
	}
	
	.tabList li div {
		padding: 50px 0;
		display: none;
	}
	
	#inquiryName {
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
</style>
<script type="text/javascript" src="js/toggle.js"></script>
<meta charset="UTF-8">
<title>더보기 - 1:1 문의</title>
</head>
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
	<div class="contents">
		<div class="otherList">
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">자주 묻는 질문</a></li>
				<li id="inquiry"><a href="#">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="tab">
				<ul>
					<li id="my"><a href="#">내 문의 내역</a></li>
					<li><a href="#">1:1 문의하기</a></li>
				</ul>
			</div>
			<div class="tabList">
				<ul>
					<li class="list">
						<a>
							<span id="inquiryName">문의1</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="fagContent">
							<p>답변</p>
						</div>
					</li>
					<li class="list">
						<a>
							<span id="inquiryName">문의2</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="fagContent">
							<p>답변</p>
						</div>
					</li>
					<li class="list">
						<a>
							<span id="inquiryName">문의3</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="fagContent">
							<p>답변</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>	
</div>
</body>
</html>