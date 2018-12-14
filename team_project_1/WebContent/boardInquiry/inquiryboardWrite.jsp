<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 작성</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
<div id="wrap" align="center"></div>
<h1>문의 등록 - 고객 페이지</h1>
<form method="post" name="frm" id="frm">
   <table>
      <tr>
         <th>문의유형</th>
         <td>
         <select name="category" style="height: 20px; ">
            <option value="이벤트">이벤트</option>      
            <option value="예약/결제">예약/결제</option>      
            <option value="혜택받기">혜택받기</option>      
            <option value="이용문의">이용문의</option>      
            <option value="회원정보">회원정보</option>      
            <option value="리뷰">리뷰</option>      
            <option value="기타">기타</option>      
         </select>
         </td>
      </tr>
      
      <tr>
         <th> 휴대폰 번호 </th>
         <td><input type="text" name="phone" size="40" id="phone"/><br>
         </td>
      </tr>
      <tr>
         <th> 제 목 </th>
         <td><input type="text" name="title" size="80"></td>
      </tr>
      <tr>
         <th> 내 용 </th>
         <td><textarea rows="10" cols="100" name="content"></textarea></td>
      </tr>
   </table>
   <br>
   <div class="button-box">
	   <input class="button" type="button" value="등록" onclick="boardCheck()">
	   <input class="reset-button" type="reset" value="다시작성">
	   <input class="list-button" type="button" value="목록" onclick="location.href='inquiryBoardList.do'">
   </div>
</form>
<script type="text/javascript">

function boardCheck(){
	var regExp = /^[0-9]{11}$/;
	if($("#phone").val() == ""){
		alert("연락처를 입력해주세요.");
		return false;
	} else {
		if (!regExp.test($("#phone").val())) {
			alert("바른 연락처가 아닙니다");
			return false;
		}	
	}
	
	if(document.frm.title.value.length ==0){
		alert("제목을 입력해주세요.");
		frm.title.focus();
		return false;
	}
	if(document.frm.content.value.length==0){
		alert("내용을 입력해주세요.");
		frm.content.focus();
		return false;
	}
/* 	if(document.frm.startdate.value.length==0){
		alert("이벤트 시작일을 지정해주세요.");
		frm.startdate.focus();
		return false;
	}
	if(document.frm.enddate.value.length==0){
		alert("이벤트 마감일을 지정해주세요.");
		frm.enddate.focus();
		return false;
	}
	 */
	$("#frm").submit();
	
}
</script>
</body>
</html>