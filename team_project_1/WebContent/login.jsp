<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>로그인</title>
</head>
<body>
<div class="container ">
	<jsp:include page="./comm/header.jsp"/>
	<div class="content login-box-css">
		<div id="social" style="display: none;">
			<!-- 네이버아이디로로그인 버튼 노출 영역 -->
			<div id="naver_id_login"></div>
		</div>
		<div id="login">
			<form action="login" method="post" name="loginfrm">
				<div id="input">
					<input type="hidden" id = "loginType" name ="loginType" value = "normal" />
					<input type="hidden" id = "nickName" name ="nickName"/>
					<input type="text" name="emailid" id="emailid" placeholder="이메일 아이디를 입력하세요." value="${EmeliId}" /> 
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요."  onkeyup="enterkey();"/>
				</div>
				<div id="button">

					<div class="login_button">
						<button type="button" onclick="return loginAjax();">로그인</button>	
					</div>
					<div class="button_tab2">
					<button type="reset" onclick="location.href='main'	">홈으로</button>
					<button type="button" onclick="location.href='./password'">비밀번호 찾기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>
</div>
	<script type="text/javascript">
	function enterkey() {
		// 엔터키가 들어올시 로그인 버튼의 이벤트가 작동된다.
        if (window.event.keyCode == 13) {
        	loginAjax();
        }
	}
	</script>
	<script type="text/javascript">
		function loginAjax() {
			// 이메일 값이 없을경우
			if ($("#emailid").val() == "") {
				alert("이메일은 필수값 입니다."); // 이메일의 값이 없었을시에는 이메일 값이 필수값이라는 알람과 
				$("#emailid").focus(); //포커스를 이메일 입력칸으로 이동시켜줍니다.
				return false; 
			}
			//이메일 정규식	
			var emailRule = /^((([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/
			if (!emailRule.test($("input[id='emailid']").val())) {
				alert("잘못된 이메일 형식 입니다."); // 잘못된 이메일 형식이 들어올시에 잘못된 이메일이라는 경고를 보여줍니다.
				return false;
			}
			if($("#pwd").val() == ""){
				alert("비밀번호는 필수값 입니다.");
				$("#pwd").focus();
				return false;
			}
			if($("#pwd").val().length < 6){
				alert("비밀번호는 6자리이상 12 자리 이하입니다.");
				$("#pwd").focus();
				return false;
			}
			
			$.ajax({
				url : "./loginCheck",
				type : "POST",
				dataType : "JSON",
				data : {
					emailid : $("#emailid").val(),
					pwd : $("#pwd").val()
				},
				success : function(data) {					
					if (data.result == "1") {
						alert("존재하지 않는 아이디 입니다.");
						return;
					} else if (data.result == "2") {
						$(document.loginfrm).submit();
					} else {
						alert("비밀번호가 일치하지 않습니다.");
					}
				},
				error : function(xhr) {
					alert("로그인에 실패했습니다. 다시 시도해주세요");
					console.log(xhr);//문제가 있을시에 이부분에 에러 처리한다
				}
			});

		}

	</script>
	<!-- 네이버 -->
	<script type="text/javascript">
	  	var naver_id_login = new naver_id_login("KMvZrqKKTCI7WHxmBDVy", "https://donyubi.xyz/callback.jsp");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2, 40);
	  	naver_id_login.setDomain("YOUR_SERVICE_URL");
	  	naver_id_login.setState(state);
	  	naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();
	</script>
	<script type="text/javascript">
	function naverLogin(emailId,nickName){
		//추후 변수명 testEmailId > emailId 수정
		//추후 변수명 testNickName > nickName 수정
		
		//로컬
		/* 
		var testEmailId = "aisz2004@naver.com";
		var testNickName = "엄토토";
		$("#loginType").val("naver");
		$("#nickName").val(testNickName);
		$("#emailid").val(testEmailId);
		$(document.loginfrm).submit();
		 */
		//로컬
		
		
		//운영
		$("#loginType").val("naver");
		$("#nickName").val(nickName);
		$("#emailid").val(emailId);
		$(document.loginfrm).submit();
		//운영
	}
	</script>
</body>
</html>