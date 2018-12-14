<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
<link rel="stylesheet" type="text/css" href="./css/main.css"> <!-- 메인레이아웃 -->
<link rel="stylesheet" type="text/css" href="./css/reset.css">
<link rel="stylesheet" type="text/css" href="css/set1.css" /> <!-- 메인에 추천여행지 css -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd"></script>
<script src="//cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> <!-- bx -->
<script src="js/calendar.js"></script>
</head> 
<body>
<div class="container">
	<jsp:include page="/comm/header.jsp"/>
	<div id="search">
		<div id="maintext">
			<p>국내 최저가 호텔 검색 및 예약은 요기죠기와 함께하세요!</p>
		</div>
		<div id="search_bar">
			<form action="HotelSearch" method="get" name="hotelSearch">
				<div class="search_item">
					<div class="search_itemIn">
						<div class="search_category">
							<p>구분</p>
						</div>
						<div class="search_input">
							<p>호텔</p>
						</div>  
					</div>
				</div>
				<div class="search_item">
					<div class="search_itemIn">
						<div class="search_category">
							<p>지역</p>
						</div> 
						<div class="search_input">
							<label for="borugh" >강남구</label>
							<select name="borugh" id="borugh">
								<option value="강남구" selected="selected">강남구</option>
								<option value="강동구">강동구</option>
								<option value="강북구">강북구</option>
								<option value="강서구">강서구</option>
								<option value="관악구">관악구</option>
								<option value="광진구">광진구</option>
								<option value="구로구">구로구</option>
								<option value="금천구">금천구</option>
								<option value="노원구">노원구</option>
								<option value="도봉구">도봉구</option>
								<option value="동대문구">동대문구</option>
								<option value="동작구">동작구</option>
								<option value="마포구">마포구</option>
								<option value="서대문구">서대문구</option>
								<option value="서초구">서초구</option>
								<option value="성동구">성동구</option>
								<option value="성북구">성북구</option>
								<option value="송파구">송파구</option>
								<option value="양천구">양천구</option>
								<option value="영등포구">영등포구</option>
								<option value="용산구">용산구</option>
								<option value="은평구">은평구</option>
								<option value="종로구">종로구</option>
								<option value="중구">중구</option>
								<option value="중랑구">중랑구</option>
							</select>
						</div>
					</div>
				</div>
				<div class="search_item"> 
					<div class="search_itemIn">
						<div class="search_category">
							<p>체크인</p>
						</div>
						<div class="search_input">
							<input type="text" name="res_Start" id="res_Start" class="datepicker" size="12" />
						</div>
					</div>
				</div>
				<div class="search_item">
					<div class="search_itemIn">
						<div class="search_category">
							<p>체크아웃</p>
						</div>
						<div class="search_input">
							<input type="text" name="res_End" id="res_End" class="datepicker" size="12" />
						</div>
					</div>
				</div>
				<div class="search_item_button">
					<input type="submit" id="search_button" value="호텔검색">
				</div>
			</form>
		</div>
	</div>
	<div id="content">
		<section id="close" class="box_s">
			<div class="main-title">		
				<div id="position">
					<i class="icono-pin" id="location"></i>
					<span id="addr"></span>
					<div id="map" style="display: none;"></div>
				</div>
				<img class="category-img" alt="" src="images/back_logo.png">
				<h2 class="mainTitle">주변 호텔</h2>
			</div>
			<div id="closeHotelList"></div>
			<script src="js/index.js"></script>
		</section>
		<section id="recommend">
			<div class="box_s clear-b">
				<!-- <div class="grid">
					<figure class="effect-layla">
						<img src="images/plan1.jpg" alt="img06"/>
							<figcaption>
								<h2>실시간 추천 호텔 <span>BEST 5!</span></h2>
								<p>지금 어떤 호텔이 가장 인기가 많을까요?</p>
								<a href="#">View more</a>
							</figcaption>			
					</figure>
				</div>
				<div class="grid">
					<figure class="effect-layla">
						<img src="images/main2.jpg" alt="img06"/>
							<figcaption>
								<h2>국내 겨울 여행지 <span>강릉 1박 2일 여행코스!</span></h2>
								<p>올 겨울 어디로 여행가야 좋을까? 강릉 여행코스를 추천해드립니다.</p>
								<a href="#">View more</a>
							</figcaption>			
					</figure>
				</div>
				<div class="grid">
					<figure class="effect-layla">
						<img src="images/6.jpg" alt="img06"/>
							<figcaption>
								<h2>겨울 해외여행지 추천 <span>BEST 6!</span></h2>
								<p>다가오는 12월의 겨울 호텔 예약도 요기죠기와 함께하세요.</p>
								<a href="#">View more</a>
							</figcaption>			
					</figure>
				</div> -->
				
				<div class="main-title">
					<img class="category-img" alt="" src="images/back_logo.png">
					<h2 class="mainTitle">추천 호텔</h2>
				</div>
				
				<div class="plan">
					<a href="RecommendPage">
						<img alt="기획1" src="images/plan1.jpg"/>
					</a>
	
					<span>실시간 추천 호텔 BEST 5!</span>
					
				</div>
				<div class="plan">
					<a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=6379962&memberNo=483673&vType=VERTICAL">
						<img alt="기획2" src="images/main2.jpg"/>
					</a>
					<span>국내 겨울 여행지 강릉 1박 2일 여행코스!</span>	
					
				</div>
				<div class="plan">
					<a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=16727575&memberNo=33157148&searchKeyword=%EA%B2%A8%EC%9A%B8%20%EC%97%AC%ED%96%89%EC%A7%80%20%EC%B6%94%EC%B2%9C&searchRank=9">
						<img alt="기획3" src="images/main3.jpg"/>
					</a>					
					<span>12월 겨울 해외여행지 추천 BEST 6!</span> 
					
				</div>
			</div>
		</section>
		<section id="event">
			<div class="box_s">
				<div class="main-title">
					<h2 class="mainTitle">이벤트</h2>
				</div>
				<div id="sliderBox">
					<ul id="eventSlider">
						<li><a href="eventboard.do" title="첫번째 이벤트페이지로 이동하기"><img alt="이벤트" src="images/new_event1.png"/></a>
						<li><a href="eventboard.do" title="두번째 이벤트페이지로 이동하기"><img alt="이벤트" src="images/new_event2.png"/></a>
						<li><a href="eventboard.do" title="세번째 이벤트페이지로 이동하기"><img alt="이벤트" src="images/new_event3.png"/></a>				
						<li><a href="eventboard.do" title="네번째 이벤트페이지로 이동하기"><img alt="이벤트" src="images/new_event4.png"/></a>				
						</li>
					</ul>   
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="./comm/footer.jsp"/>
</div>
<script>
	// For Demo purposes only (show hover effect on mobile devices)
	[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
		el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
	} );
</script>
</body>
</html>