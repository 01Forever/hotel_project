<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<header>
	<c:set var="now" value="<%=new Date(new Date().getTime() + 60*60*24*1000)%>" />
	<c:set var="next" value="<%=new Date(new Date().getTime() + 2*60*60*24*1000) %>" />
	
	<c:set var="start"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
	<c:set var="end"><fmt:formatDate value="${next}" pattern="yyyy-MM-dd" /></c:set>
	<div id="header">
		<h1><a href="main"><img src="./images/logo.png" alt="요기죠기"></a></h1>
		<button class="m_menu_btn" title="모바일 메뉴 버튼입니다."><i class="fas fa-align-justify menu_btn"></i></button>
		<nav>
			<ul id="other">
				<%-- <c:if test="${loginUser.grade == '4' }"> --%>
				<li><a href="./ChartPageServlet" title="차트페이지로 이동하기">차트페이지</a></li>
				<%-- </c:if> --%>
				<li><a title="내주변 페이지로 이동하기" href="hotelListPage?res_Start=${start}&res_End=${end}" >내주변</a></li>
				<li>
				<c:choose>
					<c:when test="${loginUser != null}">
						<a href="userResPage" title="예약내역 페이지로 이동하기">예약내역</a>
					</c:when>
					<c:otherwise>
						<a href="reResCheckPage" title="예약내역 페이지로 이동하기">예약내역</a>				
					</c:otherwise>
				</c:choose>
				</li>
				<li>
					<a href="#" title="더보기 메뉴">더보기</a>
					<ul class="sub_menu">
						<li><a href="boardList.do" title="공지사항 페이지로 이동하기">공지사항</a></li>
						<li><a href="eventboard.do" title="이벤트 페이지로 이동하기">이벤트</a></li>
						<li><a href="terms4.do" title="자주 묻는 질문 페이지로 이동하기">자주 묻는 질문</a></li>
						<li><a href="inquiryBoardList.do" title="문의 사항 페이지로 이동하기">문의 사항</a></li>
						<li><a href="terms.do" title="약관 및 정책 페이지로 이동하기">약관 및 정책</a></li>
					</ul>
				</li>
				
				<c:if test="${loginUser.grade == null}">
					<li><a href="./login" title="공지사항 페이지로 이동하기">로그인</a></li>
					<li><a href="./terms" title="공지사항 페이지로 이동하기">회원가입</a></li>
				</c:if>
				<c:if test="${loginUser.grade != null}">
					<li><a href="./modify" title="회원수정 페이지로 이동하기">회원수정</a></li>
					<li><a href="./logout" title="로그아웃 하기">로그아웃</a></li>
				</c:if>
				<c:if test="${loginUser.grade == '3'}">
					<li><a href="#" title="기업등급요청 페이지로 이동하기">기업등급요청</a></li>
					<li>
						<a>호텔 관리</a>
						<ul class="sub_menu">
							<li><a href="#" title="호텔관리 페이지로 이동하기">호텔 관리</a></li>
							<li><a href="reqPayPage" title="입금요청확인 페이지로 이동하기">입급 요청 확인</a></li>
							<li><a href="#" title="예약관리 페이지로 이동하기">예약 관리</a></li>
							<li><a href="#" title="통계 페이지로 이동하기">통계</a></li>							
						</ul>
					</li>
				</c:if>
				<c:if test="${loginUser.grade == '4'}">
					<li><a href="./userList"  title="회원등급수정 페이지로 이동하기">회원등급수정</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
</header>