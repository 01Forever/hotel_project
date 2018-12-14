<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<title>문의</title>
<style>
* {
   margin: 0 auto;
}

.wrapper {
   width: 100%%;
   margin: 0 auto;
}



p {
   text-align: right;
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
   float:right;
   margin-right:60px;
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
aside ul li a:hover {
	
    font-weight: bold;
    color: rgb(230,28,81);
}
h2{
 font-size: 20px;
}
.inquiry-content{
	text-align: center;
	font-size: 16px;
	color: rgb(230,28,81);
	line-height: 10px;
	padding: 10px;
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
		<h2>문의 내용</h2>
	<%--  <c:if test="${loginUser.grade == '1' }">  --%>
			<p><a href="inquiryBoardWrite.do"> 새 문의 작성</a></p>
			<br>
		<%-- </c:if> --%>
		<hr>
		
		<div class="inquiry-content">
		<p class="inquiry-content" >문의사항을 남겨주시면 연락처를 통해 문자나 전화를 통해 궁금증을 해결해드리겠습니다.</p>
		<p class="inquiry-content"> 올바른 전화번호 입력 부탁드립니다</p>	
		</div>
		
		<div class="comm_table">
			<table>
				<colgroup>
					<col style="width: 10%"/>
					<col>
					<col style="width: 15%">
				</colgroup>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
				<c:forEach var="inquiry_board" items="${inquiryBoardList}">
				<tr class="recond"> 
					<td>${inquiry_board.boardno }</td>
					<td>
					
					<span>[${inquiry_board.category}]</span>
					<a href="#"> ${inquiry_board.title }</a>
					
					<div >
						
						<a>${inquiry_board.content}</a>
						
						<c:if test="${loginUser.grade == '4' }">
						
						<a href="InquiryBoardDelete.do?boardno=${inquiry_board.boardno}">
						<input type="button" value="삭제"></a>
						</c:if>
					</div>
					</td>
					
					 <td>
					<a href="boardView.do?boardno=${board.boardno }">${board.title }</a>
					${inquiry_board.writedate }
					</td>
				</tr>
				 </c:forEach>
			</table>   
			<table>
                <%--   <tr>
                     <td><c:forEach var="i" begin="${paging.recentFirstPage}"
                           end="${paging.recentLastPage}">
                           <a href="./inquiryBoardList.do?page=${i}">[${i}]</a>
                        </c:forEach></td>
                  </tr> --%>
               </table>
		</div>
	</section>
	<aside>
		<ul>
			<li><a href="boardList.do">공지사항</a></li>
			<li><a href="eventboard.do">이벤트</a></li>
			<li><a href="terms4.do">자주 묻는 질문</a></li>
			<li><a href="inquiryBoardList.do" class="check">문의 사항</a></li>
			<li><a href="terms.do">약관 및 정책</a></li>
		</ul>
         </aside>
      
      <jsp:include page="../comm/footer.jsp"/>
   </div>
</div>   
</body>
</html>