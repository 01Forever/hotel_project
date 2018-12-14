<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 사항</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
<h1>공지사항 상세보기</h1>
<form method="post" enctype="multipart/form-data" name="frm">
	<table>
		<tr>
			<th> 제목 </th> 
			<td colspan="3"> ${board.title }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><fmt:formatDate value="${board.writedate }"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3"><pre>${board.content }</pre></td>
		</tr>
</table>
<br><br>

<input type="button" value="수정" onclick="location.href='boardUpdate.do'">
<input type="button" value="삭제">
<input type="button" value="목록" onclick="location.href='boardList.do'">
<input type="button" value="등록" onclick="location.href='boardWrite.do'">

</form>
</div>
</body>
</html>