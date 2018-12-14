<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/modal.css">
<script src="./js/modal.js"></script>
<title>Insert title here</title>
<style>
.header {
	background-color: #ccc;
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
	padding-left: 140px;
	margin: 20px;
	margin: auto;
}
.content li {
	font-size: 20px;
}
table {
	margin: 20px;
	margin: auto;
	width: 400px; 
	
}
table tr {
	text-align: center;
	background-color: #ccc;
	font-size: 20px;
}
.info{
	display:inline-block;
}
.value{
	font-size: 20px;
	display:inline-block;
}
.content p{
    padding-left: 75px;
    font-weight: 600;
    color: red;
}
button{
	cursor:pointer;
	color: #212121;
    background: #6633;
    border:none;
    padding: 13px 20px;
}
center{
	padding-top: 20px;
}

</style>

</head>
<body>
	<div class="header">
		<h3>예약 취소</h3>
	</div>
	<div class="content">
	<form action="reservationCancel" method="post" name="cancelPage" id="cancelPage">
		<input type="hidden" name="res_idx" value="${rVo.res_idx}">
	</form>
	<c:choose>
		<c:when test="${(rVo.resStat == 0 || rVo.resStat == 1) && payBack != '0' }">
			<h3>예약번호 : <span>${rVo.res_idx}</span></h3>
			<div class="info">
				<ul>
					<li>결제 수단</li>
					<li>판매 금액</li>
					<li>결제 금액</li>
					<li>취소 수수료</li>
					<li>환불 금액</li>
				</ul>
			</div>
			<div class="value">
				<span>무통장입금</span><br>
				<span>${rVo.price_ori}</span><br>
				<span>${rVo.price}</span><br>
				<span>${cancel_vat}&nbsp</span><br>
				<span>${payBack}&nbsp</span>
			</div>
				<p style="color: red;">※취소 후 마일리지는 복구되지 않습니다.</p>
				<p style="color: red;">※취소 수수료는 결제 금액에서 차감됩니다.</p>
			<table>
				<tr>
					<td>취소 기준일</td>
					<td>취소 수수료</td>
				</tr>
				<tr>
					<td>입실 2일전까지</td>
					<td>없 음</td>
				</tr>
				<tr>
					<td>입실 1일전까지</td>
					<td>결제 금액의 50%</td>
				</tr>
				<tr>
					<td>입실 당일 및 No-Show</td>
					<td>환불 불가</td>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<div class="info" style="width: 100%">
				<img src="https://notefolio.net/data/covers/103801_t2.jpg" style="width: 100%">
				<br/>
				<p style="font-weight: bold; font-size: 25px; color: red; text-align: center; padding: 0px">취소하실 수 없습니다.</p>
			</div>
		</c:otherwise>
	</c:choose>
		
		</div>
	
	<!-- 모달쓰 -->
	 <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <div class="modal-header">
	        </div>
	        <div class="modal-body">
	          	<div class="check-date">
					<!-- x<img src="https://notefolio.net/data/covers/103801_t2.jpg">-->
	          		
	          		<p> 예약을 취소하시겠습니까? </p>
	          	</div>
	        </div>
	      </div>   	
	    </div>
	  </div>
	<center>
		<button onclick="window.close();">창닫기</button>
		<c:if test="${(rVo.resStat == 0 || rVo.resStat == 1) && payBack != '0' }">
			<button type="button" id="myBtn">예약 취소</button>
		</c:if>
	</center>
</body>
<script type="text/javascript">
function cancelSubmit() {
	$("#cancelPage").submit(); 
}

$(document).ready(function() {
	var modal = document.getElementById('myModal');
	var btn = document.getElementById("myBtn");
	var span = document.getElementsByClassName("close")[0];                                          
	
	
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
});
</script>
</html>