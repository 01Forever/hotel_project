<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 사항</title>
<c:choose>
<c:when test="${param.category_num == 1}">
</c:when>
</c:choose>

<style>
* {
   margin: 0 auto;
}

.wrapper {
   width: 100%%;
   margin: 0 auto;
}

.check {
	font-weight: bold;
    color: rgb(230,28,81);
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

.board_category a:active {
		font-weight: bold;
   	    color: #ca1e82;
}
.active{
		font-size: 16px;
		font-weight: bold;
}
.board-title{
	font-size: 18px;
	padding-bottom: 20px;
}
.board-content{
	padding-top: 20px;
}
aside ul li a:hover {
	
    font-weight: bold;
    color: rgb(230,28,81);
}

</style>



<link rel="stylesheet" type="text/css" href="./css/boardList.css">

</head>
<script type="text/javascript">
   $(function() {
      $(".recond").each(function() {
         $(this).find(".board-title").click(function() {
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
            <h2>공지사항</h2>
            <c:if test="${loginUser.grade == '4' }">
	            <p>
	               <a href="boardWrite.do"> 글쓰기</a>
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
                  
                  
                  <c:forEach var="board" items="${boardList}">
                     <tr class="recond">
                        <td>${board.boardno }</td>
                        <td><a href="#" class="board-title"> ${board.title } </a>
                        
                           <div>
                           <hr>
                           <span>파일 첨부 : </span>
                               <c:forEach var="file" items="${board.files}">
	                           <a href="FileDownload.do?file_idx=${file.file_idx}">${file.board_file}</a> 
	                           </c:forEach>
                              <pre class="board-content">${board.content}</pre>
                              <br>
								<c:if test="${loginUser.grade == '4' }">
                               		<a href="boardUpdate.do?boardno=${board.boardno}">
                              	<input type="button" value="수정"></a> 
                              </c:if>
                              <c:if test="${loginUser.grade == '4' }">
                          			<a href ="boardDelete.do?boardno=${board.boardno}">
                         		<input type="button" value="삭제"></a>
                              	<br>
					 			</c:if>
                           </div></td>

                        <td>${board.writedate }</td>
                     </tr>
                  </c:forEach>
               </table>
               
				<div class="paging_area">                  
					<c:if test="${paging.prev}">
						<a href="./boardList.do?page=${paging.prevNum}">prev</a>
					</c:if>
                     <c:forEach var="i" begin="${paging.recentFirstPage}" end="${paging.recentLastPage}" step="1">
                           <span class="${paging.recent == i ? "active" : "" }">
                           <a href="./boardList.do?page=${i}">[${i}]</a>
                           </span>
                        </c:forEach>
                        <c:if test="${paging.next}">
						<a href="./boardList.do?page=${paging.nextNum}">next</a>
					</c:if>
              </div>
            </div>
         </section>
         <aside>
           <ul>
				<li><a href="boardList.do" class="check">공지사항</a></li>
				<li><a href="eventboard.do">이벤트</a></li>
				<li><a href="terms4.do">자주 묻는 질문</a></li>
				<li><a href="inquiryBoardList.do">문의 사항</a></li>
				<li><a href="terms.do">약관 및 정책</a></li>
			</ul>
         </aside>
      
      <jsp:include page="../comm/footer.jsp"/>
   </div>
</div>   
</body>
</html>