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
	
	#active a {
		color: red;
		font-size: 20px;
		font-weight: bold;
	}
	
	.write {
		overflow: hidden;
	}
	
	.write p {
		font-size: 20px;
		color: black;
		padding: 20px 0;
	}
	
	select {
		width: 500px;
		height: 50px;
	}
	
	input[type = 'text'] {		
		width: 500px;
		height: 50px;
	}
	
	textarea {
		font-size: 16px;
		width: 500px;
		height: 250px;
	}
	
	#register {
		padding: 40px 0 0 175px;
		display: block;
	}
	
	button {
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
					<li><a href="#">내 문의 내역</a></li>
					<li id="active"><a href="#">1:1 문의하기</a></li>
				</ul>
			</div>
			<div class="write">
				<form action="">
					<p>문의 유형</p>
					<select>
						<option value="이용문의">이용문의</option>
						<option value="예약문의">예약문의</option>
						<option value="예약취소">예약취소</option>
						<option value="결제문의">결제문의</option>
						<option value="정보문의">정보문의</option>
					</select>
					<p>휴대폰 번호</p>
					<input type="text" name="phone" placeholder="선택사항 입니다.">
					<p>문의 내용</p>
					<textarea name="content"></textarea>
					<div id="register">
						<button type="submit">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>	
</div>
</body>
</html>