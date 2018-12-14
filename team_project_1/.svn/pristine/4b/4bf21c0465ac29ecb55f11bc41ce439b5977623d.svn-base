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
				<a href="terms4.do">이용문의</a><a href="terms5.do">예약취소</a><a href="terms6.do">결제/영수증</a><a href="terms7.do" class="on-check">예약문의</a><a href="terms8.do">쿠폰/포인트</a><a href="terms9.do">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약대기와 예약확정은 무엇인가요?" class="a-btn">▶ 예약대기와 예약확정은 무엇인가요?</a>
					<div class="a-btn-box">
						<p>    예약이 확정되는 방식에 따라, 예약대기와 예약확정으로 구분됩니다.
  
    1. 예약대기 : 예약 시 대기상태로 접수되며, 숙소의 확인 후 예약확정 여부가 문자로 발송됩니다.
    숙소의 사정으로 예약이 불가할 경우 결제된 금액은 자동으로 취소됩니다.

    2. 예약확정 : 실시간 예약형태로 결제와 동시에 예약이 확정됩니다.

    Update 2018.04.30 </p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="비회원도 예약 가능한가요?" class="a-btn">▶ 비회원도 예약 가능한가요?</a>
					<div class="a-btn-box">
						<p>    요기죠기 회원이 아니더라도 비회원으로 예약 및 결제가 가능합니다.

    다만, 비회원으로 예약 시 할인쿠폰/포인트 지급 및 사용이 불가합니다.

    무료로 요기죠기 회원가입하시고, 최저가로 객실 예약하세요!

    Update 2017.08.11</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="여러 개의 객실을 동시에 예약할 수 있나요?" class="a-btn">▶ 여러 개의 객실을 동시에 예약할 수 있나요?</a>
					<div class="a-btn-box">
						<p>    요기죠기 예약 서비스 이용 시, 한 번에 예약 가능한 객실 수는 1개입니다.

    여러 개 객실이 필요하신 경우, 필요하신 수량의 객실을 각각 결제 부탁드립니다.

    Update 2017.06.08</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="연박예약도 가능한가요?" class="a-btn">▶ 연박예약도 가능한가요?</a>
					<div class="a-btn-box">
						<p>    요기죠기 예약 서비스는 최대 90일 전까지 날짜를 선택하여 미리예약이 가능하며, 최대 7일까지 연박예약을 할 수 있습니다.

    연박예약 시, 일정 선택 달력은 당일 하루 예약 건으로 자동 설정되어 있으므로 체크인/체크아웃 날짜를 직접 지정하여 검색해주셔야 연박예약이 가능한 숙소를 확인할 수 있습니다.

    Update 2017.12.04</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="미성년자도 예약이 가능한가요?" class="a-btn">▶ 미성년자도 예약이 가능한가요?</a>
					<div class="a-btn-box">
						<p>    만 19세 이하의 미성년자는 청소년 보호법에 의거하여 숙박업소 출입/고용이 불가하며, 숙박시설 이용에 제한이 있을 수 있습니다. 
 
    미성년자 예약으로 인해 발생하는 입실 거부에 대해서는 취소나 환불이 불가하오니, 예약 진행 전 반드시 숙소에 확인해 주시기 바랍니다.

    Update 2017.03.31</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약은 어떻게 확인하나요?" class="a-btn">▶ 예약은 어떻게 확인하나요?</a>
					<div class="a-btn-box">
						<p>    예약 정보가 알림톡(카카오톡) 또는 문자메시지로 전송되며, 앱 하단 내정보 > 예약/구매내역 메뉴에서 확인 가능합니다. 

    예약내역 확인에 어려움을 겪으실 경우 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요.

    Update 2018.09.28</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="부대시설, 조식 등 부가요금은 어떻게 지불하나요?" class="a-btn">▶ 부대시설, 조식 등 부가요금은 어떻게 지불하나요?</a>
					<div class="a-btn-box">
						<p>    객실 예약 이외의 추가발생(조식, 추가인원, 침구 등) 요금은 현장 결제로 진행됩니다.

    부대시설 관련 정보는 숙소 상세페이지에서 확인이 가능하며, 이 외 궁금하신 사항은 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요

    Update 2018.09.28</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="체크인 시 배정은 무엇인가요?" class="a-btn">▶ 체크인 시 배정은 무엇인가요?</a>
					<div class="a-btn-box">
						<p>    [호텔, 리조트]
 
    체크인 시 배정 객실로 예약한 경우, 객실 및 베드 타입을 보장하지 않으며 숙소 입실 시 랜덤 배정되는 객실입니다.

    Update 2017.03.31</p>
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