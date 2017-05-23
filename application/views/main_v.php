<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/layout.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/content.css"/>

	<!--[if lt IE 9]>
	<script src="../js/html5shiv.js"></script>
	<![endif]-->

	<script src="/dist/js/require-config.js"></script>
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/main.js"></script>

</head>
<body>

<div id="skip">
	<ul>
		<li><a href="#container">본문 바로가기</a></li>
		<li><a href="#gnb">주 메뉴 바로가기</a></li>
	</ul>
</div>

<!-- header -->
<header id="header">
	<div class="area_logo">
		<h1><a href="#"><img src="/dist/images/logo.png" alt="드림증권 투자시스템"></a></h1>
		<div class="area_mem">
			<span class="member"><strong></strong>님이 로그인하셨습니다.</span>
			<span class="time"></span>
		</div>
	</div>
	<nav id="gnb">
		<ul class="clfix">
			<li><a href="#">투자성향</a></li>
			<li><a href="#">펀드</a></li>
			<li><a href="#">채권</a></li>
			<li><a href="#">주식</a></li>
			<li><a href="#">결과보기</a></li>
		</ul>
	</nav>
</header>
<!-- //header -->

<!-- content -->
<div id="container">
	<div id="content" class="mnpd clfix">
		<div class="box_mnlft">
			<div class="mnl_tp clfix">
				<ul>
					<li class="newstit">
						<strong>이 시각<br>주요뉴스</strong>
						<!-- <a href="#" class="btn_pls"><img src="/dist/images/ico_plus.png" alt=""></a> -->
					</li>
					<li class="news">
						<a href="#">
							<span>2017.03.10</span>
							<em>코스피 23.6P<br>하락 마감</em>
						</a>
					</li>
					<li class="news mid">
						<a href="#">
							<span>2017.03.10</span>
							<em>대법원 특수채권<br>재 조정</em>
						</a>
					</li>
					<li class="news">
						<a href="#">
							<span>2017.03.10</span>
							<em>한국은행<br>금리 인하 방침</em>
						</a>
					</li>
				</ul>
			</div>
			<div class="mnl_btm">
				<div class="area_pt clfix">
					<div class="tit_pt">종합지수</div>
					<div class="pt_list">
						<ul>
							<li class="">
								<strong>KOSPI</strong>
								<div>
									<span class="pt1">600.73</span>
									<span class="pt2">
										<img src="" alt="">
										<span>820</span>
									</span>
								</div>
								<em class="per">1.35%</em>
							</li>
							<li class="">
								<strong>KOSDAQ</strong>
								<div>
									<span class="pt1">2000.77</span>
									<span class="pt2">
										<img src="" alt="">
										<span>820</span>
									</span>
								</div>
								<em class="per">1.35%</em>
							</li>
							<li class="">
								<strong>KOSPI200</strong>
								<div>
									<span class="pt1">270.77</span>
									<span class="pt2">
										<img src="" alt="">
										<span>820</span>
									</span>
								</div>
								<em class="per">1.35%</em></li>
						</ul>
					</div>
				</div>
				<div class="area_cpm">
					<ul class="fst clfix">
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
					</ul>
					<ul class="clfix">
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
					</ul>
					<ul class="clfix">
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="box_mnrtg1">
			<div class="addcpm">
				<strong>추천종목</strong>
				<!-- <a href="#" class="btn_pls"><img src="/dist/images/ico_plus.png" alt=""></a> -->
			</div>
			<div class="chart_mn">
				<div class="tit_bt">
					<strong>삼성전자</strong>
					<a href="#">기업정보 상세보기<img src="/dist/images/ico_dtarr.png" alt=""></a>
				</div>
				<div class="chart" style="width: 440px; height: 190px; margin: auto">
					<canvas id="chart_01" width="400" height="170"></canvas>
				</div>
			</div>
			<div class="chart_mn">
				<div class="tit_bt">
					<strong>대한항공</strong>
					<a href="#">기업정보 상세보기<img src="/dist/images/ico_dtarr.png" alt=""></a>
				</div>
				<div class="chart" style="width: 440px; height: 190px; margin: auto">
					<canvas id="chart_02" width="400" height="170"></canvas>
				</div>
			</div>
		</div>
		<div class="box_mnrtg2">
			<div class="anldoc">
				<strong>애널리스트<br>보고서</strong>
			</div>
			<ul>
				<li class="ic_cp1"><a href="#">제약</a></li>
				<li class="ic_cp2"><a href="#">석유화학</a></li>
				<li class="ic_cp3"><a href="#">식품/유통</a></li>
				<li class="ic_cp4"><a href="#">건설/조선</a></li>
				<li class="ic_cp5"><a href="#">자동차/항공</a></li>
				<li class="ic_cp6"><a href="#">IT/전자</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- //content -->

