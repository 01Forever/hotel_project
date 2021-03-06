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
<h1>공지사항 수정</h1>
<form method="post" enctype="multipart/form-data" name="frm">
<input type="hidden" name="boardno" value="${board.boardno}">
	<table>
		<tr>
			
			<td>
			<table>
				<tr>
				<th>카테고리</th>
				<td>
					공지사항 <input type="radio"name="category_num" value="1" checked="checked">
				</td>
				</tr>
				<tr>
					<th> 제 목 </th> 
					<td><input type="text" name="title" value="${board.title}" size="80"></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><fmt:formatDate value="${board.writedate }"/></td>
				</tr>
				<tr>
					<th>내 용</th>
					<td><textarea cols="100" rows="20" name="content" > ${board.content }</textarea></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<br><br>

<input type="submit" value="수정" onclick="return boardCheck()">
<input type="reset" value="다시작성">
<input type="button" value="목록" onclick="location.href='boardList.do'">
</form>
</div>
</body>
</html>