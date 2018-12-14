<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp"/>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/around.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd&libraries=services"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd&libraries=services,clusterer,drawing"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebe19567b2ff71bd86715aaea891e0bd"></script>
<title>주변 호텔</title>
</head>
<body>
<jsp:include page="../comm/header.jsp"/>
<input type="hidden" name="res_Start" value="${res_Start}"> <!-- 선택 날짜 get 방식 전송을 위한 input -->
<input type="hidden" name="res_End" value="${res_End}">
<div class="container">
	<div id="content">
		<section>
			<div class="test">
			<!-- <div id="addr"></div> --> <!-- 현재 위치를 나타내기 위한 div --> 
			</div>
		</section>
	
		<aside>
			<div id="map"></div>
		</aside>
	</div>
</div>
<jsp:include page="../comm/footer.jsp"/>
<script type="text/javascript" src="./js/map.js"></script>
<script type="text/javascript">
	var he = window.innerHeight
	var hem = he - 100;
	$(".container").css('min-height',hem)
</script>
</body>
</html>