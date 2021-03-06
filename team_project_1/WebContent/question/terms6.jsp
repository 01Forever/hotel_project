<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<c:choose>
	<c:when test="${param.category_num == 2}">
	</c:when>
</c:choose>
<style>
* {
	margin: 0 auto;
}

.wrapper {
	width: 100%%;
	margin: 0 auto;
}

p, pre, h4, h1 {
	line-height: 25px;
}

h1 {
	font-size: 25px;
	font-weight: bold;
}

section {
	box-sizing: border-box;
	float: right;
	width: 75%;
	min-height: 500px;
	padding: 1.5625%;
}

section img {
	max-width: 100px;
}

aside {
	line-height: 45px;
	font-size: 20px;
	box-sizing: border-box;
	float: left;
	width: 25%;
	padding: 1.5625%;
	margin-top: 50px;
}

aside ul {
	float: right;
	margin-right: 60px;
}

ul {
	list-style: none;
}

a {
	color: #666666;
	text-decoration: none;
}

footer {
	clear: both;
	background: #f7323f;;
	font-size: 2em;
}

footer h3 {
	font-size: 1.5rem;
	padding: 30px;
	color: white;
	text-align: center;
}

.comm_table {
	margin-top: 30px
}

.comm_table table {
	width: 100%;
	border-collapse: collapse;
}

.comm_table table tbody {
	border-top: 3px solid #525252;
}

.comm_table table tr.recond  div {
	display: none;
}

.comm_table table th, .comm_table table td {
	padding: 10px 10px;
	border: 1px solid #ccc;
	text-align: left;
	font-size: 14px;
	line-height: 1.5;
}

.comm_table table th {
	text-align: center;
	background: #efefef
}

.comm_table table th:first-child, .comm_table table td:first-child {
	border-left: none;
	text-align: center;
}

.comm_table table th:last-child, .comm_table table td:last-child {
	border-right: none;
	text-align: center;
}

h4, h2 {
	font-size: 18px;
	font-weight: bold;
}
div.a_btn a {display: inline-block; padding-right:20px}
p {
	text-indent: -22px;
    padding-left: 22px;
}
</style>

</head>
<script type="text/javascript">
   $(function() {
      $(".recond").each(function() {
         $(this).find("a").click(function() {
            $(this).next().slideToggle();
         });
      });
   });
</script>
<body>
	<div class="container">
		<div class="wrapper">
			<jsp:include page="../comm/header.jsp" />
			<div class="box_s">
			<section id="con">
				<div class="a_btn">
				<a href="terms4.do">이용문의</a><a href="terms5.do">예약취소</a><a href="terms6.do" class="on-check">결제/영수증</a><a href="terms7.do">예약문의</a><a href="terms8.do">쿠폰/포인트</a><a href="terms9.do">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약 영수증은 어떻게 받나요?" class="a-btn">▶ 예약 영수증은 어떻게 받나요?</a>
					<div class="a-btn-box">
						<p>    예약 결제 시 입력한 이메일로 영수증이 발급됩니다.
 
    이메일 주소를 입력하지 못하셨다면, 개별 카드사의 결제 내역에서 확인하시거나 결제 대행사 페이지에서 직접 발급해 주셔야 합니다.

    1. 카드 / 페이코 
    요기죠기 앱 > 하단 내정보 > 예약내역 > 영수증 확인하기 > 구매정보 입력
    *예약내역이 삭제되었을 경우 나이스페이(카드 결제대행사) 또는 페이코 홈페이지에서 조회가능

    2. 휴대폰
    모빌리언스 > 고객센터 > 결제내역조회 > 휴대폰 결제내역

    3. 카카오페이 
    카카오페이 > (오른쪽 상단 아이콘) 나의 카카오페이 > 이용내역 > 결제 

    4. 네이버페이(카드)
    네이버페이 > 결제내역 > 상품 > 영수증 발급내역
 
    ※ 그 밖의 영수증 관련 문의는 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요.

    Update 2018.06.12</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="현금영수증은 어떻게 받나요?" class="a-btn">▶ 현금영수증은 어떻게 받나요?.</a>
					<div class="a-btn-box">
						<p>    1. 카카오페이
    카카오머니 결제인 경우에만 현금영수증 발행이 가능하며, 카카오페이에서 국세청으로 발급 요청합니다.

    2. 네이버페이/TOSS
    네이버페이 계좌이체/TOSS 현금영수증은 체크아웃 이후 담당 부서에서 발급 처리를 도와드리고 있습니다.
    체크아웃 이후 예약번호, 예약자 성명, 휴대폰번호 또는 사업자번호를 1:1문의에 남겨주시면 담당 부서에 접수되며, 처리까지 최대 2일(영업일 기준) 소요됩니다.
