<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp" />
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/button.css">
<script src="./js/join.js"></script>
</head>
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
	<div class="member_table">
		<div class="box_s">
			<h3 class="sub_title">회원정보입력</h3>
			<form action="join" method="post" id="frm" name="frm" class="join">
				<table>
					<caption>회원정보입력하는 곳입니다.</caption>
					<colgroup>
						<col style="width: 20%">
						<col>
						<col style="width: 130px;">
					</colgroup>
					<tr>
						<th>
							<label for="emailId">이메일아이디<span class="point_red">*</span></label>
						</th>
						<td>
							<input type="text" name="emailId" id="emailId"/>
							<div id="emailPermissionText"></div>
						</td>
						<td>
							<button type="button" class="btn check" onclick="check()">이메일인증</button>
							<div id="emailPermissionTextBtn"></div>
						</td>
					</tr> 
					<tr>
						<th><label for="pwd">비밀번호<span class="point_red">*</span></label></th>
						<td><input type="password" name="pwd" id="pwd" onkeyup="pwdChange()" /></td>
						<td></td>
					</tr>
					<tr>
						<th><label for="pwd_check">비밀번호 확인<span class="point_red">*</span></label></th>
						<td>
							<input type="password" name="pwd_check" id="pwd_check" onkeyup="pwdChange()" />
							<div id="pwdResult"></div> <!-- 비밀번호 문자오는곳 -->
						</td>
						<td></td>
					</tr>
					<tr>
						<th><label for="phone" >연락처</label></th>
						<td>
							<input type="text" id="phone" name="phone" onkeyup="phonecheck()" placeholder="01012341234"/>
							<p id="phoneText"></p><!-- 경고문구나오는곳 -->
						</td>
						<td></td>
					</tr>
					<tr>
						<th><label for="nic">닉네임</label></th>
						<td><input type="text" id="nic" name="nic" maxlength="6" placeholder="6자까지 입력이 가능합니다."/></td>
						<td><!-- <button type="button" onclick="nic_re()">다른 닉네임</button> --></td>
						<td></td>
					</tr>
				</table>
				
				<div class="btn_area_center">
					<button class="btn save" type="button" onclick="submitCheck();" ><span>가입하기</span></button>
					<button class="btn cancel" type="reset" value="취소"><span>다시입력하기</span></button>
					<button class="btn cancel" type="button" title="홈페이지로 돌아가기" onclick="location.href='./main'"><span>홈페이지로가기</span></button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp" />
</div>

</body>
</html>