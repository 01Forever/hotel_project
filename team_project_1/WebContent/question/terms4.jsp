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

p, pre {
	color: rgba(0, 0, 0, 0.56);
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
				<a href="terms4.do" class="on-check">이용문의</a><a href="terms5.do">예약취소</a><a href="terms6.do">결제/영수증</a><a href="terms7.do">예약문의</a><a href="terms8.do">쿠폰/포인트</a><a href="terms9.do">이벤트</a>
			</div> 
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="고객행복센터 연결 지연 시 어떻게 하나요?" class="a-btn">▶ 고객행복센터 연결 지연 시 어떻게 하나요?</a>
					<div class="a-btn-box">
						<p>    우선, 고객센터 이용에 불편을 드려 죄송합니다.
						
    통화량이 많은 경우 상담사 연결이 지연 될 수 있는 점 너른 양해 부탁드립니다.
    
    요기죠기는 전화 상담 외 1:1문의로도 상담이 가능하오니, 앱 하단 더보기 > 고객문의 > 상단 1:1 문의를 이용해주시면 빠르게 도움 드리겠습니다

    ※ 요기죠기 고객행복센터 ☎1670-6250 / 연중무휴
    
    Update 2018.06.12.</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="직접 위치 설정해서 검색 할 수 있나요?" class="a-btn">▶ 직접 위치 설정해서 검색 할 수 있나요?</a>
					<div class="a-btn-box">
						<p>    앱 메인 숙소 메뉴 > 상단 지도검색에서 지도를 움직여 직접 위치 설정 검색이 가능합니다.
    숙소 리스트 상단 지도 아이콘(필터 아이콘 옆에 위치)을 클릭하시면 숙소들의 위치가 지도에 표시되오니 쉽게 숙소의 위치를 확인해 보세요!
    Update 2017.05.23.</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="숙소 정보가 사실과 달라요" class="a-btn">▶ 숙소 정보가 사실과 달라요.</a>
					<div class="a-btn-box">
						<p>    요기죠기에 노출되는 모든 숙소 정보는 숙소에서 제공한 정보로만 등록되며, 해당 숙소의 운영사정에 따라 이용기준이 사전 고지 없이 변경될 수 있습니다.
    잘못된 정보로 인한 불편 사항은 1:1문의 또는 고객행복센터(☎1670-6250)로 알려주시면 확인 후 즉시 수정하겠습니다.</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="운영중인 숙소를 등록하고 싶어요." class="a-btn">▶ 운영중인 숙소를 등록하고 싶어요.</a>
					<div class="a-btn-box">
						<p>    요기죠기 입점광고를 원하실 경우, 아래 방법으로 접수하실 수 있습니다.
  
    접수된 내용은 담당자 검토를 통해 순차적으로 적용됩니다.
	
    [호텔, 리조트, 펜션, 게스트하우스, 한옥, 캠핑]
    전화문의 (☎ 1577-5770) 
	
    Update 2018.03.20</p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="box">
					<a href="#" title="요기죠기는 어떤 서비스인가요" class="a-btn">▶ 요기죠기는 어떤 서비스인가요?</a>
					<div class="a-btn-box">
						<p>    요기죠기는 앱 하나로 빠르고 편리하게 전국의 숙소 정보를 얻고 비교하며 예약 까지 할 수 있는 종합숙박예약 서비스입니다.
 
    사용자 주변과 맞춤별 숙소 검색이 가능하며, 원하는 숙소를 바로예약! 미리예약! 연박예약! 까지 할 수 있습니다.

    또한 요기죠기 회원에게는 즐거운 이벤트, 부족함없는 쿠폰, 현금포인트 적립 등 다양한 혜택을 제공합니다.

    모텔, 호텔, 리조트, 펜션, 캠핑, 한옥, 게스트하우스까지! 예약 할 때 여기저기 찾지말고 앱 하나로 편리하게 검색하고 예약하시길 바랄게요♡

    Update 2017.03.31</p>
					</div>
				</div>
				<br>
				<hr>
					<br>
				<div class="box">
					<a href="#" title="정확한 내 위치 확인이 안돼요." class="a-btn">▶ 정확한 내 위치 확인이 안돼요.</a>
					<div class="a-btn-box">
						<p>    요기죠기는 위치기반 서비스로 정확한 위치가 인식되어야 정상적인 이용이 가능합니다. 

    단말기의 GPS를 통한 내 위치 설정 시, 단말기 상태에 따라 위치 인식에 예외사항이 발생할 수 있으니, GPS 재설정을 통해 정확하게 확인해 주시기 바랍니다.
 
    만약 같은 불편을 계속 겪으실 경우, 단말기의 소프트웨어 업데이트 또는 데이터 환경 확인 및 앱을 완전히 삭제 후 재설치 부탁드립니다.

    Update 2017.03.311</p>
					</div>
				</div>
				<br>
				<hr>
					<br>
				<div class="box">
					<a href="#" title="어제까지 봤던 숙소 정보를 찾을 수 없어요." class="a-btn">▶ 어제까지 봤던 숙소 정보를 찾을 수 없어요.</a>
					<div class="a-btn-box">
						<p>    숙소 사정에 의해 제휴가 종료될 경우, 해당 숙소의 정보가 확인되지 않습니다.

    추후 다시 제휴가 진행되면 숙소 정보 확인이 가능한 점 이용에 참고 부탁드립니다. 

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