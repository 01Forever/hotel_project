<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<title>예약 내역</title>
<style>
.header {
	/* background-color: #ccc; */
}

.header h3 {
	text-align: center;
}

.content h3 {
	font-size: 20px;
	text-align: center;
}

.content th {
	font-size: 20px;
}

.content ul {

	list-style: none;
	/* background-color: #ccc; */
}

.content li{
	color:#666;
	font-size: 18px;
}
.content li span{
    
    font-weight: 600;
	color:#001;
}
button{
	cursor:pointer;
	color: darkgreen;
    background: antiquewhite;
    border: navajowhite;
    padding: 13px 20px;
}
.info-list{
	padding: 0px 30px 0 100px;
    display: inline-block;
}
.info-value{
    font-size: 18px;
	display: inline-block;
}
.situation{
	padding-left:172px;
}
center{
    padding-top: 20px;
}
</style>

</head>
<body>
	<div class="header">
		<h3>결제 내역 확인</h3>
	</div>
	<div class="content">
		<h3>예약번호 <span>${rVo.res_idx}</span></h3>
		<div class="info-list">
			<ul>
				<li>예약자명</li>
				<li>연락처</li> 
				<li>결제수단</li> 
			</ul>
		</div>
		<div class="info-value">
			<span>${rVo.name}</span><br>
			<span>${rVo.phone}</span><br>
			<span>무통장입금</span>
		</div><br>
		<div class="info-list">
			<ul>
				<li>호텔 이름</li>
				<li>객실 이름 </li> 
				<li>체크인</li>
				<li>체크아웃 </li>
			</ul>
		</div>
		<div class="info-value">
			<span>${rVo.hotelName}</span><br>
			<span>${rVo.roomName}</span><br>
			<span>${rVo.res_start}</span><br>
			<span>${rVo.res_end}</span>
		</div>
		<ul class = "situation">
			<li>결제금액 : <span>${rVo.price}</span></li>
			<c:choose>
				<c:when test="${rVo.resStat == 0}">
					<li>예약 상태 : <span>입금 확인중</span></li>
				</c:when>
				<c:when test="${rVo.resStat == 1}">
					<li>예약 상태 : <span>결제 완료</span></li>
				</c:when>
				<c:when test="${rVo.resStat == 2}">
					<li>예약 상태 : <span>방문 완료</span></li>
				</c:when>
				<c:otherwise>
					<li>예약 상태 : <span>취소</span></li>
				</c:otherwise>
			</c:choose>
		</ul>
		<c:if test="${rVo.resStat == 2}">
			<div>
				<ul>
					<li>CHECKIN : <span>${rVo.checkIn}</span></li>
					<li>CHECKOUT : <span>${rVo.checkOut}</span></li>
				</ul>
			</div>
		</c:if>
	</div>
	<center>
		<button onclick="window.close();">확인</button>
	</center>
   
</body>
</html>