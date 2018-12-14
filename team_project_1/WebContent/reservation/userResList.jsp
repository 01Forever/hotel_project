<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/ReserveList.css">
<title>예약 내역</title>

</head>
<body>
<jsp:include page="../comm/header.jsp" />
<div class="container">
	<div>
	<div id = "header">
			 
	</div>
	<div id="left-sidebar">
		<div class="otherList">
		    <ul class="tabs">
		        <li rel="tab2"><a href="#">마일리지</a></li>
		        <li class="active" rel="tab1"><a href="#">예약 내역</a></li>
		        <li rel="tab3"><a href="#">최근 본 숙소</a></li>
		        <li rel="tab4"><a href="#">내 정보 관리</a></li>
		    </ul>
		</div>
		<script>
			$(function () {
			    $(".tab_content").hide();
			    $(".tab_content:first").show();
	
			    $("ul.tabs li").click(function () {
			        $("ul.tabs li").removeClass("active").css("color", "#333");
			        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
			        $(this).addClass("active").css("color", "darkred");
			        $(".tab_content").hide()
			        var activeTab = $(this).attr("rel");
			        $("#" + activeTab).fadeIn()
			    });
			});
		</script>	
	</div>	
	
	<div id="content">
		<div class="tab-box">
		
			<div id="tab1" class="tab_content">
				<select id="select">
				  <option value="">전체 상태</option>
				  <option value="0">입금 확인중</option>
				  <option value="1">결제 완료</option>
				  <option value="2">방문 완료</option>
				  <option value="3">취소</option>
				</select>
				<div id="resList">
				
				</div>
			</div> <!-- tab1 end; -->
			
       		<div id="tab2" class="tab_content">
		        
    		</div> <!-- tab2 end; -->
	       
	        <div id="tab3" class="tab_content">
	        	<div class="reservation-box">
	        		<div class="reservation-image">
	        		
	        		</div>
	        		<div class="reservation-info">
	        		
	        		</div>
	        	</div>
	        </div> <!-- tab3 end; -->
	        
	        <div id="tab4" class="tab_content">
				<ul>
					<li>아이디</li>
					<li>닉네임</li>
					<li>이름</li>
					<li>휴대전화</li>
					<li>기존 비밀번호</li>
					<li>새 비밀번호</li>
					<li>새 비밀번호 확인</li>
				</ul>
			</div> <!-- tab4 end; -->
		</div>
	</div>
	<div id="null">
		
	</div>
</div>
</div>
<jsp:include page="../comm/footer.jsp" />
</body>

<script type="text/javascript">

$("ul.tabs li").click(function () {
	if($("li[rel='tab1']").hasClass("active")){
		$("#select").val('').attr("selected", "selected");
		f();
	}
});

var f = function() {
	$.ajax("resListPage",{
		dataType : 'json',   
	    async : true,
	    data: {
	    	"resStat" : $("#select").val()
	    },
	    success : function(data){
				$("#resList").append("<div></div>");
		    	$("#resList").append("<div></div>").empty();
		    	var div = '';
		    	
		    	console.log(data);
		    	for(var i=0; i<data.length; i++){
		    		var resStat;
		    		
		    		div += '<div class="reserve-info">'
		    			+ '<p>호텔 </p>'
		    			+ '<p>방 이름</p>'
		    			+ '<p>예약 번호 </p>'
		    			+ '<p>체크인 </p>'
		    			+ '<p>체크아웃 </p>'
		    			+ '<p>예약 날짜 </p>'
		    			+ '<p>결제 가격 </p>'
		    			+ '<p>예약 상태 </p></div>';
						
		    		div += '<div class="reserve-value"><span>: '
	           			+ data[i].hotelName
	           			+ '</span><br><span>: '
	           			+ data[i].roomName
	           			+ '</span><br><span>: '
						+ data[i].res_idx
						+ '</span><br><span>: '
						+ data[i].res_start
						+ '</span><br><span>: '
						+ data[i].res_end
						+ '</span><br><span>: '
						+ data[i].resDate
						+ '</span><br><span>: '
						+ data[i].price 
						+ ' 원 </span><br>';
			   			
			   		if(data[i].resStat == "0"){
			   			resStat = "입금 확인중";
			   		}else if(data[i].resStat == "1"){
			   			resStat = "결제 완료";
			   		}else if(data[i].resStat == "2"){
			   			resStat = "방문 완료";
			   		}else{
			   			resStat = "취소";
			   		}
			   		
			   		div += '<span>: '
			   			+ resStat
			   			+ '</span><br></div>';
			   			
			   		div += '<div class="button_box">'
			   			+ '<div class="button_tab1">'
			   			+ '<button type="button" onclick="window.open(\'reservationListCheck?res_idx='
			   			+ data[i].res_idx
			   			+ '\',\'\''
			   			+ ',\'width=500,height=650,location=no,resizable=no\');">결제 내역 확인'
			   			+ '</button><br></div>'
			   			+ '<div class="button_tab2">'
			   			+ '<button type="button" onclick="window.open(\'./reservationCancel?res_idx='
			   			+ data[i].res_idx
			   			+'\',\'\''
			   			+ ',\'width=500,height=650,location=no,resizable=no\');">예약 취소'
			   			+ '</button></div></div>';
		    			
		    	
		    	
		    	}
		    	
		    	$("#resList").append("<div></div>").children().html(div);
	    }
	});
}

$("#select").change(f);
f();

</script>
</html>