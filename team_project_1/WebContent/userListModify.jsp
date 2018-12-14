<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="css/userListModify.css"> -->
<jsp:include page="./comm/head.jsp"/>
<style>
/* div{
		border:1px solid;
	} */
	.table-box{
		width:40%;
		margin:0 auto;
	}
	table{
		
		margin: auto;
		height:100px;
		text-align:center;
		margin-bottom: 20px;
	}
	table th{
		padding: 5px 5px;
	    height: 57px;
	    line-height: 1.6em;
	    text-align: right;
	    font-size: 15px;
	    color: #292929;
	    font-family: 'Nanum Gothic', sans-serif;
	    font-weight: 700;
	}
	 
	table input {
		margin: 30px auto;
		font-size: 14px;
		width: 300px;
		
		padding: 16px 16px 5px 0;
		color: #999999;
		border:none;
		border-bottom:1px solid #d9d9d9;
	}
	.button-tab{
		margin: 20px 0 20px 0;
		text-align:center;
	}
	.button-tab button{
		cursor:pointer;
		display:inline-block;
	    width: 100px;
	    height: 44px;
	    border: none;
	    border-radius: 0 0 4px 4px;
	    font-size: 14px;
	    color: #fff;
	    text-align: center;
		background: #f8585b;
	}
	.point {
		
		font-weight:600;
		color:red;
	}
</style>
</head>
<body>
<div id="container">
	<jsp:include page="./comm/header.jsp"/>
		<div id="content">
			<div class="table-box">
				<form method="post" id="frm" name="frm" style="padding-top:150px">
					<table>
						<tr>
							<th>
								<label for="emailid">아이디</label>
							</th>
							<td><input type="text" name="emailid" value="${user.emailid}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>
								<label for="nic">닉네임<sapn class="point">*</sapn></label>
							</th>
							<td><input type="text" name="nic" id="nic" value="${user.nic}"></td>
						</tr>
						<tr>
							<th>
								<label for="phone">연락처<sapn class="point">*</sapn></label>
							</th>
							<td><input type="text" name="phone" id="phone" value="${user.phone}"></td>
						</tr>
						<tr>
							<th>
								<label>가입일</label>
							</th>
							<td>
								<%-- <fmt:parseDate type="text" name="joindate" value="${user.joindate}" readonly="readonly" pattern="yyyyMMdd" /> --%>
								<%-- <fmt:parseDate value="${user.joindate}" var="noticePostDate" pattern="yyyyMMdd"/> --%>
								<!-- <p>날짜형태로 들어온것을 텍스트 형태로 바꿔준것</p> -->
								<!-- <p>텍스트 형태로 들어온것을 날짜 형태로 표현</p> -->
								<fmt:formatDate type="text" value="${user.joindate}" pattern="yyyy.MM.dd"/>
							</td>
						</tr>
						<tr>
							<th>등급</th>
							<td>
								<select name="grade">
									<option value="2" <c:if test = "${user.grade eq '1' }"> selected</c:if>>비회원</option>
									<option value="2" <c:if test = "${user.grade eq '2' }"> selected</c:if>>일반회원</option>
									<option value="3" <c:if test = "${user.grade eq '3' }"> selected</c:if> >기업회원</option>
									<option value="4" <c:if test = "${user.grade eq '4' }"> selected</c:if> >관리자</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>가입현황</th>
							<td>
								<select name="delyn">
									<option value="N" <c:if test = "${user.delyn eq 'N'}"> selected</c:if>>가입중</option>
									<option value="Y" <c:if test = "${user.delyn eq 'Y'}"> selected</c:if> >탈퇴회원</option>
								</select>
							</td>
						</tr>
					</table>
					
					<div class="button-tab">
						<button type="button"  onclick="submit();">수정</button>
						<button type="reset">다시작성</button>
						<button onclick="location.href='./userList'">목록으로 가기</button>
					</div>
				</form>
			</div>
		</div>
	<jsp:include page="./comm/footer.jsp"/>
</div>
<script type="text/javascript">
function submit() {
	alert("회원수정되었습니다.");
	$("#frm").submit();
}

</script>
</body>
</html>