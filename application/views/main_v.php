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
			<li class="on"><a href="#">투자성향</a></li>
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
						<a href="#" class="btn_pls"><img src="/dist/images/ico_plus.png" alt=""></a>
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
				<a href="#" class="btn_pls"><img src="/dist/images/ico_plus.png" alt=""></a>
			</div>
			<div class="chart_mn">
				<div class="tit_bt">
					<strong>삼성전자</strong>
					<a href="#">기업정보 상세보기<img src="/dist/images/ico_dtarr.png" alt=""></a>
				</div>
				<div class="chart"><img src="/dist/images/chart_mn1.jpg" alt=""></div>
			</div>
			<div class="chart_mn">
				<div class="tit_bt">
					<strong>대한항공</strong>
					<a href="#">기업정보 상세보기<img src="/dist/images/ico_dtarr.png" alt=""></a>
				</div>
				<div class="chart"><img src="/dist/images/chart_mn2.jpg" alt=""></div>
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
		<div class="box_contpop">
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

	<!-- 우측 팝 -->
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

</div>
<!-- //설문조사 pop -->

</body>
</html>