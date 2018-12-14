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
				<a href="terms4.do">이용문의</a><a href="terms5.do">예약취소</a><a href="terms6.do">결제/영수증</a><a href="terms7.do">예약문의</a><a href="terms8.do" class="on-check">쿠폰/포인트</a><a href="terms9.do">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="사용하지 않은 포인트는 자동 소멸 되나요?" class="a-btn">▶ 사용하지 않은 포인트는 자동 소멸 되나요?</a>
					<div class="a-btn-box">
						<p>    포인트의 유효기간은 적립일로부터 1년이며, 유효기간 동안 사용하지 않을 경우 자동으로 소멸됩니다.
 
    자세한 내용은 이용약관 제11조 (포인트, 할인쿠폰) 항목을 확인해 주세요.

    Update 2017.03.31</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="신규 회원가입 축하 쿠폰 세트를 못 받았어요." class="a-btn">▶ 신규 회원가입 축하 쿠폰 세트를 못 받았어요.</a>
					<div class="a-btn-box">
						<p>    신규 회원가입 축하 쿠폰 세트는 여기어때 앱 설치 및 가입 이력이 없는 신규 고객에게 지급됩니다. 

    이미 사용했던 휴대폰 기기로 가입했거나 동일한 휴대폰번호로 가입한 이력이 있을 경우 쿠폰 세트는 지급되지 않습니다.

    만약, 처음 앱을 설치하여 회원가입했는데 쿠폰 세트가 지급되지 않은 경우라면 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요.

    Update 2018.06.12</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="쿠폰함에서 쿠폰이 사라졌어요." class="a-btn">▶ 쿠폰함에서 쿠폰이 사라졌어요.</a>
					<div class="a-btn-box">
						<p>    사용하지 않은 쿠폰은 유효기간이 지나면 쿠폰함에서 자동 삭제가 됩니다.
 
    앱 하단 내정보 > 쿠폰함에서 유효기간을 미리 확인해 주세요.

    Update 2018.04.02</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="예약 시 사용가능한 쿠폰이 없어요." class="a-btn">▶ 예약 시 사용가능한 쿠폰이 없어요.</a>
					<div class="a-btn-box">
						<p>    쿠폰마다 사용 가능한 숙소/요일/객실타입/금액대 등이 다르게 적용되며, 유효기간 및 사용 기준이 달라집니다. 
 
    앱 하단 내정보 > 쿠폰함에서 보유한 쿠폰의 사용 기준을 확인해 주세요.

    Update 2017.03.31</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="쿠폰 사용 시 차액은 소멸되나요?" class="a-btn">▶ 쿠폰 사용 시 차액은 소멸되나요?</a>
					<div class="a-btn-box">
						<p>    쿠폰 금액 이하의 객실을 예약할 경우 차액은 소멸되며, 쿠폰 금액 이상의 객실을 예약할 경우 별도의 차액 결제가 가능합니다.

    Update 2017.05.08</p>
 					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="쿠폰 중복으로 사용할 수 있나요?" class="a-btn">▶ 쿠폰 중복으로 사용할 수 있나요?</a>
					<div class="a-btn-box">
						<p>    할인쿠폰의 경우 중복 사용은 불가합니다.

    예약 시 1장의 쿠폰만 사용이 가능한 점 이용에 참고 부탁드립니다.

    쿠폰마다 사용 기준과 유효기간이 다르게 적용되므로 앱 하단 내정보 > 쿠폰함에서 미리 확인 후 사용해주세요!

    Update 2017.07.21</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="사용한 쿠폰을 쿠폰함에서 삭제하고 싶어요" class="a-btn">▶ 사용한 쿠폰을 쿠폰함에서 삭제하고 싶어요</a>
					<div class="a-btn-box">
						<p>    사용 완료된 쿠폰 내역은 앱 하단 더보기 > 사용내역 관리 > 쿠폰함에서 삭제가 가능합니다.

 

    Update 2017.04.19</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="친구초대 코드 입력했는데 쿠폰을 못 받았어요." class="a-btn">▶ 친구초대 코드 입력했는데 쿠폰을 못 받았어요.</a>
					<div class="a-btn-box">
						<p>    친구초대 할인쿠폰은 여기어때 앱 설치 및 가입 이력이 없는 신규 고객이 회원가입 후 친구초대 코드를 입력해야지만 지급됩니다.

    이미 사용했던 휴대폰 기기로 가입했거나 동일한 휴대폰번호로 가입한 이력이 있을 경우 할인쿠폰은 지급되지 않습니다.

    만약, 처음 앱을 설치하여 회원가입 및 친구초대 코드를 입력했는데 할인쿠폰이 지급되지 않은 경우라면 1:1문의 또는 고객행복센터(☎1670-6250)에 문의해 주세요. 

    Update 2018.06.12</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="친구가 첫 예약했는데 쿠폰이 지급되지 않았어요." class="a-btn">▶ 친구가 첫 예약했는데 쿠폰이 지급되지 않았어요.</a>
					<div class="a-btn-box">
						<p>    나의 친구초대 코드를 입력하고 회원가입한 친구가 7일 이내 첫 숙박예약 후 입실하면 체크아웃 당일 18시에 나에게 5,000원 쿠폰이 지급됩니다. 

    만약, 친구가 첫 결제를 취소하거나 환불을 받게 되면 쿠폰은 지급되지 않습니다.

    Update 2018.06.04</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="여기어때 포인트란 무엇인가요?" class="a-btn">▶ 여기어때 포인트란 무엇인가요?</a>
					<div class="a-btn-box">
						<p>    여기어때에서 적립하고 사용할 수 있는 일종의 사이버머니(마일리지)이며, 객실 예약 시 현금처럼 사용이 가능합니다.
 
    앱 하단 더보기 > 혜택꿀팁 메뉴를 참고하여 더 많은 포인트를 적립해 보세요!

    Update 2017.11.01</p>
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