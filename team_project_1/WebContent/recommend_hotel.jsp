<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>추천 호텔</title>
<link rel="stylesheet" type="text/css" href="css/recommend_hotel.css">
<script src="js/view.js"></script>
</head>
<body>
	<jsp:include page="./comm/header.jsp" />
	<div class="container">
		<div id="content">

			<div class="main">
			<p class="head-category">추천 호텔 BEST 5</p>
			<hr class="menu-bottom">
				<div class="list">
					<ul>
							<li>
								<div class="box">
									<a href="#">
										<div class="image-box" style="background: url('images/hotel4.jpg'); background-size: cover;"></div>
										<div class="infor">
											<div class="search-title">
												<p>더 클래스300 호텔<p>
											</div>
											
									</a>
									<div class="star">
										<c:choose>
											<c:when test="${hotel.star == '0'}">
												<span>☆☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '1'}">
												<span>★☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '2' }">
												<span>★★☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '3' }">
												<span>★★★☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '4' }">
												<span>★★★★☆</span>
											</c:when>
											<c:otherwise>
												<span>★★★★★</span>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="price-rab">
										<div class="price-item">
											<i class="price-type"> 
												<p id ="inform">강남역 도보 15분</p>
												<small>국내 최고의 서비스!</small>
											</i> 
											<span class="recommend-price"> 
												<i class="price-reserve">예약가</i> 
												<span>
												<em class="price-part">${hotel.price}</em>
												<i class="won">87000원</i>
													</span>
											</span>
										</div>
									</div>
								</div>
							</li>
						
							<li>
								<div class="box">
									<a href="#">
										<div class="image-box" style="background: url('images/hotel2.jpg'); background-size: cover;"></div>
										<div class="infor">
											<div class="search-title">
												<p>메이플레이스<p>
											</div>
											
									</a>
									<div class="star">
										<c:choose>
											<c:when test="${hotel.star == '0'}">
												<span>☆☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '1'}">
												<span>★☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '2' }">
												<span>★★☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '3' }">
												<span>★★★☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '4' }">
												<span>★★★★☆</span>
											</c:when>
											<c:otherwise>
												<span>★★★★★</span>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="price-rab">
										<div class="price-item">
											<i class="price-type"> 
												<p id ="inform">혜화역 도보 10분</p>
												<small>늦은 체크아웃 혜택</small>
											</i> 
											<span class="recommend-price"> 
												<i class="price-reserve">예약가</i> 
												<span>
												<em class="price-part">${hotel.price}</em>
												<i class="won">69000원</i>
													</span>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="#">
										<div class="image-box" style="background: url('images/hotel3.jpg'); background-size: cover;"></div>
										<div class="infor">
											<div class="search-title">
												<p>WD호텔<p>
											</div>
											
									</a>
									<div class="star">
										<c:choose>
											<c:when test="${hotel.star == '0'}">
												<span>☆☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '1'}">
												<span>★☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '2' }">
												<span>★★☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '3' }">
												<span>★★★☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '4' }">
												<span>★★★★☆</span>
											</c:when>
											<c:otherwise>
												<span>★★★★★</span>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="price-rab">
										<div class="price-item">
											<i class="price-type"> 
												<p id ="inform">신림역 도보 2분</p>
												<small>주중 [단독특가] 객실 오픈!</small>
											</i> 
											<span class="recommend-price"> 
												<i class="price-reserve">예약가</i> 
												<span>
												<em class="price-part">${hotel.price}</em>
												<i class="won">64800원</i>
													</span>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="#">
										<div class="image-box" style="background: url('images/hotel1.jpg'); background-size: cover;"></div>
										<div class="infor">
											<div class="search-title">
												<p>호텔 리베라</p>
											</div>
											
									</a>
									<div class="star">
										<c:choose>
											<c:when test="${hotel.star == '0'}">
												<span>☆☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '1'}">
												<span>★☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '2' }">
												<span>★★☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '3' }">
												<span>★★★☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '4' }">
												<span>★★★★☆</span>
											</c:when>
											<c:otherwise>
												<span>★★★★★</span>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="price-rab">
										<div class="price-item">
											<i class="price-type"> 
												<p id ="inform">청담역 도보 5분</p>
												<small>최저가 보장, 예악취소가능</small>
											</i> 
											<span class="recommend-price"> 
												<i class="price-reserve">예약가</i> 
												<span>
												<em class="price-part">${hotel.price}</em>
												<i class="won">93100원</i>
													</span>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="#">
										<div class="image-box" style="background: url('images/hotel4.jpg'); background-size: cover;"></div>
										<div class="infor">
											<div class="search-title">
												<p>필</p>
											</div>
						
									</a>
									<div class="star">
										<c:choose>
											<c:when test="${hotel.star == '0'}">
												<span>☆☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '1'}">
												<span>★☆☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '2' }">
												<span>★★☆☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '3' }">
												<span>★★★☆☆</span>
											</c:when>
											<c:when test="${hotel.star == '4' }">
												<span>★★★★☆</span>
											</c:when>
											<c:otherwise>
												<span>★★★★★</span>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="price-rab">
										<div class="price-item">
											<i class="price-type"> 
												<p id ="inform">영등포역 도보 15분</p>
												<small>하루의 시작은 조식으로부터</small>
											</i> 
											<span class="recommend-price"> 
												<i class="price-reserve">예약가</i> 
												<span>
												<em class="price-part">${hotel.price}</em>
												<i class="won">75000원</i>
													</span>
											</span>
										</div>
									</div>
								</div>
							</li>
						
					</ul>
				</div>
			</div>
		</div>
	<jsp:include page="./comm/footer.jsp" />
	</div>
</body>
</html>