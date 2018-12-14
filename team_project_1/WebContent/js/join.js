var idCheck = false; // ajax 아이디 중복체크
var pwdCheck = false; // 비밀번호 정규식과 
var emailCheck = false; // 이메일 인증
var checkKey = ""; // 이메일 인증 
var phoneCheck = false; // 연락처 인증

function idChange() {
	idCheck = false;
}

// 이메일 정규식과 이메일 값 
function emailValcheck() {
	// 이메일 값이 없을경우
	if ($("#emailId").val() == "") {
		alert("이메일은 필수값 입니다.");
		$("#emailId").focus();
		return false;
	}
	//이메일 정규식	
	var emailRule = /^((([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/
	if (!emailRule.test($("input[id='emailId']").val())) {
		alert("잘못된 이메일 형식 입니다.");
		return false;
	}
}

// 아이디 중복체크
function check() {
	// 이메일 값이 없을경우
	if ($("#emailId").val() == "") {
		alert("이메일은 필수값 입니다.");
		$("#emailId").focus();
		return false;
	}

	//이메일 정규식	
	var emailRule = /^((([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/
	if (!emailRule.test($("input[id='emailId']").val())) {
		alert("잘못된 이메일 형식 입니다.");
		return false;
	}
	
	// ajax 아이디 중복 체크  	
	$.ajax({
		url : "./idCheck",
		type : "POST",
		dataType : "JSON",
		data : {
			emailId : $("#emailId").val()
		},
		success : function(data) { //alert(data.result);
			if (data.result < 1) {
				idCheck = true;
				alert("사용가능한 이메일 입니다. 인증코드를 입력해주세요.");
				// 인증 이메일 함수
				emailPermission();
			} else {
				idCheck = false;
				alert("이미 사용중인 아이디 입니다.");
				return false;
			}
		},
		error : function(xhr) {
			console.log(xhr);//문제가 있을시에 이부분에 에러 처리한다
		}
	});
}

// 연락처 정규화
function phonecheck() {
	var regExp = /^(?=.*?[0-9]).{11}$/
	if($("#phone").val() == ""){
		$("#phoneText").text("연락처를 입력해주세요");
	} else {
		if (!regExp.test($("#phone").val())) {
			$("#phoneText").text("바른 연락처가 아닙니다");
			phoneCheck = false;
		} else if (regExp.test($("#phone").val())){
			$("#phoneText").text("바른 연락처입니다.");
			phoneCheck = true;
		}	
	}
}

// pwd 
function pwdChange() {
	var passRule = /^(?=.*?[A-Za-z])(?=.*?[0-9]).{6,12}$/
	if (!passRule.test($("#pwd").val())) {
		$("#pwdResult").text("비밀번호는 6~12자리의 특수문자를 제외한 문자로 입력해주세요.");
		$("#pwdResult").css("color", "red");
		return;
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
} // 비밀번호 정규화 end

function emailPermission() {
	//인증확인 부분 html
	var str = "<input type='text' name='permissionText' id='permissionText'/>";
	var str2 = "<button type = 'button' class='btn-email-check btn check2' onclick = 'permissionCheck()'>인증코드확인</button>";
	$("#emailPermissionText").css('display', 'block');
	$("#emailPermissionText").append(str); // 인증확인 부분 삽입
	$("#emailPermissionTextBtn").append(str2);
	$("#emailId").attr("readonly", "readonly"); // 이메일 인증시 값 변경 안되게 
	$(".btn.check").css("display", "none"); // 이메일 인증후 사용 불가하게 막기
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
		emailCheck = true;
	} else {
		alert("인증번호다 다릅니다. 확인하고 입력해주세요");
		$("#permissionText").focus();
	}
}
// 닉네임 초기화
function nic_re() {
	$("#nic").val('');
}

//submitCheck
function submitCheck() {
	emailValcheck();
	if (idCheck && pwdCheck && emailCheck && phoneCheck) {
		alert("회원가입되었습니다.");
		$("#frm").submit();
	} else {
		if (!idCheck) {
			alert("이메일 인증을 해주세요");
			return;
		}
		if (!pwdCheck) {
			alert("비밀번호일치 여부를 확인하세요");
			return;
		}
		if (!emailCheck) {
			alert("이메일 인증을 해주세요");
			return;
		}
		if (!phoneCheck) {
			alert("연락처를 확인해주세요");
			return;
		}
	}
}