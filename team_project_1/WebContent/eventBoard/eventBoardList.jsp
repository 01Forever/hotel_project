<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta charset="UTF-8">
<title>메인</title>
<form method="post" enctype="multipart/form-data">
<input type="hidden" name="boardno" value="">
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
   border: 1px solid black;
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
            <h2>이벤트</h2>
            <c:if test="${loginUser.grade == '4' }">
	            <p>
	               <a href="eventBoardWrite.do"> 글쓰기</a>
	            </p>
            </c:if>
            <hr>
            <div class="comm_table">
               <table>
                  <colgroup>
                     <col style="width: 10%" />
                     <col>
                     <col style="width: 15%">
                  </colgroup>
                  <tr>
                     <th>번호</th>
                     <th>제목</th>
                     <th>작성일</th>
                  </tr>
                  <c:forEach var="board" items="${eventBoardList}">
                     <tr class="recond">
                        <td>${board.boardno }</td>
                        <td><c:choose>
                        	<c:when test="${empty board.pictureone}">
                        		<img src="upload/noimage.gif">
                        	</c:when>
                        	<c:otherwise>
                        		<img src="upload/${board.pictureone }">
                        	</c:otherwise>
                        
                        </c:choose>
                           </td>

                        <td>${board.startdate} ~ ${board.enddate }</td>
                     </tr>
                  </c:forEach>
               </table>
               <table>
                  <tr>
                     <td><c:forEach var="i" begin="${paging.recentFirstPage}"
                           end="${paging.recentLastPage}">
                           <a href="./boardList.do?page=${i}">[${i}]</a>
                        </c:forEach></td>
                  </tr>
               </table>
            </div>
         </section>
         <aside>
           <ul>
				<li><a href="boardList.do">공지사항</a></li>
				<li><a href="eventBoardList.do">이벤트</a></li>
				<li><a href="#">자주 묻는 질문</a></li>
				<li><a href="inquiryBoardList.do">1:1 문의</a></li>
				<li><a href="terms.do">약관 및 정책</a></li>
			</ul>
         </aside>
      
      <jsp:include page="../comm/footer.jsp"/>
   </div>
</div>
</body>
</form>   
</html>