<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
<meta charset="UTF-8">
<title>회원수정</title>
<link rel="stylesheet" type="text/css" href="./css/button.css">
<link rel="stylesheet" type="text/css" href="./css/modify.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
var pwdCheck = true;
//pwd 
function pwdChange() {
	var passRule = /^(?=.*?[A-Za-z])(?=.*?[0-9]).{6,12}$/
	if($("#pwd").val().length > 0){
		if (!passRule.test($("#pwd").val())) {
			$("#pwdResult").text("비밀번호는 6~12자리의 특수문자를 제외한 문자로 입력해주세요.");
			$("#pwdResult").css("color", "red");
			pwdCheck = false;
			return ;
		} else if (passRule.test($("#pwd").val())){
			// 정규화 이후 일치 여부
			if ($("#pwd").val() == $("#pwd_check").val()) {
				$("#pwdResult").text("비밀번호가 일치합니다.");
				$("#pwdResult").css("color", "black");
				pwdCheck = true;
			} else {
				$("#pwdResult").text("비밀번호가 일치하지 않습니다.");
				$("#pwdResult").css("color", "red");
				pwdCheck = false;
			}
		}
	}
} // 비밀번호 정규화 end

function submitCheck(){
	if (pwdCheck ||( $("#pwd").val().length == "0" && $("#pwd_check").val().length == "0" )) {	
		$("#frm").submit();
	}else{
		if(!pwdCheck){ alert("비밀번호일치 여부를 확인하세요"); return;}
	}
}
</script>
</head>
<body>
<div class="container modify">
	<jsp:include page="./comm/header.jsp"/>
	<div class="member_table">
		<h2>회원정보수정</h2>
		<form action="modify" method="post" id="frm" name="frm">
			<table>
				<tr>
					<th colspan="2"><label for="emailId">이메일아이디<span class="point">*</span></label></th>
					<td>
						<input type="text" name="emailId" id="emailId" value="${mVo.emailid}" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<th colspan="2"><label for="pwd">비밀번호<span class="point">*<br></span>(변경시 입력)</label></th>
					<td><input type="password" name="pwd" id="pwd" onkeyup="pwdChange()" /></td>
				</tr>
				<tr>
					<th colspan="2"><label for="pwd_check">비밀번호 확인<span class="point">*</span></label></th>
					<td>
						<input type="password" name="pwd_check" id="pwd_check" onkeyup="pwdChange()" />
						<div id="pwdResult"></div>
					</td>
				</tr>
				<tr>
					<th colspan="2"><label for="phone">연락처</label></th>
					<td>
						<input type="text" numberOnly id="phone" name="phone" value="${mVo.phone}"  maxlength="11"/>
					</td>
				</tr>
				<tr>
					<th colspan="2"><label for="nic">닉네임</label></th>
					<td><input type="text" id="nic" name="nic"  value="${mVo.nic}"  maxlength="6" placeholder="6자까지 입력이 가능합니다."/></td>
				</tr>
			</table>
			<div class="button_areas">
				<button class="btn save" type="button" onclick="submitCheck();"><span>확인</span></button>
				<button class="btn cancel" type="reset" value="다시입력하기"><span>다시입력하기</span></button>
				<button class="btn cancel" type="button" title="홈페이지로 돌아가기" onclick="location.href='./main'"><span>홈페이지로가기</span></button>
			</div>
			<input type="hidden" name="userno" id="userno" value="${mVo.userno}">
		</form>
	</div>
	
	<script type="text/javascript">
	$("input:text[numberOnly]").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	</script>
	<jsp:include page="./comm/footer.jsp"/>
</div>
</body>
</html>