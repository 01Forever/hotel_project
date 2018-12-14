<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 내역</title>
<style>
.content{
	padding:20px;
}
.payment-list{
	margin: 0 auto;
    width: 500px;
    line-height: 2;
}
.payment-list ul{
	margin-left: 95px;
}
.payment-list hr{
	width: 355px;
    color: #cccc;
    margin-left: 91px;
}

.payment-infor{
    margin-left: 95px;
    color: #D85;
	display:inline-block;
}
.payment-value{
	font-weight: 600;
	display:inline-block;
}
.tag-tab{
	text-align: center;
}
.tag-tab .home-tag a{
	text-decoration:none;
	color:#fff;
}
.tag-tab .reserve-tag a{
	text-decoration:none;
	color:#fff;
}
.home-tag{
	border-radius: 5px;
	padding:10px;
	background: #bfba9e;
	display:inline-block;
}
.reserve-tag{
	border-radius: 5px;
	padding:10px;
	background: #f1914bfa;
	display:inline-block;
}
</style>
<jsp:include page="../comm/head.jsp" />
</head>
<body>
<jsp:include page="../comm/header.jsp"/>
<div class="container">
	<div class="content">
		<div class="payment-list" >
			<div class="payment-infor">
				<p>예약 번호</p> 
				<p>예약자명</p>
				<p>연락처</p> 
				<p>예약 날짜</p> 
				<p>체크인</p> 
				<p>체크아웃</p> 
				<p>호텔</p> 
				<p>방</p> 
				<p>결제 가격</p> 
			</div>
		
			<div class="payment-value">
				<span>: &nbsp;${reserve.res_idx}</span><br>
				<span>: &nbsp;${reserve.name}</span><br>
				<span>: &nbsp;${reserve.phone}</span><br>
				<span>: &nbsp;${reserve.resDate}</span><br>
				<span>: &nbsp;${reserve.res_start}</span><br>
				<span>: &nbsp;${reserve.res_end}</span><br>
				<span>: &nbsp;${reserve.hotelName}</span><br>
				<span>: &nbsp;${reserve.roomName}</span><br>
				<span>: &nbsp;${reserve.price}</span><br>
			</div>
				<hr>
				<ul>
				<c:choose>
					<c:when test="${reserve.resStat == 0}">
						<li>결제 대기 중</li>
					</c:when>
					<c:when test="${reserve.resStat == 1}">
						<li>결제 완료</li>
					</c:when>
					<c:when test="${reserve.resStat == 2}">
						<li>취소</li>
					</c:when>
					<c:when test="${reserve.resStat == 3}">
						<li>지난 예약</li>
					</c:when>
				</c:choose>
				</ul>	
		</div>
	</div>
	<div class="tag-tab">
		<div class="home-tag">
			<a href="main">홈으로 이동</a>
		</div>
		<div class="reserve-tag">
			<c:choose>
				<c:when test="${loginUser != null}">
					<a href="userResPage">예약 내역 보기</a>
				</c:when>
				<c:otherwise>
					<div>
						<a href="reResCheckPage">예약 내역 보기</a>				
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
<jsp:include page="../comm/footer.jsp" />
</div>
<script type="text/javascript">

	history.pushState(null, null, location.href);
	
	window.onpopstate = function(event) {   
	   history.go(1);
	};
</script>
</body>
</html>