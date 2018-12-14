<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../comm/head.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제</title>

<link rel="stylesheet" type="text/css" href="./css/payMent.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 모달 -->
<link rel="stylesheet" type="text/css" href="./css/modal.css">
<script src="./js/modal.js"></script>
<!-- end 모달 -->
</head>
<body>
<jsp:include page="../comm/header.jsp"/>
	<div class="container">
		<div class="little-container">
				<div id="right-sidebar">
					<div class="received-calendar">
						<div class="check-tab">
							<span class="check-in">체크인</span>
							<span class="check-out">체크아웃</span>
						</div>
						<div class="start">
							<p>${start}</p>
						</div>
						<div class="end">
							<p>${end}</p>	
						</div>
					</div>
					<div class="pay-infor">
						<div class="unknown">
						
						</div>
						<div class="price">
							<ul>
								<li>결제금액
									<em>${roomInfo.price}</em>
								</li>
							</ul>
						</div>
						<div class="pay-button">
							<!-- <button type="button" title="PayFor" onclick="paySubmit()">결제하기</button> -->
							<button type="button" id="myBtn">결제하기</button>
						</div>
					</div>
				</div>
			
			<div id="content">
				<div id = "room-info">
					<div class="room-iamge">
						
					</div>
					<div class="room-name">
						<h3>${roomInfo.roomName}</h3>
						<ul>
							<%-- <li>호텔 번호 :  ${roomInfo.hotelNo}</li> --%>
							<li>${roomInfo.hotelName}</li>
						</ul>	
					</div>
					<div class="room-price">
						<span class="pay_info">객실요금</span>
						<span class="pay_value">${roomInfo.price}원</span>
					</div>
				
				</div>
				<form action="resPage" method="post" name="payFor" id="payFor">
					<div class="mileage-box">
						<div class="user-mileage-box">
							<h3>할인</h3>
							<c:choose>
								<c:when test="${loginUser == null}">
									<p>마일리지 사용 <span><a href="login">로그인</a>하면 적립한 마일리지를 사용할 수 있습니다.</span></p>
								</c:when>
								<c:otherwise>
									<div class="form-item">
										<div class="form-name"><label for="mileage"> 마일리지 할인</label></div>
										<div class="form-body">
											<div class="input-text">
												<input type="text" name="mileage" id="mileage" value="0" style="text-align:right;"/>
												<button type="button">전액사용</button> <span id="myMile">(${loginUser.mileage}<i>보유</i>)</span>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				
					<div class="user-info-box">
						<input type="hidden" name="res_Start" value="${start}"> 
						<input type="hidden" name="res_End" value="${end}"> 
						<input type="hidden" name="hotelNo" value="${roomInfo.hotelNo}"> 
						<input type="hidden" name="roomNo" value="${roomInfo.roomNo}"> 
						<input type="hidden" name="price" value="${roomInfo.price}">
						<c:choose>
							<c:when test="${loginUser == null}">
								<input type="hidden" name="grade" value="0">
							</c:when>
							<c:otherwise>
								<input type="hidden" name="grade" value="${loginUser.grade}">
							</c:otherwise>
						</c:choose>
						<h3 class="info-title">필수 입력 사항</h3>
						<div class="info-box">
							<div>
								<div class="form-name"><label for="name">예약자명</label></div>
								<div class="form-body">
									<div class="input-text">
										<input type="text" id="userName" name="userName" title="Name" placeholder="예약자명을 입력하세요" maxlength="10">
									</div>
									<span class="tip">
										*예약자명은 실명을 입력해주세요.
									</span>
								</div>
							</div>
							<div>
								<div class="form-name"><label for="phone">휴대전화</label></div>
								<div class="form-body">
									<div class="input-text">
										<input type="text" id="phone" name="phone" title="Phone" placeholder="휴대전화 번호를 입력하세요" value="${loginUser.phone}">
									</div>
									<span class="tip">
										*입력한 번호는 숙소에 전달됩니다.
									</span>
								</div>
							</div>
							
						</div>
						<div class="pay-box">
								<h3 class="pay-way">결제 방법 선택</h3>
							<div class="radio-box">
								<label><input type="radio" id="noBankBook" name="pay" title="무통장입금" value="noBankBook">무통장 입금</label>
							</div>
						</div>
					</div>
				</form>
				
				<!-- 모달쓰 -->
				 <div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <div class="modal-header">
				          <h4 class="modal-title">예약 내역 확인</h4>
				        <hr>
				        </div>
				        <div class="modal-body">
				          <p>${roomInfo.hotelName}</p>
				          <p id="room_name">${roomInfo.roomName}</p>
				          	<div class="check-date">
				          		<p>입실날짜 </p>
					          	<p>퇴실날짜 </p>
				          	</div>
				          	<div class="date-value">
				          		<span> &nbsp${start}</span><br>
				          		<span> &nbsp${end}</span>
				          	</div>
				          	
					       
				          
				        </div>
				        <div class="modal-footer">
				        	<button type="button" title="PayFor" onclick="paySubmit()">결제하기</button>
				        </div>
				      </div>
				      	
				    </div>
				  </div>
				  
				  
				<div class="terms-box">
					<div class="terms-text">
						<h3>취소 규정 및 약관 동의</h3>
						<div class="form-body">
							<input type="checkbox" id="terms" value=""/><label>취소 규정 및 약관에 동의합니다.</label>
							<div class="guide-box">
								<table class="guide-table">
								<colgroup>
									<col width="50%">
									<col width="50%">
								</colgroup>
									<thead>
										<tr>
											<th>취소기준일</th>
											<th>취소수수료</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>입실 1일 전까지</td>
											<td>수수료 없음</td>
										</tr>
										<tr>
											<td>입실일</td>
											<td>환불 불가</td>
										</tr>
									</tbody>
								</table>
								<div class="guide-text">
									<ul>
										<li>ㆍ연박의 취소수수료는 일할 계산합니다.</li>
										<li>ㆍ취소수수료는 현금 결제액, 포인트 결제액 순으로 차감됩니다.</li>
										<li>ㆍ취소수수료가 실 결제금액(현금+포인트)를 초과하는 경우, 초과금액을 부과하지 않습니다.</li>
										<li>ㆍ투숙일 이전 취소 시에는 쿠폰이 반환되며, 투숙일 이후에는 반환되지 않습니다.</li>
										<li>ㆍ예약 변경을 위한 취소시에도 취소 수수료가 부과되오니 양해하여 주시기 바랍니다. </li>
										<li>ㆍ노쇼(No-Show:사전에 연락없이 예약된 숙소를 이용하지 않음)의 경우 요금이 정상 청구됩니다.</li>
										<li>ㆍ성수기 요금이 확정되지 않았거나 요금표가 잘못 등록된 경우 예약이 취소될 수 있습니다.</li>
										<li>ㆍ펜션 예약은 24시간 이내 확정됩니다.</li>
										<li>ㆍ모텔은 예약 완료 후 15분 이내 고객센터를 통해 전액취소가 가능합니다.</li>
										<li>ㆍ호텔은 예약완료 후 10분 이내 고객센터를 통해 전액취소가 가능합니다.</li>
									
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- terms-box -->	
			</div> <!-- content -->
		</div> <!-- little-container -->
	</div> <!-- container -->
<script src="./js/resCheck.js"></script>
<jsp:include page="../comm/footer.jsp" />
</body>
</html>