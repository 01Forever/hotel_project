<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

    //쿠키 저장시 보통 html보다 앞에 와야한다.

    response.addCookie(new Cookie("NAME", "John"));

    response.addCookie(new Cookie("GENDER", "Male"));

    response.addCookie(new Cookie("AGE", "15"));

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>쿠키 저장 완료</p><br>
</body>
</html>