<!-- 뉴스정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop1">
		<div class="box_titpop">
			<h2>컨텐츠 형태</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<h3 class="news_tit">한국은행 기준 금리 동결 방침 한국은행 기준 금리 동결 방침</h3>
			<p>한국은행이 연내 기준금리를 낮출 것이라는 전망을 내놓았던 외국계 투자은행이 태도를 급선회했습니다. 미국 연방준비제도의 3월 기준금리 인상이 기정 사실화되자 <em
						class="colred">한국은행이 연말까지 기준금리를 동결할 것이라는 전망에</em> 무게가 더 싣고 있는 겁니다. 기준금리 인상은 가계부채 증폭 부담이 크고 , 반면에
				기준금리 인하는 금리 역전에 따른다.</p>
			<div class="date align-r">
				<em class="colblu">잡월드 뉴스</em><span class="l_pd">|</span><span>2017.03.23</span>
			</div>
		</div>
	</div>

</div>
<!-- //뉴스정보 pop -->

<!-- 설문조사 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop1">
		<div class="box_titpop">
			<h2>투자성향 진단하기</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop" style="overflow-y: auto; height: 520px;">
			<ul class="list_qu">
				<li style="display: none;">
					<strong>1. 귀하의 나이는 어떻게 되십니까?</strong>
					<ul class="clfix">
						<li class="mr20" style="display: none;">
							<label>
								<input type="radio">
								<span>질문</span>
							</label>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="btn_popbtm">
			<span class="btn_blk"><a href="#">결과보기</a></span>
		</div>
	</div>

	<!-- 우측 팝(안정형) -->
	<div class="layerpop pop1" style="display: none;">
		<div class="box_titpop">
			<h2>투자성향 결과</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<div class="area_res">
				<div class="type type1">
					<strong>안정형</strong>
					<p>첫째도 안정, 둘째도 안정 </p>
					<span>투자한 돈의 손실을 원하지 않아 위험이 적은 상품에 투자하는 성격</span>
				</div>
			</div>
		</div>
	</div>

	<!-- 우측 팝(중립형) -->
	<div class="layerpop pop1" style="display: none;">
		<div class="box_titpop">
			<h2>투자성향 결과</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<div class="area_res">
				<div class="type type3">
					<strong>중립형</strong>
					<p>매사에 조심조심 </p>
					<span>당장에 손실을 좀 보더라도 어느 정도 규직적인 수익을 원해 투자한 금액의 일부는 위험성이 있는 상품에 투자할 수 있는 성격</span>
				</div>
			</div>
		</div>
	</div>

	<!-- 우측 팝(공격형) -->
	<div class="layerpop pop1" style="display: none;">
		<div class="box_titpop">
			<h2>투자성향 결과</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<div class="area_res">
				<div class="type type2">
					<strong>공격형</strong>
					<p>모험이 없다면 재미 없지 </p>
					<span>투자한 돈의 손실을 보는 것 보다 투자로 수익을 얻는 것을 더 중요시 하여 위험한 상품에도 투자하는 성격</span>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //설문조사 pop -->