﻿
    3. 간편계좌이체
    간편계좌이체 현금영수증은 예약 시 직접 신청이 가능합니다.
    만약, 예약 시 신청을 누락하신 경우라면  2번 내용을 참고하여 1:1문의로 발급 요청 부탁드립니다.

    Update 2018.09.28</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="계좌 등록 후 은행에서 문자가 왔어요." class="a-btn">▶ 계좌 등록 후 은행에서 문자가 왔어요.</a>
					<div class="a-btn-box">
						<p>    간편계좌이체, TOSS에 계좌 등록 시 은행에서 자동이체 서비스가 등록되었다는 문자가 발송될 수 있습니다.

    매달 일정 금액이 자동이체 되는 것이 아니라, 결제 시 비밀번호 인증 후 이체되는 서비스이니 안심하고 이용하시길 바랍니다.

    Update 2018.06.05</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="사용가능한 카드 종류가 없어요." class="a-btn">▶ 사용가능한 카드 종류가 없어요.</a>
					<div class="a-btn-box">
						<p>    요기죠기 예약 서비스 결제 시 사용 가능한 카드 종류는 PG사(전자결제 대행사)에서 정하는 부분이므로 일부 카드는 결제지원이 불가할 수 있습니다.

    IBK기업은행 카드의 경우 목록에서 비씨를 선택하시면 결제 가능하오니 이용에 참고 부탁드립니다.

    Update 2017.06.13 </p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="간편계좌이체 등록 해지는 어떻게 하나요?" class="a-btn">▶ 간편계좌이체 등록 해지는 어떻게 하나요?</a>
					<div class="a-btn-box">
						<p>    예약 페이지 > 간편계좌이체 결제수단 선택 > 결제하기 버튼 > 해지할 은행 선택> 계좌/비밀번호 관리 메뉴에서 해지 가능합니다.

    Update 2018.05.24</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="결제수단이 궁금해요." class="a-btn">▶ 결제수단이 궁금해요.</a>
					<div class="a-btn-box">
						<p>    카드(신용/체크), 법인카드, 간편계좌이체, 휴대폰, 카카오페이, PAYCO, 네이버페이, TOSS로 결제가 가능합니다.

    Update 2018.06.05 </p>
					</div>
				</div>
				<br>
				<hr>
				
				
				
				<div class="comm_table">
					<table>
						<colgroup>
							<col style="width: 10%" />
							<col>
							<col style="width: 15%">
						</colgroup>
						<tr>

						</tr>
					</table>
				</div>
			</section>
			<aside>
				<ul>
					<li><a href="boardList.do">공지사항</a></li>
					<li><a href="eventboard.do">이벤트</a></li>
					<li><a href="terms4.do" class="check">자주 묻는 질문</a></li>
					<li><a href="inquiryBoardList.do">문의 사항</a></li>
					<li><a href="terms.do">약관 및 정책</a></li>
				</ul>
			</aside>
			</div>
			<jsp:include page="../comm/footer.jsp" />
		</div>
	</div>
	<script type="text/javascript">
$(document).ready(function() {
	$('.a-btn-box').css('display','none');
});

jQuery('.a-btn').click(function (e) {
	e.preventDefault();
	if($(this).next('.a-btn-box').is(':visible') == false){
		$(this).next('.a-btn-box').slideDown(200);
	} else {
		$(this).next('.a-btn-box').slideUp(200);
	}
})
</script>
</body>
</html>