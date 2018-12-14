<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta charset="UTF-8">
<title>메인</title>
<c:choose>
	<c:when test="${param.category_num == 2}">
	</c:when>
</c:choose>
<style>


.wrapper {
	width: 100%%;
	margin: 0 auto;
}

p, pre, h4, h1 {
	line-height: 25px;
}

p, pre {
	color: rgba(0, 0, 0, 0.56);
}

h1 {
	font-size: 25px;
	font-weight: bold;
}

section {
	box-sizing: border-box;
	float: right;
	width: 75%;
	min-height: 500px;
	padding: 1.5625%;
}

section img {
	max-width: 100px;
}

aside {
	line-height: 45px;
	font-size: 20px;
	box-sizing: border-box;
	float: left;
	width: 25%;
	padding: 1.5625%;
	margin-top: 50px;
}

aside ul {
	float: right;
	margin-right: 60px;
}

ul {
	list-style: none;
}

a {
	color: #666666;
	text-decoration: none;
}

footer {
	clear: both;
	background: #f7323f;;
	font-size: 2em;
}

footer h3 {
	font-size: 1.5rem;
	padding: 30px;
	color: white;
	text-align: center;
}

.comm_table {
	margin-top: 30px
}

.comm_table table {
	width: 100%;
	border-collapse: collapse;
}

.comm_table table tbody {
	border-top: 3px solid #525252;
}

.comm_table table tr.recond  div {
	display: none;
}

.comm_table table th, .comm_table table td {
	padding: 10px 10px;
	border: 1px solid #ccc;
	text-align: left;
	font-size: 14px;
	line-height: 1.5;
}

.comm_table table th {
	text-align: center;
	background: #efefef
}

.comm_table table th:first-child, .comm_table table td:first-child {
	border-left: none;
	text-align: center;
}

.comm_table table th:last-child, .comm_table table td:last-child {
	border-right: none;
	text-align: center;
}

h4, h2 {
	font-size: 18px;
	font-weight: bold;
}

div.a_btn a {display: inline-block; padding-right:20px}

.date {
	margin: 10px;
	padding: 10px;
}

#title {
	color: black;
	font-size: 30px;
}
#date {
	padding: 10px;	
}
#img {
	margin-left: 15%;
}
</style>


</head>
<script type="text/javascript">
   $(function() {
      $(".recond").each(function() {
         $(this).find("a").click(function() {
            $(this).next().slideToggle();
         });
      });
   });
</script>
<body>
	<div class="container">
		<div class="wrapper">
			<jsp:include page="../comm/header.jsp" />

			<section id="con">
			<div class="a_btn">
			</div> 
				<br>
				<br>
				<div>
				<div id="img" style="background: url('images/eventone.JPG'); width: 646px; height: 897px; background-size: auto;"></div>
				<div id="img" style="background: url('images/eventone1.JPG'); width: 646px; height: 770px; background-size: auto;"></div>
				<div id="img" style="background: url('images/eventon2.JPG'); width: 646px; height: 320px; background-size: auto;"></div>
				<div id="img" style="background: url('images/eventone5.JPG'); width: 646px; height: 800px; background-size: auto;"></div>
				</div>
			
				
			</section>
			<aside>
				<ul>
					<li><a href="boardList.do">공지사항</a></li>
					<li><a href="eventboard.do">이벤트</a></li>
					<li><a href="terms4.do">자주 묻는 질문</a></li>
					<li><a href="inquiryBoardList.do">1:1 문의</a></li>
					<li><a href="terms.do">약관 및 정책</a></li>
				</ul>
			</aside>

			<jsp:include page="../comm/footer.jsp" />
		</div>
	</div>
</body>
</html>