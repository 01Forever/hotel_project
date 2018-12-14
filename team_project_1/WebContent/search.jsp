<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색</title>
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/lightpick.css?v=1.2.5">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment-with-locales.min.js"></script>
</head>
<body>
	<jsp:include page="./comm/header.jsp" />
	<div id="container">
		<div id="content">
			<div class="menu">
				<div class="calendar">
					<div class="check-tab">
						<div id="check-in">
							<span>체크인</span> 
						</div>
						<div id="check-out">
							<span>체크아웃</span>
						</div>
					</div>
					<div class="calendar-head">
						<div class="start">
							<input type="text" name="res_Start" id="res_Start" class="datepicker" value="${param.res_Start}">
						</div>
						<div class="last">
							<input type="text" name="res_End" id="res_End" class="datepicker" value="${param.res_End}">
						</div>
					</div>
				</div>
			</div>
			<hr class="menu-bottom">
			<div class="main">
				<c:forEach items="${list}" var="hotel">
					<div class="box">
						<a href="hotelDetailPage?res_Start=${param.res_Start}&res_End=${param.res_End}&hotelNo=${hotel.hotelNo}">
						<div class="image-box" style="background: url('images/hotel4.jpg'); background-size: cover;"></div>
						</a>
						<div class="infor">
							<a href="hotelDetailPage?res_Start=${param.res_Start}&res_End=${param.res_End}&hotelNo=${hotel.hotelNo}">
							<div class="search-title">
								<span>${hotel.hotelName}</span>
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
							<div class="price-item">
								<span class="price-type">
									<i> 
										<b>숙박</b> 
										<small>숙소에 문의</small>
									</i> 
								</span>
								<span>
									<i class="price-reserve">예약가</i> 
									<em class="price-part">${hotel.price}</em>
									<i class="won">원</i>
								</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<script src="./js/view.js"></script>
	<script type="text/javascript">
	var start = document.getElementById('res_Start');
	var end = document.getElementById('res_End');
	
	//demo-3
	new Lightpick({
	    field: document.getElementById('res_Start'),
	    secondField: document.getElementById('res_End'),
	 // first day of the week
	    // 1 = Monday
	    firstDay: 1,
	    // parent element
	    parentEl: 'body',
	
	    // language
	
	    lang: 'eng',
	
	    // date format
	
	    format: 'YYYY-MM-DD',
	
	    // separator character
	
	    separator: ' - ',
	
	    // number of months to display
	
	    numberOfMonths: 1,
	
	    // number of columns to display
	
	    numberOfColumns: 2,
	
	    // auto close after selection
	    autoclose: false,
	
	    // Repick start/end instead of new range.
	    repick: false,
	    
	    // start/end dates
	
	    startDate: start.value,
	
	    endDate: end.value,
	
	    // min/max dates
	
	    minDate: moment(),
	
	    maxDate: moment().add(1, 'month').endOf('month'),
	
	    // an array of disabled dates
	
	    disableDates: null,
	    // shows tooltip
	    hoveringTooltip: true,
	
	    // hide on click
	    hideOnBodyClick: true,
	
	    // shows footer
	    footer: true,
	
	    disabledDatesInRange: true,
	
	    tooltipNights: false,
	
	    // localization
	
	    locale: {
	
	      buttons: {
	
	          prev: '←',
	
	          next: '→',
	
	          close: '×',
	
	          apply: '확인',
	
	      },
	
	      tooltip: ['day', 'days'],
	
	    },
	
	
	
	    // callbacks
	
	    onSelect: null,
	
	    onOpen: null,
	
	    onClose: null
	
	   
	   });
	</script>
	<jsp:include page="./comm/footer.jsp" />
</body>
</html>