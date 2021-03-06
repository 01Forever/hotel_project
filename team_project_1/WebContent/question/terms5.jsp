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
				<a href="terms4.do">이용문의</a><a href="terms5.do" class="on-check">예약취소</a><a href="terms6.do">결제/영수증</a><a href="terms7.do">예약문의</a><a href="terms8.do">쿠폰/포인트</a><a href="terms9.do">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="체크인날짜/객실타입을 변경하고 싶어요." class="a-btn">▶ 체크인날짜/객실타입을 변경하고 싶어요.</a>
					<div class="a-btn-box">
						<p>    예약 결제 완료 후 날짜 및 객실타입 등 부분 변경은 불가능합니다.

    예약취소와 동일하게 취소 및 환불 규정에 따라 처리되므로, 환불 가능한 기간에는 예약취소 후 재결제 하셔서 이용 부탁드립니다.

    만약, 예약취소가 불가하여 재결제가 어려운 경우라면 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요. 

    Update 2018.06.12</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약을 취소하고 싶어요." class="a-btn">▶ 예약을 취소하고 싶어요.</a>
					<div class="a-btn-box">
						<p>    예약취소는 숙소 종류별 또는 각 숙소의 취소/환불규정에 의해 처리되며, 앱 내 예약내역에서 직접 취소 가능합니다. (단, 1일 1회)

    아래의 숙소종류별 취소/환불 규정을 꼭 확인해 주세요.


    [호텔/리조트] 
    - 전액환불 및 수수료부과 건 모두 직접취소 가능 (일부 숙소 한)
    - 취소가능 시점이지만 "앱에서 취소가 불가한 숙소입니다." 문구가 표시될 경우 고객행복센터 또는 1:1문의로 취소 요청


    Update 2018.06.12</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="비회원도 예약취소 가능한가요?" class="a-btn">▶ 비회원도 예약취소 가능한가요?</a>
					<div class="a-btn-box">
						<p>    비회원 예약 건의 경우 회원과 동일하게 취소 및 환불이 가능합니다.

    다만, 모텔 숙소의 경우 예약연기 신청은 불가합니다.

    예약하기 전 숙소의 취소 및 환불 규정을 꼭 확인해 주세요!

    Update.2017.08.11</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약취소하면 사용한 포인트는 어떻게 되나요?" class="a-btn">▶ 예약취소하면 사용한 포인트는 어떻게 되나요?</a>
					<div class="a-btn-box">
						<p>    예약하면서 사용한 포인트는 예약취소 시 자동으로 복구됩니다.

    단, 사용한 할인쿠폰은 자동 소멸되어 복구가 불가합니다.

    Update 2017.6.28</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="휴대폰결제 환불이 안됐어요." class="a-btn">▶ 휴대폰결제 환불이 안됐어요.</a>
					<div class="a-btn-box">
						<p>    휴대폰 결제 건의 경우 결제한 달이 지난 후 앱 내 취소 진행을 하게 되면 결제 금액이 휴대폰 대금으로 청구 되기 때문에 예약자 본인 명의의 통장으로 환불 처리를 도와드리고 있습니다.

    예금주명(예약자 성함과 동일), 계좌번호, 은행명을 1:1문의에 남겨주시면 담당 부서에 접수 후 처리될 예정이며, 처리까지는 약 7일 정도가 소요되는 점 이용에 참고 부탁드립니다.

    Update 2017.09.14</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="카드결제 승인취소는 언제 되나요?" class="a-btn">▶ 카드결제 승인취소는 언제 되나요?</a>
					<div class="a-btn-box">
						<p>    요기죠기 예약취소에 따른 결제 승인 취소는 영업일 기준 5~7일 정도 소요될 수 있으며, 카드사별로 취소 완료 문자메시지가 발송되지 않을 수 있습니다.
 
    카드사에 따라 환불 완료되는 시점이 다르므로 해당 카드사 고객센터를 통해 정확한 확인 부탁드립니다.

    Update 2017.03.31 </p>
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