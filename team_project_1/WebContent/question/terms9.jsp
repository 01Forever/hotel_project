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
S	min-height: 500px;
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
				<a href="terms4.do">이용문의</a><a href="terms5.do">예약취소</a><a href="terms6.do">결제/영수증</a><a href="terms7.do">예약문의</a><a href="terms8.do">쿠폰/포인트</a><a href="terms9.do" class="on-check">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title=" 무료초대권은 어떻게 사용하나요?" class="a-btn">▶ [호텔] 무료초대권은 어떻게 사용하나요?</a>
					<div class="a-btn-box">
						<p>    앱 내 쿠폰함에서 유효한 무료초대권을 확인한 후, 최소 3일 전 호텔 프런트에 직접 예약 문의하시면 됩니다.
 
무료초대권으로 예약 방문 시, 프런트 관리자에게 무료초대권의 '사용완료' 버튼을 눌러달라고 요청해 주시기 바랍니다.
 
무료초대권 사용 전 임의로 '사용완료' 버튼을 클릭하면, 사용이 어려워질 수 있습니다.

Update 2017.03.31</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="[호텔] 무료초대권은 어떻게 받나요?" class="a-btn">▶ 비회원도 예약 가능한가요?</a>
					<div class="a-btn-box">
						<p>    무료초대권(대실/숙박)은 여기어때만의 풍성한 회원혜택의 하나로, 리얼리뷰 추첨 이벤트를 통해 매주 월요일마다 1,000명에게 지급해 드립니다.

무료초대권 이벤트를 진행하는 호텔을 이용하시고, 리얼리뷰를 남겨주세요.

시설, 청결, 서비스 등 다른 사람들이 예약에 참고할 수 있도록 상세하게 작성한 리뷰는 당첨 확률이 더욱! 높아집니다.

Update 2017.05.24</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				
				
				
				
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