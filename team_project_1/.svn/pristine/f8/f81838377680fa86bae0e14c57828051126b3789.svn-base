<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	background: goldenrod;
	display:inline-block;
}
.reserve-tag{
	border-radius: 5px;
	padding:10px;
	background: red;
	display:inline-block;
}
</style>
<jsp:include page="../comm/head.jsp" />
</head>
<body>
<jsp:include page="../comm/header.jsp"/>
	<div class="container">
		<c:forEach var="resList" items="${resUnuser}">
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
						<span>: &nbsp;${resList.res_idx}</span><br>
						<span>: &nbsp;${resList.name}</span><br>
						<span>: &nbsp;${resList.phone}</span><br>
						<span>: &nbsp;${resList.resDate}</span><br>
						<span>: &nbsp;${resList.res_start}</span><br>
						<span>: &nbsp;${resList.res_end}</span><br>
						<span>: &nbsp;${resList.hotelName}</span><br>
						<span>: &nbsp;${resList.roomName}</span><br>
						<span>: &nbsp;${resList.price}</span><br>
					</div>
						<hr>
						<ul>
						<c:choose>
							<c:when test="${resList.resStat == 0}">
								<li>결제 대기 중</li>
							</c:when>
							<c:when test="${resList.resStat == 1}">
								<li>결제 완료</li>
							</c:when>
							<c:when test="${resList.resStat == 2}">
								<li>방문 완료</li>
							</c:when>
							<c:when test="${resList.resStat == 3}">
								<li>취소</li>
							</c:when>
						</c:choose>
						</ul>	
				</div>
			</div>
			<div class="tag-tab">
				<div class="reserve-tag">
					<a href="#"></a>
					<button type="button" onclick="window.open('./reservationListCheck?res_idx=${resList.res_idx}','','width=500,height=650,location=no,resizable=no')">결제 내역 확인</button>
				</div>
				<div class="reserve-tag">
					<a href="#" class="abtn" onclick="window.open('./reservationCancel?res_idx=${resList.res_idx}','','width=500,height=650,location=no,resizable=no')">예약 취소</a>
				</div>
			</div>
		</c:forEach>
<jsp:include page="../comm/footer.jsp" />
<script type="text/javascript">
$(".abtn").on("click", function(e) {
	e.preventdefault()
});
</script>
	</div>
</body>
</html>