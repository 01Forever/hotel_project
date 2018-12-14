<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp" />
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/button.css">
<title>비밀번호찾기</title>
<style>
table{
	margin-left: 61px;
	
}
td{
	padding: 0 0 70px 11px;
}
table tr th{
	font-weight:600;
	color: #292929;
	font-size:14px;
}
table td input{
	padding: 8px;
}
#frm{
	text-align:center;
}
.content-box{
	
	margin:0 auto;
	width:500px;
}
#emailId{
	/* margin-right: 59px; */
	margin-left: 6px;
	margin-right: 57px;
    border: 1px solid #ccc;
}
.content-box .top-info{
	padding-top: 120px;
    padding-bottom: 80px;
}
.content-box .top-info p{
	color: #666;
    font-size: 12px;
}
table td .btn-email{
	cursor:pointer;
    font-size: 13px;
    line-height: 1.6em;
    min-width: auto;
    padding: 4px;
    font-weight: 400;
    border-radius: 5px;
    border: 1px solid #f8585b;
    color: #f8585b;
    text-align: center;
    background-color: #ffffff;
}
.btn-email-check{
	cursor:pointer;
    font-size: 13px;
    line-height: 1.6em;
    min-width: auto;
    padding: 4px;
    font-weight: 400;
    border-radius: 5px;
    border: 1px solid #f8585b;
    color: #f8585b;
    text-align: center;
    background-color: #ffffff;
}

table td .btn-email:hover{
	border: 1px solid #f85858;
    color: #fff;
    background-color: #f85858;
}
.button_area .btn-link a{
	font-size: 13px;
	text-decoration:none;
	color:#ffffff;
}
.btn-link{
	vertical-align: bottom;
	padding:12px;
	border-radius: 5px;
	display: inline-block;
    background: #f8585b;
}
#emailPermissionText{
	margin-left: 37px;
}
.button_area{
	padding-top: 30px;
	padding-left: 35px;
}
.temp-pw-box{
	padding:10px 0 20px 50px;
}
.temp-pw-box p{
	padding-bottom:12px;
}
.temp-pw-box button{
	border: 1px solid #f8585b;
    color: #f8585b;
    background: #fff;
    padding-top: 24px;
    padding: 3px 7px;
    cursor: pointer;
}
</style>
</head>
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
	<div class="member_table">
		<div class="content-box">
			<div class="top-info">
				<h2>비밀번호찾기</h2>
				<hr>
				<p>비밀번호를 찾고자하는 아이디를 입력해주세요.</p>
			</div>
			<form action="password" method="post" id="frm" name="frm">
					<table>
						<tr>
							<th colspan="2"><label for="emailId">이메일아이디<span>*</span></label></th>
						
							<td>
								<input type="text" name="emailId" id="emailId" />
								<div id="emailPermissionText"></div> <!-- 인증확인부분 삽입 -->
							</td>
							<td><button type="button" class="btn-email" onclick="check()">이메일인증</button></td>
						</tr>
					</table>
					<div class="temp-pw-box" style="display: none">
						<p>임시 비밀번호를 발급받겠습니까?</p>
						<button type="submit"><span>보내기</span></button>
					</div>
					<div class="button_area">
						<button class="btn cancel" type="reset" value="취소"><span>취소</span></button>
						<div class="btn-link">
							<a href="./index.jsp">메인으로 돌아가기</a>
						</div>
					</div>
			</form>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp" />
</div>
<script type="text/javascript">
var checkKey = "";

function check() {
	if ($("#emailId").val() == "") {
		alert("아이디를 입력해주세요");
		return;
	}
	//이메일 정규식	
	var emailRule = /^((([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/
	if (!emailRule.test($("input[id='emailId']").val())) {
		alert("잘못된 이메일 형식 입니다.");
		return false;
	} 
	// ajax 아이디 확인	
	$.ajax({
		url : "./idCheck",
		type : "POST",
		dataType : "JSON",
		data : {
			emailId : $("#emailId").val()
		},
		success : function(data) { //alert(data.result);
			if (data.result < 1) {
				alert("없는 아이디 입니다. 아이디를 확인해주세요");
				// 인증 이메일 함수
				
			} else {
				alert("회원 아이디입니다.");
				emailPermission();
				return;
			}
		},
		error : function(xhr) {
			console.log(xhr);//문제가 있을시에 이부분에 에러 처리한다
		}
	});
} //check end

function emailPermission() {
	$("#emailId").attr("readonly", "readonly"); // 이메일 인증시 값 변경 안되게
	//인증확인 부분 html
	var str = "<input type='text' name='permissionText' id='permissionText'/>";
	str += "<button type = 'button' class='btn-email-check' onclick = 'permissionCheck()'>인증코드확인</button>";
	$("#emailPermissionText").css('display','block');
	$("#emailPermissionText").append(str); // 인증확인 부분 삽입
	$(".btn-email").css("display", "none"); // 이메일 인증후 사용 불가하게 막기
	$.ajax({
		url : "./emailPermission",
		type : "post",
		dataType : "JSON",
		data : {
			emailId : $("#emailId").val()
		},
		success : function(data) {
			checkKey = data.result;
			if (idCheck) {

			}
		},
		error : function(xhr) {
			console.log(xhr);//문제가 있을시에 이부분에 에러 처리한다
		}
	});
}

//이메일 인증후
function permissionCheck() {
	if (checkKey == $("#permissionText").val()) {
		alert("이메일 인증이 완료되었습니다.");
		$(".btn-email-check").css("display", "none");
		$("#permissionText").css("display", "none");
		$(".temp-pw-box").css("display","block")
	}
}
</script>
</body>
</html>