<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
<link rel="stylesheet" type="text/css" href="css/userList.css">
</head>  
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
		<div id="content">
			<div class="box_s">
				<h3 class="sub_title">가입된 회원 리스트</h3>
				<form method="post" id="frm" name="frm">
					<div class="table_area1"> <!-- table-box  -->
						<table>
							<tr>
								<th><input type="checkbox" id = "checkall" name="checkall" class="checkall" onclick="javascript:CheckAll()"></th>
								<th>번호</th>
								<th>회원아이디</th>
								<th>회원닉네임</th>
								<th>유저등급</th>
								<th>유저탈퇴여부</th>
							</tr>
							<c:forEach var="uL" items="${userList}" varStatus="status">
							<tr>
								<td>
									<input type="checkbox" name="userno"  value="${uL.userno}"/>
									<input type="hidden" name="listUserNo"  value="${uL.userno}"/>
								</td>
								<td>${status.index+1}</td>
								<td><a href="userListModify?userno=${uL.userno}">${uL.emailid}</a></td>
								<td>${uL.nic}</td>
								<td>
									<select name="grade">
										<option value="1" <c:if test = "${uL.grade eq '1' }"> selected</c:if>>비회원</option>
										<option value="2" <c:if test = "${uL.grade eq '2' }"> selected</c:if>>일반회원</option>
										<option value="3" <c:if test = "${uL.grade eq '3' }"> selected</c:if> >기업회원</option>
										<option value="4" <c:if test = "${uL.grade eq '4' }"> selected</c:if> >관리자</option>
									</select>
								</td>
								<td>${uL.delyn}</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</form>
				
				<div class="paging_area">
					<c:if test="${paging.prev}">
						<a href="userList?page=${paging.prevNum}">prev</a>
					</c:if>
					<c:forEach var="i" begin="${paging.recentFirstPage}" end="${paging.recentLastPage}" step="1">
						<span class="${paging.recent == i ? "active" : "" }">
							<a href="./userList?page=${i}">[${i}]</a>
						</span>
					</c:forEach>
					
					<c:if test="${paging.next}">
						<a href="userList?page=${paging.nextNum}">next</a>
					</c:if>
				</div>
				<div class="btn_area">
					<button class="btn save" type="button" onclick="submitUser();"><span>수정하기</span></button>
					<button class="btn cancel" type="button" onclick="select_cancel()">취소하기</button>
					<a href="./main"><button class="btn list">홈페이지로 돌아가기</button></a>
				</div>
			</div>
		</div>
		
		<div class="aside_menu" style="display: none">
			<form action="./userList" name="user_aside_menu" method="get" id="aside_menu">
				<select name="col">
					<option value="none">전체 목록</option>
					<option value="rname">닉네임</option>
					<option value="id">이메일아이디</option>
					<option value="grade">회원등급</option>
				</select>
				<input type="text" name="word" value="" placeholder="특수문자는 사용할 수 없습니다">
				<button type="button" onclick="adide_menu_submit()">검색</button>
			</form>
		</div>

	<jsp:include page="./comm/footer.jsp"/>
</div>

<script type="text/javascript">
function submitUser() {
	if($('input:checkbox[name="userno"]').is(":checked") == false) {
		alert("변경을 원하는 회원을 체크해 주세요");
		return false;
	}
	$("#frm").submit();
	alert("수정되었습니다");
}

// 상단 all 선택 해제
function CheckAll(){
	if ($("#checkall").prop("checked")) {
		$("input:checkbox[name='userno']").each(function (idx) {
			$(this).prop("checked",true);
	    });	
		
	}else{
		$("input:checkbox[name='userno']").each(function (idx) {
			$(this).prop("checked",false);
	    });
	}
}
// 취소 버튼
function select_cancel(){
	$(".checkall").attr("checked",false);
	$("input[name='userno']").attr("checked",false);
}

function adide_menu_submit() {
	$("#aside_menu").submit();
}
</script>
</body>
</html>