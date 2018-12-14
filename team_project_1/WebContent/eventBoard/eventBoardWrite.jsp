<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>이벤트 작성</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
<div id="wrap" align="center"></div>
<h1>이벤트 등록 - 관리자 페이지</h1>
<form method="post" enctype="multipart/form-data" name="frm">
	<table>
	
		<tr>
			<th> 제 목 </th>
			<td><input type="text" name="title" size="80"></td>
		</tr>
		<tr>
			<th>이벤트 기간</th>
			<td><input type="date"name="startdate"> to <input type="date"name="enddate">
		</tr>
		<tr>
			<th> 타이틀 이미지</th>
			<td><input type="file" name="pictureone">
		</tr>
		<tr>
			<th> 내 용 </th>
			<td><textarea rows="10" cols="100" name="content"></textarea></td>
		</tr>
	</table>
	<br>
	<input type="submit" value="등록" onclick="return boardCheck()">
	<input type="reset" value="다시작성">
	<input type="button" value="목록" onclick="location.href='eventBoardList.do'">
</form>
</body>
</html>