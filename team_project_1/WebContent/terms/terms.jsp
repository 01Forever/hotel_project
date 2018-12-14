<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../comm/head.jsp" />
<meta charset="UTF-8">
<title>이용 약관</title>
<c:choose>
	<c:when test="${param.category_num == 2}">
	</c:when>
</c:choose>
<style>
* {
	margin: 0 auto;
}

.check {
	font-weight: bold;
    color: rgb(230,28,81);
}

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

div.a_btn a {
	display: inline-block;
	padding-right: 20px
}
p {
	text-indent: -22px;
    padding-left: 22px;
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
			<div class="box_s">
				<section id="con">
					<div class="a_btn">
						<a href="terms.do" class="on-check">이용약관</a><a href="terms2.do"> 위치기반 서비스 이용약관</a>
						<a href="terms3.do">개인정보 처리방침</a>
					</div>
					<br>
					<hr>
					<br>
					<h1>요기죠기 이용약관</h1>
					<br>

					<h4>제 1조(목적)</h4>
					<br>
					<p style="text-indent: 0px; padding: 0px;">
						이 약관은 주식회사 동현컴퍼니(이하 “회사”라 함)이 운영하는 공간예약 플랫폼(이하 “플랫폼”이라 한다)에서 제공하는
						예약 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 “회사”와 “이용자”의 권리․의무 및 책임사항을 규정함을
						목적으로 합니다. ※「PC통신, 무선 등을 이용하는 경우에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
						<br> <br>
					<h4>제 2조(정의)</h4>
					<br>
					<p>① “플랫폼”이란 “이용자”가 컴퓨터 등 정보통신설비를 이용하여 “서비스”를 이용할 수 있도록
    “회사”가 제공하는 가상의 영업장을 말하며, 아울러 “플랫폼”을 운영하는 사업자의 의미로도 사용합니다.</p>
					<p>② “이용자”란 “플랫폼”을 통하여 이 약관에 따라 제공하는 서비스를 받는 회원 및 비회원을 말합니다.</p>
					<p>③ “회원”이라 함은 “플랫폼”에 회원등록을 한 자로서, 계속적으로 “플랫폼”이 제공하는 서비스를 이용할 수
						있는 자를 말합니다.</p>
					<p>④ “비회원”이라 함은 회원에 가입하지 않고 “플랫폼”이 제공하는 서비스를 이용하는 자를 말합니다.</p>
					<br> <br>
					<h4>제 3조(약관 등의 명시와 설명 및 개정)</h4>
					<br>
					<p>① “회사”는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
    전화번호, FAX, E-mail주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자등을 “이용자”가 쉽게 알 수 있도록 
    “플랫폼”의 초기 서비스화면(전면)에 게시합니다.다만, 약관의 내용은 “이용자”가 연결화면을 통하여 볼 수 있도록
    할 수 있습니다.</>
					<p>② “회사”는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」,
    「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「소비자기본법」 등 관련 법을
    위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</p>
					<p>③ “회사”가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 플랫폼의 초기화면에 그 적용일자 7일
    이전부터 적용일자 전일까지 공지합니다. 다만, “이용자”에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일
    이상의 사전 유예기간을 두고 공지합니다. 이 경우 “회사”는 개정 전 내용과 개정 후 내용을 “이용자”가 알기 쉽도록
    표시합니다.</p>
					<p>④ “회원”은 변경된 약관에 동의하지 않을 권리가 있으며, 동의하지 않을 경우에는 서비스이용을 중단하고
						탈퇴할 수 있습니다.</p>
					<p>⑤ “회원”이 전4항에 따라 약관에 대한 반대의사를 표시하지 않고 “서비스”를 이용한 경우에는 약관에 동의한
						것으로 봅니다.</p>
					<p>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률,
						약관의 규제 등에 관한 법률 및 관계법령 또는 상관례에 따릅니다.</p>
					<br> <br>
					<h4>제 4조(회원가입)</h4>
					<br>
					<p>① “이용자”는 “플랫폼”이 정한 절차에 따라 이 약관에 동의한다는 의사표시를 함으로서 회원가입을
						신청합니다.
					<p>
					<p>② “회사”는 제1항과 같이 회원으로 가입할 것을 신청한 “이용자” 중 다음 각 호에 해당하지 않는 한
						회원으로 등록합니다.</p>
					<p>     1. 회원자격 상실 후 2주가 경과하지 않은 경우</p>
					<p>     2. 등록 내용에 타인의 정보를 사용한 경우</p>
					<p>③ 회원가입계약의 성립 시기는 “회사”의 승낙이 회원에게 도달한 시점으로 합니다.</p>
					<p>④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “플랫폼”에 대하여 회원정보
						수정하거나 E-mail 등의 방법으로 그 변경사항을 알려야 합니다.</p>
					<p>⑤ “회사”는 관련법령에 따라 필요한 경우 별도의 성인인증 절차를 실시할 수 있습니다.</p>
					<br> <br>
					<h4>제 5조(회원 탈퇴및 자격 상실등)</h4>
					<br>
					<p>① 회원은 “회사”에 언제든지 탈퇴를 요청할 수 있으며 “회사”는 신속하게 회원탈퇴를 처리합니다. 이 경우
						제공된 쿠폰 및 포인트는 모두 소멸합니다.</p>
					<p>② 회원이 다음 각 호의 사유에 해당하는 경우, “플랫폼”은 회원자격을 제한 및 정지시킬 수 있습니다.</p>
					<p>     1. 가입 신청 시에 허위 내용을 등록한 경우</p>
					<p>     2. 다른 사람의 “플랫폼” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우</p>
					<p>     3. “플랫폼”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</p>
					<p>     4. 제19조에 따른 “이용자”의 의무를 지키지 아니하였을 경우</p>
					<p>③ “회사”가 회원 자격을 제한․정지 시킨 후, 같은 행위가 2회 이상 반복되거나 30일 이내에 그 사유가
						시정되지 아니하는 경우 “회사”는 회원자격을 상실시킬 수 있습니다.</p>
					<br>
					<h4>제 6조(회원에 대한 통지)</h4>
					<br>
					<p>① “회사”가 회원에 대한 통지를 하는 경우, 회원이 “회사”에게 제공한 E-mail, SMS과 APP
						메세지로 할 수 있습니다.</p>
					<p>② “회사”는 불특정다수 회원에 대한 통지의 경우 1주일이상 “플랫폼”게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다.  
     다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.</p>
					<br>
					<h4>제 7조(서비스의 제공 및 변경)</h4>
					<br>
					<p>① “플랫폼”은 다음과 같은 업무를 수행합니다.
					<p>
					<p>     1. 시설에 대한 정보제공</p>
					<p>     2. 서비스이용에 대한 청약 접수</p>
					<p>     3. 구매계약이 체결된 서비스에 대한 통지</p>
					<p>     4. 기타 “플랫폼”이 정하는 업무</p>
					<p>② “플랫폼”이 “이용자”에게 접수한 청약에 대한 변경내용 및 와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 
     기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 “이용자”에게 통지 가능한 연락처로 신속하게 통지합니다.</p>
					<p>③ 전항의 경우 “플랫폼”은 이로 인하여 “이용자”가 입은 손해를 배상합니다. 다만, “플랫폼”이 고의 또는
						과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
					<p>④ “플랫폼”은 “회원”의 정보보호를 위하여 안심번호 서비스를 제공합니다. 단, 안심번호를 사용한 발신으로
						인하여 소정의 통화료가 부과될 수 있습니다.</p>
					<br>
					<h4>제 8조(서비스의 이용시간 및 중단)</h4>
					<br>
					<p>① “플랫폼”의 이용은 특별한 사유가 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 
     다만, 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유 또는 정기점검 등의 필요로 “회사”가
     지정한 날 등의 경우에는 “플랫폼”을 일시적으로 중단할 수 있습니다.</p>
					<p>② “회사”는 “플랫폼”의 원활한 운영을 위하여 기간을 정하여 사전에 공지하고 서비스를 중지할 수 있으며,
     불가피하게 긴급한 조치를 하여야 하는 경우 사후에 통지할 수 있습니다.</p>
					<p>③ 고객행복센터의 운영시간은 점심시간(정오부터 오후1시까지)을 제외한 당일 오전 9시부터 익일 오전
						3시까지입니다.</p>
					<br>
					<h4>제 9조(서비스이용 및 개인정보 제공 동의 등)</h4>
					<br>
					<p>① “이용자”는 “플랫폼”상에서 다음 또는 이와 유사한 방법에 의하여 서비스를 이용하며, “플랫폼”은
						“이용자”가 서비스를 이용을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
					<p>
					<p>      1. 시설 등의 검색 및 선택</p>
					<p>      2. “이용자”의 성명, 전화번호, 객실타입, 입실날짜 및 시간 등의 입력</p>
					<p>      3. 약관내용, 취소•환불이 제한되는 상품안내, 시설별 이용규정 및 취소환불규정의 동의 등 비용부담과 관련한 내용에 대한 확인</p>
					<p>      4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시</p>
					<p>      5. 결제방법의 선택</p>
					<br>
					<h4>제 10조(결제수단)</h4>
					<br>
					<p>“플랫폼”에서 제공하는 서비스를 이용하는 것에 대한 결제방법은 다음 각 호의 방법 중 가용한 방법으로 할 수
						있습니다.</p>
					<br>
					<p>      1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체</p>
					<p>      2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</p>
					<p>      3. 온라인무통장입금</p>
					<p>      4. 전자화폐에 의한 결제</p>
					<p>      5. 수령 시 대금지급</p>
					<p>      6. 마일리지 등 “플랫폼”이 지급한 포인트에 의한 결제</p>
					<p>      7. “플랫폼”과 계약을 맺었거나 “플랫폼”이 인정한 상품권에 의한 결제</p>
					<p>      8. 기타 전자적 지급 방법에 의한 대금 지급 등</p>
					<br>
					<h4>제 11조(포인트, 할인쿠폰)</h4>
					<br>
					<p>① “회사”는 “플랫폼”을 이용하는 회원에게 일정 금액 또는 일정 비율을 할인 받을 수 있는 할인 쿠폰을 발급할 수 있습니다. 이 쿠폰은
	    “회사”에서 그 사용 대상, 사용 방법, 사용 기간, 할인 금액 등을 정할 수 있습니다. 할인쿠폰의 종류 또는 내용은 “회사”의 정책에 따라 달라질 수 있습니다.</p>
					<p>② “회사”는 할인쿠폰의 사용 대상, 사용 방법, 사용 기간, 할인 금액 등을 할인쿠폰 또는 서비스 화면에
						별도로 표시하거나 통지합니다.</p>
					<p>③ “회원”은 할인쿠폰을 “회원” 본인의 구매에 사용할 수 있는 권한만을 가지며, 어떠한 경우에도 이를
						타인에게 실질적으로 매매 또는 양도할 수 없습니다.</p>
					<p>④ “포인트”라 함은 경우에 따라 무상으로 제공되고 “플랫폼”에서 서비스 이용 시 대금 결제 수단으로 사용할
						수 있는 현금 등가의 혜택을 의미합니다.</p>
					<p>⑤ “포인트”의 유효기간은 적립일로부터 1년이며, 유효기간 동안 사용하지 않을 경우 자동으로 소멸됩니다.</p>
					<p>⑥ “포인트” 및 “할인쿠폰”은 현금 및 현금화되는 수단으로 환급될 수 없으며, 사용 기간이 만료되거나
						이용계약이 종료되면 소멸합니다.</p>
					<br>
					<h4>제 12조(수신확인통지,서비스이용 변경 및 취소)</h4>
					<br>
					<p>① “플랫폼”은 “이용자”의 서비스이용신청이 있는 경우 “이용자”에게 수신확인통지를 합니다.</p>
					<p>② 수신확인통지를 받은 “이용자”는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 서비스이용에 대한 변경 및 취소를 요청할 수 있고 
	“플랫폼”은 “이용자”가 동의한 시설별 이용규정 및 취소환불규정 등의 구제범위 이내에서 처리하여야 합니다.</p>
					<br>
					<h4>제 13조(개별 서비스 약관 및 이용조건)</h4>
					<br>
					<p>① “회사”는 개별 서비스와 관련한 별도의 약관 및 이용정책을 둘 수 있으며, 개별서비스에서 별도로 적용되는 약관 및 정책에 대한 동의는 
    “회원”이 개별서비스를 이용할 경우 별도의 동의절차를 거치게 됩니다. 이 경우 개별 서비스에 대한 및 정책이 본 약관에 우선합니다.</p>
					<p>② 전항에도 불구하고 “회사”는 개별 서비스에 대한 이용정책에 대해서는 “서비스”를 통해 공지할 수 있으며,
						“이용자”는 이용정책을 숙지하고 준수하여야 합니다.</p>
					<br>
					<h4>제 14조(환급)</h4>
					<br>
					<p>“플랫폼”은 “이용자”가 신청한 제휴판매자 상품이 품절 등의 사유로 제공을 할 수 없을 때에는 지체 없이 그 사유를
 “이용자”에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p>
					<br>
					<h4>제 15조(취소,변경 환불 등)</h4>
					<br>
					<p>① 서비스 이용에 대한 취소 및 환불규정은 전자상거래 등에서의 소비자보호에 관한 법령을 준수합니다.</p>
					<p>② “제휴판매자”는 별도의 취소 및 환불규정을 제정할 수 있으며 이를 상세페이지에 기재하고 “이용자”의
						동의를 받은 경우 우선 적용됩니다.</p>
					<p>③ “회사”는 “제휴판매자”에게 전②항의 규정이 없는 경우를 위하여 시설 별 취소환불규정을 제정할 수 있으며
						이를 상세페이지에 기재하고 “이용자”의 동의를 받아 적용합니다.</p>
					<br>
					<h4>제 16조(개인정보보호)</h4>
					<br>
					<p>① “회사”는 “이용자”의 개인정보 수집 시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를
						수집합니다.</p>
					<p>② “회사”는 회원가입 시 서비스에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 서비스이용 
    이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.</p>
					<p>③ “회사”는 “이용자”의 개인정보를 수집•이용하는 때에는 당해 “이용자”에게 그 목적을 고지하고 동의를
						받습니다.</p>
					<p>④ “회사”는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용•제공단계에서 당해 
    “이용자”에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.</p>
					<p>⑤ “플랫폼”이 제2항과 제3항에 의해 “이용자”의 동의를 받아야 하는 경우에는 개인정보보호책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적,
    제3자에 대한 정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 
    제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 “이용자”는 언제든지 이 동의를 철회할 수 있습니다.</p>
					<p>⑥ “이용자”는 언제든지 “플랫폼”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “플랫폼”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다.
    “이용자”가 오류의 정정을 요구한 경우에는 “플랫폼”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</p>
					<p>⑦ “플랫폼”은 개인정보 보호를 위하여 “이용자”의 개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 
    “이용자”의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 “이용자”의 손해에 대하여 모든 책임을 집니다.</p>
					<p>⑧ “플랫폼” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한
						때에는 당해 개인정보를 지체 없이 파기합니다.</p>
					<p>⑨ “플랫폼”은 개인정보의 수집•이용•제공에 관한 동의 란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집•이용•제공에 관한 “이용자”의 동의거절 시 제한되는 서비스를
     구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집•이용•제공에 관한 “이용자”의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</p>
					<br>
					<h4>제 17조("회사"의 의무)</h4>
					<br>
					<p>①“회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라
						지속적이고, 안정적으로 서비스를 제공하는데 최선을 다하여야 합니다.</p>
					<p>② “회사”는 “이용자”가 안전하게 서비스를 이용할 수 있도록 “이용자”의 개인정보(신용정보 포함)보호를
						위한 보안 시스템을 갖추어야 합니다.</p>
					<p>③ “회사”는 이외에 관계 법령이 정한 의무사항을 준수합니다.</p>
					<br>
					<h4>제 18조(회원의 ID 및 비밀번호에 대한 의무)</h4>
					<br>
					<p>① ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.
					<p>② “회원”은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</p>
					<p>③ “회원”이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로
						“회사”에 통보하고 “회사”의 안내가 있는 경우에는 그에 따라야 합니다.</p>
					<p>④ “회원”이 제3항에 따른 통지를 하지 않거나 “회사”의 조치에 따르지 않아 발생하는 모든 불이익에 대한
						책임은 “회원”에게 있습니다.</p>
					<br>
					<h4>제 19조("이용자"의 의무)</h4>
					<br>
					<p>"이용자"는 다음 행위를 하여서는 안되며, 적발시 "회원탈퇴", "포인트회수", "쿠폰회수" 등의 조치를
						받을 수 있습니다.</p>
					<p>  1. 신청 또는 변경시 허위 내용의 등록</p>
					<p>  2. 타인의 정보 도용</p>
					<p>  3. “플랫폼”에 게시된 정보의 변경</p>
					<p>  4. “플랫폼”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</p>
					<p>  5. “플랫폼” 기타 제3자의 저작권 등 지적재산권에 대한 침해</p>
					<p>  6. “플랫폼” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</p>
					<p>  7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 “플랫폼”에 공개 또는 게시하는 행위</p>
					<p>  8. 회사가 정한 규정외의 방법으로 포인트, 쿠폰, 기타"회사"가 제공하는 혜택을 적립하거나 사용하는 등의 행위</p>
					<p>  9. “이용자”본인에게 제공된 포인트 또는 쿠폰을 타인에게 판매하거나 양도하는 행위</p>
					<p>  10. 고객행복센터 상담 내용이 욕설, 폭언, 성희롱 등에 해당하는 행위</p>
					<p>  11. 확인되지 않은 허위의 게시물을 작성하는 행위</p>
					<p>  12. 정당한 사유 없이 “회사”의 영업을 방해하는 내용을 기재하는 행위</p>
					<p>  13. 리버스엔지니어링, 디컴파일, 디스어셈블 및 기타 일체의 가공행위를 통하여 서비스를 복제, 분해 또 모방 기타 변형하는 행위</p>
					<p>  14. 자동 접속 프로그램 등을 사용하는 등 정상적인 용법과 다른 방법으로 서비스를 이용하여 “회사”의 서버에 부하를 일으켜 “회사”의 정상적인 서비스를 방해하는 행위</p>
					<p>  15. 성년이 아닌 이용자의 이성간 혼숙행위</p>
					<p>  16. 기타 관계법령에 위반된다고 판단되는 행위</p>

					<br>
					<h4>제 20조("플랫폼"과 연결된 "사이트와의" 관계)</h4>
					<br>
					<p>① “플랫폼”과 연결된 “사이트”란 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이
						포함됨)방식 등으로 연결된 경우를 말합니다.</p>
					<p>② “플랫폼”과 연결된 “사이트”가 독자적으로 제공하는 재화 등에 의하여 “이용자”와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 
	“플랫폼”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.</p>
					<p>③“플랫폼”에서 제공되는 서비스 외에 “플랫폼”과 단순한 링크로 연결되어 제 3 자가 제공하는 서비스에 대하여는 “회사”의 개인정보처리방침이 적용되지 않으며 
	“회사”는 제 3 자의 사이트에 대하여 책임지지 않습니다.</p>
					<br>
					<h4>제 21조(저작권의 귀속및 이용제한)</h4>
					<br>
					<p>① “회사”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “회사”에 귀속합니다.</p>
					<p>② “이용자”는 “플랫폼”을 이용함으로써 얻은 정보 중 “회사”에게 지적재산권이 귀속된 정보를 “회사”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 
	 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</p>
					<p>③ “회사”는 약정에 따라 “이용자”에게 귀속된 저작권을 사용하는 경우 당해 “이용자”에게 통보하여야
						합니다.</p>
					<br>
					<h4>제 22조(면책)</h4>
					<br>
					<p>① “회사”는 “제휴판매자"와 “이용자” 간의 상품거래를 중개하는 플랫폼 서비스만을 제공할 뿐, “재화”를 판매하는 당사자가 아니며, 
     “재화”에 대한 정보 및 배송, 하자 등에 대한 책임은 “제휴판매자" 에게 있습니다.</p>
					<p>② “회사”는 “제휴판매자"가 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지
						않습니다.</p>
					<p>③ “회사”는 천재지변 또는 이에 준하는 불가항력으로 인하여 “서비스”를 제공할 수 없는 경우에는 서비스
						제공에 관한 책임이 면제됩니다.</p>
					<p>④ “회사”는 “이용자”의 귀책사유로 인한 “서비스”이용의 장애에 대하여는 책임을 지지 않습니다.</p>
					<p>⑤ “회사”는 “이용자”가 게재한 이용후기 등 정보/자료/사실의 신뢰도, 정확성에 대해서는 책임을 지지
						않습니다.</p>
					<p>⑥ “회사”는 제3자가 서비스 내 화면 또는 링크된 웹사이트를 통하여 광고한 제품 또는 서비스의 내용과
						품질에 대하여 감시할 의무 기타 어떠한 책임도 지지 아니합니다.</p>
					<p>⑦ “회사”는 “이용자”가 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며, 그
						밖의 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.</p>
					<p>⑧ “회사”는 “이용자”간 또는 “이용자”와 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는
						책임이 면제됩니다.</p>
					<p>⑨ “회사” 및 “회사”의 임직원 그리고 대리인은 고의 또는 중대한 과실이 없는 한 다음과 같은 사항으로부터
						발생하는 손해에 대해 책임을 지지 아니합니다.</p>
					<p>     1. 회원 정보의 허위 또는 부정확성에 기인하는 손해</p>
					<p>     2. 서비스에 대한 접속 및 서비스의 이용과정에서 “이용자”의 귀책사유로 발생하는 손해</p>
					<p>     3. 서버에 대한 제3자의 모든 불법적인 접속 또는 서버의 불법적인 이용으로부터 발생하는 손해 및 제3자의 불법적인 행위를 방지하거나 예방하는 과정에서 발생하는 손해</p>
					<p>     4. 제3자가 서비스를 이용하여 불법적으로 전송, 유포하거나 또는 전송, 유포되도록 한 모든 바이러스, 스파이웨어 및 기타 악성 프로그램으로 인한 손해</p>
					<br>
					<h4>제 23조(분쟁해결)</h4>
					<br>
					<p>“플랫폼”은 “이용자”를 위하여 “이용자”와 “제휴판매자" 사이에서 중재역할을 합니다.</p>
					<br>
					<h4>제 24조(재판권 및 준거법)</h4>
					<p>① “회사”와 “이용자”간에 발생한 분쟁에 관한 소송은 “회사”의 주소지를 관할하는 법원을 관할법원으로
						정합니다.</p>
					<p>② “플랫폼”과 “이용자”간에 제기된 전자상거래 소송에는 한국법을 적용합니다.</p>
					<br>

					<p>부칙 (시행일) 본 약관은 2018년 06월 04일부터 적용합니다.</p>

					<div class="comm_table">
						<table>
							<colgroup>
								<col style="width: 10%" />
								<col>
								<col style="width: 15%">
							</colgroup>
							<tr>

							</tr>
						</table>
					</div>
				</section>
				<aside>
					<ul>
						<li><a href="boardList.do">공지사항</a></li>
						<li><a href="eventboard.do">이벤트</a></li>
						<li><a href="terms4.do">자주 묻는 질문</a></li>
						<li><a href="inquiryBoardList.do">문의 사항</a></li>
						<li><a href="terms.do" class="check">약관 및 정책</a></li>
					</ul>
				</aside>
			</div>

			<jsp:include page="../comm/footer.jsp" />
		</div>
	</div>
</body>
</html>