<!-- 기업정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop21">
		<div class="box_titpop">
			<h2>기업정보</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="box_tblwrite tblview">
					<table>
						<colgroup>
							<col style="width: 30%;">
							<col style="width: 70%;">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">회사이름</th>
							<td>삼성전자</td>
						</tr>
						<tr>
							<th scope="row">영문명</th>
							<td>SAMSUNG ECECTRONICS CO,.LTD</td>
						</tr>
						<tr>
							<th scope="row">공시회사명</th>
							<td>삼성전자</td>
						</tr>
						<tr>
							<th scope="row">종목코드</th>
							<td>005930</td>
						</tr>
						<tr>
							<th scope="row">대표자명</th>
							<td>권오현, 윤부근, 신종균</td>
						</tr>
						<tr>
							<th scope="row">법인구분</th>
							<td>유가증권시장</td>
						</tr>
						<tr>
							<th scope="row">법인등록번호</th>
							<td>130111-0006246</td>
						</tr>
						<tr>
							<th scope="row">사업자등록번호</th>
							<td>124-81-00998</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td>경기도 수원시 영통구 삼성로 129(매탄동)</td>
						</tr>
						<tr>
							<th scope="row">홈페이지</th>
							<td>WWW.SEC.CO.KR</td>
						</tr>
						<tr>
							<th scope="row">IR홈페이지</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<td>031-200-114</td>
						</tr>
						<tr>
							<th scope="row">팩스번호</th>
							<td>031-200-7538</td>
						</tr>
						<tr>
							<th scope="row">업종명</th>
							<td>통신 및 방송 장비 제조업</td>
						</tr>
						<tr>
							<th scope="row">설립일</th>
							<td>1969-01-13</td>
						</tr>
						<tr>
							<th scope="row">결산월</th>
							<td>12월</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="layerpop pop22">
		<div class="box_titpop">
			<h2>기업 주식금액 변동 그래프</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="chartpd" style="width: 600px; height: 300px; margin: auto">
					<canvas id="chart_10"></canvas>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //기업정보 pop -->

<!-- 등수보기 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop13">
		<div class="box_titpop">
			<h2>이 시각 뉴스</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="box_tbllist ovtbl">
					<table>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: 35%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">순위</th>
							<th scope="col">직원명</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>1</td>
							<td>홍길동</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="endbtm">
			<span><img src="/dist/images/ico_e1.png" alt=""></span>
			<em> 모두 수고 하셨습니다 </em>
			<span><img src="/dist/images/ico_e2.png" alt=""></span>
		</div>
	</div>

</div>
<!-- //등수보기 pop -->

<!-- 신규 기업정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop18">
		<div class="box_titpop">
			<h2>삼성전자</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="lftpols1">
					<div class="bx_innm clfix">
						<ul>
							<li class="clfix"><strong>- 종목코드 :</strong><span>009863</span></li>
							<li class="clfix"><strong>- 최고가 :</strong><span>129,000</span></li>
							<li class="clfix"><strong>- 최저가 :</strong><span>129,000</span></li>
							<li class="clfix"><strong>- 신용정보 :</strong><span>BBB</span></li>
						</ul>
					</div>
					<div class="bx_innm1">
						<ul>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
						</ul>
					</div>
				</div>
				<div class="lftpols2">
					<div class="numkk">
						<strong>125,000</strong>
						<span class="pt2 colblu">
							<img src="/dist/images/ico_mndw.png" alt="">
						</span>
						<span style="margin-left: -20px;">82000</span>
						<em>-8.88%</em>
					</div>
					<div class="chrt">
						<div class="chartpd" style="width: 650px; height: 800px; margin: auto">
							<canvas id="chart_11" width="400" height="250"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //신규 기업정보 pop -->

</body>
</html>