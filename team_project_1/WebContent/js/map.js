
var myPos;
var hotelArray = [];

var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
var mapOption;
var myData;

var start = $('input[name=res_Start]').val();
var end = $('input[name=res_End]').val();

var getPosition = function() {
	return new Promise(function(f) {
		navigator.geolocation.getCurrentPosition(f);
	});
}

getPosition().then(function(p) {

	// p : position
	// 마커 이미지 
	var myLocation = "https://yaimg.yanolja.com/joy/pw/icon/marker/map-marker-my.svg";
	var imageSize = new daum.maps.Size(28, 40);
	var myMarker = new daum.maps.MarkerImage(myLocation, imageSize);

	var coords = new daum.maps.LatLng(p.coords.latitude, p.coords.longitude);

	mapOption = {
		center : coords, // 지도의 중심좌표
		level : 5 // 지도의 확대 레벨
	};

	// 지도를 생성합니다.
	var map = new daum.maps.Map(mapContainer, mapOption);

	var marker = new daum.maps.Marker({
		map : map,
		position : coords,
		image : myMarker
	})

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	// 현재 위치 좌표를 주소로 출력(In The h2)
	/*var callback = function(result, status) {
		document.getElementById("addr").innerHTML = result[0].address.address_name;
	};*/

	// 좌표 -> 주소 변환
	// geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);

	// 호텔 마커 출력
	$.ajax("./json/listInTheMap.jsp", {
		dataType : 'json',
		async : true,
		data : "res_Start=" + start + "&res_End=" + end,
		success : function(data) {
			myData = data;

			for (var i = 0; i < myData.length; i++) {
				hotelArray.push(myData[i]);
				// 마커 이미지의 이미지 주소입니다
				var hotelImage = "https://yaimg.yanolja.com/joy/pw/icon/marker/map-marker-hotel.svg";
				var imageSize = new daum.maps.Size(24, 35);
				var hotelMarker = new daum.maps.MarkerImage(hotelImage, imageSize);


				// 마커를 생성합니다
				var marker = new daum.maps.Marker({
					map : map, // 마커를 표시할 지도
					position : new daum.maps.LatLng(myData[i].wtmX, myData[i].wtmY), // 마커를 표시할 위치
					image : hotelMarker // 마커 이미지
				//				        title: myData[i].hotelNo
				});

				var infowindow = new daum.maps.InfoWindow({
					content : myData[i].hotelName // 인포윈도우에 표시할 내용
				});

				daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
				daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
				daum.maps.event.addListener(marker, 'click', makeClickListener(marker, i, myData));

			} // for() 끝

			// 클릭시 리스트 이동 함수 
			function makeClickListener(marker, i, myData) {
				return function() {
					var nowScroll = $('html, body').scrollTop();
					var myScroll = $(document.getElementById(myData[i].hotelNo)).offset().top - 150;
					
					
					$('html, body').animate({
						scrollTop : myScroll 
					}, 500);

				};
			} // makeOverListener() 끝

			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
				return function() {
					infowindow.open(map, marker);
				};
			} // makeOverListener() 끝

			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
				return function() {
					infowindow.close();
				};
			} // makeOutListener() 끝

			// 중심 좌표에서 호텔까지의 거리값을 계산 후 loadLength 데이터에 추가
			for (var i = 0; i < hotelArray.length; i++) {
				var clickPosition = [];
				clickPosition.push(new daum.maps.LatLng(map.getCenter().ib, map.getCenter().jb));
				clickPosition.push(new daum.maps.LatLng(hotelArray[i].wtmY, hotelArray[i].wtmX));
				var clickLine = new daum.maps.Polyline({
					path : [ clickPosition ]
				});

				hotelArray[i].loadLength = Math.round(clickLine.getLength());

			} // for문 끝

			// 가까운 순으로 정렬
			hotelArray.sort(function(left, right) {
				return left.loadLength - right.loadLength;
			});

			// 호텔 리스트 테이블을 생성
			$('#content').append('<div></div>');
			var div = $('#content').children();

			for (var i = 0; i < hotelArray.length; i++) {
				var star = "";
				for (var j = 0; j < 5; j++) {
					if (j < hotelArray[i].star) {
						star += '★';
					} else {
						star += '☆';
					}
				}

				div.append('<div class="room-main" id="room-main">'
					+ '<a href="hotelDetailPage?res_Start=' + start + '&res_End=' + end + '&hotelNo=' + hotelArray[i].hotelNo + '">'
					+ '<div class="image-box"></div>'
					+ '<div class="info-box">'
					+ '<div id = "' + hotelArray[i].hotelNo + '">'
					+ '<span class="hotel-title">' + hotelArray[i].hotelName + '</span>'
					+ '</div>'
					+ '</a>'
					+ '<div class="distance">'
					+ '<span>' + (hotelArray[i].loadLength < 1000 ? hotelArray[i].loadLength + 'm' : Number(hotelArray[i].loadLength / 1000).toFixed(2) + 'km') + '</span>'
					+ '</div>'
					+ '<div class="star"><span>' + star + '</span></div>'
					+ '<div class="grade"><span>' + hotelArray[i].grade + '</span></div>'
					+ '<div class="address"><span>' + hotelArray[i].address + '</span></div>'
					+ '<div class="descript"><span>' + hotelArray[i].descript + '</span></div>'
					+ '</div>'
					+ '</div>'
				);
			}
		} // ajax success문
	}); // ajax문 끝

}).catch(function(err) {
	console.log(err);
})