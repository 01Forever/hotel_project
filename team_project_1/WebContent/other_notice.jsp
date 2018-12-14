<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./comm/head.jsp"/>
<style>
	.contents {
		background-color: #eee;
		width: 60%;
		height: 1000px;
		margin: 0 auto;
		padding-top: 30px;
	}
	
	.otherList {
		background-color: gray;
		font-size: 18px;
		width: 15%;
		padding: 20px 0;
		margin-right: 70px;
		float: left;
		line-height: 3;
	}
	
	.otherList a {
		padding-left: 15px;
	}
	
	#notice {
		background-color: black;
	}
	
	.content {
		width: 95%;
	}
	
	.tab {
		overflow: hidden;
		border-bottom: 1px solid gray;
		padding-bottom: 20px;
	}
	
	.tabList {
		overflow: hidden;
		display: block;
	}
	
	.tabList li {
		border-bottom: 1px solid silver;
		padding: 40px 25px 35px 0;
	}
	
	.tabList li div {
		padding: 50px 0;
		display: none;
	}
	
	#noticeName {
		font-size: 20px;
		color: black;
		width: auto;
		padding-bottom: 5px;
		display: block;
	}
	
	#writeDate {
		font-size: 15px;
		color: gray;
		width: auto;
	}
</style>
<script type="text/javascript" src="js/toggle.js"></script>
<meta charset="UTF-8">
<title>더보기 - 공지사항</title>
</head>
<body>
<div class="container">
	<jsp:include page="./comm/header.jsp"/>
	<div class="contents">
		<div class="otherList">
			<ul>
				<li id="notice"><a href="#">공지사항</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">자주 묻는 질문</a></li>
				<li><a href="#">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="tab">
				<ul>
					<li>서비스 공지사항</li>
				</ul>
			</div>
			<div class="tabList">
				<ul>
					<li class="list">
						<a>
							<span id="noticeName">공지사항1</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="listContent">
							<p>각급 선거관리위원회의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 모든 국민은 주거의 자유를 침해받지 아니한다. 주거에 대한 압수나 수색을 할 때에는 검사의 신청에 의하여 법관이 발부한 영장을 제시하여야 한다.</p>

							<p>법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다.</p>
							
							<p>여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다. 대통령은 필요하다고 인정할 때에는 외교·국방·통일 기타 국가안위에 관한 중요정책을 국민투표에 붙일 수 있다.</p>
							
							<p>제안된 헌법개정안은 대통령이 20일 이상의 기간 이를 공고하여야 한다. 국가의 세입·세출의 결산, 국가 및 법률이 정한 단체의 회계검사와 행정기관 및 공무원의 직무에 관한 감찰을 하기 위하여 대통령 소속하에 감사원을 둔다.</p>
							
							<p>국회의 정기회는 법률이 정하는 바에 의하여 매년 1회 집회되며, 국회의 임시회는 대통령 또는 국회재적의원 4분의 1 이상의 요구에 의하여 집회된다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.</p>
						</div>
					</li>
					<li class="list">
						<a>
							<span id="noticeName">공지사항2</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="listContent">
							<p>대법원에 대법관을 둔다. 다만, 법률이 정하는 바에 의하여 대법관이 아닌 법관을 둘 수 있다. 대통령은 제3항과 제4항의 사유를 지체없이 공포하여야 한다.</p>

							<p>정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수 없다. 명령·규칙 또는 처분이 헌법이나 법률에 위반되는 여부가 재판의 전제가 된 경우에는 대법원은 이를 최종적으로 심사할 권한을 가진다.</p>
							
							<p>행정권은 대통령을 수반으로 하는 정부에 속한다. 국회는 국정을 감사하거나 특정한 국정사안에 대하여 조사할 수 있으며, 이에 필요한 서류의 제출 또는 증인의 출석과 증언이나 의견의 진술을 요구할 수 있다.</p>
							
							<p>모든 국민은 법률이 정하는 바에 의하여 국방의 의무를 진다. 근로자는 근로조건의 향상을 위하여 자주적인 단결권·단체교섭권 및 단체행동권을 가진다.</p>
							
							<p>국가는 평생교육을 진흥하여야 한다. 국군의 조직과 편성은 법률로 정한다. 대통령이 궐위되거나 사고로 인하여 직무를 수행할 수 없을 때에는 국무총리, 법률이 정한 국무위원의 순서로 그 권한을 대행한다.</p>		
						</div>
					</li>
					<li class="list">
						<a>
							<span id="noticeName">공지사항3</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="listContent">
							<p>감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다. 국가는 여자의 복지와 권익의 향상을 위하여 노력하여야 한다.</p>

							<p>대통령은 국무총리·국무위원·행정각부의 장 기타 법률이 정하는 공사의 직을 겸할 수 없다. 혼인과 가족생활은 개인의 존엄과 양성의 평등을 기초로 성립되고 유지되어야 하며, 국가는 이를 보장한다.</p>
							
							<p>국토와 자원은 국가의 보호를 받으며, 국가는 그 균형있는 개발과 이용을 위하여 필요한 계획을 수립한다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다.</p>
							
							<p>국가안전보장회의는 대통령이 주재한다. 국회는 선전포고, 국군의 외국에의 파견 또는 외국군대의 대한민국 영역안에서의 주류에 대한 동의권을 가진다.</p>
							
							<p>모든 국민은 고문을 받지 아니하며, 형사상 자기에게 불리한 진술을 강요당하지 아니한다. 국가의 세입·세출의 결산, 국가 및 법률이 정한 단체의 회계검사와 행정기관 및 공무원의 직무에 관한 감찰을 하기 위하여 대통령 소속하에 감사원을 둔다.</p>
						</div>
					</li>
					<li class="list">
						<a>
							<span id="noticeName">공지사항4</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="listContent">
							<p>제1항의 해임건의는 국회재적의원 3분의 1 이상의 발의에 의하여 국회재적의원 과반수의 찬성이 있어야 한다. 법률은 특별한 규정이 없는 한 공포한 날로부터 20일을 경과함으로써 효력을 발생한다.</p>

							<p>이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다.</p>
							
							<p>모든 국민은 종교의 자유를 가진다. 국토와 자원은 국가의 보호를 받으며, 국가는 그 균형있는 개발과 이용을 위하여 필요한 계획을 수립한다. 대법관은 대법원장의 제청으로 국회의 동의를 얻어 대통령이 임명한다.</p>
							
							<p>중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.</p>
							
							<p>제안된 헌법개정안은 대통령이 20일 이상의 기간 이를 공고하여야 한다. 전직대통령의 신분과 예우에 관하여는 법률로 정한다. 대통령의 국법상 행위는 문서로써 하며, 이 문서에는 국무총리와 관계 국무위원이 부서한다. 군사에 관한 것도 또한 같다.</p>
						</div>
					</li>
					<li class="list">
						<a>
							<span id="noticeName">공지사항5</span>
							<span id="writeDate">작성일</span>
						</a>
						<div class="listContent">
							<p>공무원의 직무상 불법행위로 손해를 받은 국민은 법률이 정하는 바에 의하여 국가 또는 공공단체에 정당한 배상을 청구할 수 있다. 이 경우 공무원 자신의 책임은 면제되지 아니한다.</p>

							<p>대통령의 임기는 5년으로 하며, 중임할 수 없다. 모든 국민은 거주·이전의 자유를 가진다. 대통령은 취임에 즈음하여 다음의 선서를 한다. 정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다.</p>
							
							<p>재의의 요구가 있을 때에는 국회는 재의에 붙이고, 재적의원과반수의 출석과 출석의원 3분의 2 이상의 찬성으로 전과 같은 의결을 하면 그 법률안은 법률로서 확정된다.</p>
							
							<p>연소자의 근로는 특별한 보호를 받는다. 정부는 회계연도마다 예산안을 편성하여 회계연도 개시 90일전까지 국회에 제출하고, 국회는 회계연도 개시 30일전까지 이를 의결하여야 한다.</p>
							
							<p>국무총리는 국회의 동의를 얻어 대통령이 임명한다. 재산권의 행사는 공공복리에 적합하도록 하여야 한다. 재판의 심리와 판결은 공개한다. 다만, 심리는 국가의 안전보장 또는 안녕질서를 방해하거나 선량한 풍속을 해할 염려가 있을 때에는 법원의 결정으로 공개하지 아니할 수 있다.</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="./comm/footer.jsp"/>	
</div>
</body>
</html>