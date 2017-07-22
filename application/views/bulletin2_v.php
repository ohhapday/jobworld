<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common3.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/layout3.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/content3.css"/>

	<!--[if lt IE 9]>
	<script src="../js/html5shiv.js"></script>
	<![endif]-->

	<script src="/dist/js/require-config.js"></script>
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/bulletin2.js"></script>

</head>
<body>

<div id="skip">
	<ul>
		<li><a href="#container">본문 바로가기</a></li>
		<li><a href="#gnb">주 메뉴 바로가기</a></li>
	</ul>
</div>

<!-- content -->
<div id="container" class="bg">
	<div id="content" class="clfix">
		<div class="box_sbtop clfix" style="margin-left: 20px;">
			<div class="sbleft3" style="background: #f8f1e1">
				<div class="sb_tit sb_tit2">
					<h3 class="ic1">종목별 주식 현황</h3>
				</div>
				<div class="box_tbllist">
					<table>
						<colgroup>
							<col style="width: 40%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">종목명</th>
							<th scope="col">현재가</th>
							<th scope="col">전일대비</th>
							<th scope="col">등락률</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td class="align-l" style="height: 70px;">삼성전자</td>
							<td>5,500</td>
							<td><span class="pt2 pt2 colred"><img src="/dist/images/ico_mnup.png" alt="">820</span></td>
							<td><em class="colred">+2.00%</em></td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="sbright3" style="background: #f8f1e1">
				<div class="sb_tit sb_tit2 margnon">
					<h3 class="ic2">종합현황</h3>
				</div>
				<div class="bx_py">
					<div class="pt_list">
						<ul>
							<li class="down">
								<strong>KOSDAQ</strong>
								<div>
									<span class="pt1">600.73</span>
									<span class="pt2">
										<img src="/dist/images/ico_mndw2.png" alt="">
										<span style="font-size: 1em;"></span>
									</span>
								</div>
								<em class="per" style="text-align: right">1.35%</em>
							</li>
							<li class="down">
								<strong>KOSPI</strong>
								<div>
									<span class="pt1">2000.77</span><span class="pt2">
										<img src="/dist/images/ico_mndw2.png" alt="">
										<span style="font-size: 1em;"></span>
									</span>
								</div>
								<em class="per" style="text-align: right">1.35%</em>
							</li>
							<li class="up">
								<strong>KOSPI200</strong>
								<div>
									<span class="pt1">270.77</span>
									<span class="pt2">
										<img src="/dist/images/ico_mnup2.png" alt="">
										<span style="font-size: 1em;"></span>
									</span>
								</div>
								<em class="per" style="text-align: right">1.35%</em>
							</li>
						</ul>
					</div>
				</div>
				<div class="sb_tit sb_tit2 mt20">
					<h3 class="ic4">종목별 주식 그래프</h3>
				</div>
				<div class="pt_tit" style="padding-left: 30px;">

				</div>
				<div class="chrt" style="width: 650px; height: 458px; margin: auto;">
					<canvas id="chart_11" width="850" height="550"></canvas>
				</div>
			</div>
			<div class="pop_wrap">
				<div class="layerpop77 pop">
					<div class="box_titpop">
						<h2>증권뉴스</h2>
					</div>
					<div class="box_contpop">
						<div class="contpdd">
							<div class="ar_btm_selpo">
								<ul class="dtlist clfix">
									<li style="display: none;"><strong><a href="#">코스피 23.6P 하락 마감</a></strong><span>2017-03-10</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="layerpop77 pop">
					<div class="box_titpop">
						<h2>증권리포트</h2>
					</div>
					<div class="box_contpop">
						<div class="contpdd">
							<div class="ar_btm_selpo">
								<ul class="dtlist clfix">
									<li style="display: none;"><strong><a href="#">코스피 23.6P 하락 마감</a></strong><span>2017-03-10</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //content -->

<!-- 신규 뉴스정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop1">
		<div class="box_titpop">
			<h2 class="logo"><img src="/dist/images/logo02.png" alt="" height="50px" width="250px"></h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_tit02"></div>
		<div class="box_contpop">
			<h3 class="news_tit"></h3>
			<p class="line"></p>
			<p class="con_txt" style="height: 400px; overflow-y: auto;">ㅁㅁㅁㅁ</p>
			<div class="date align-r">
				<em class="colblu">서울경제</em><span class="l_pd">|</span><span>2017.03.23</span>
			</div>
		</div>
	</div>
</div>
<!-- //layer pop -->

<!-- 뉴스정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop1">
		<div class="box_titpop">
			<h2>이 시각 뉴스</h2>
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

<!-- 신규 애널리스트 이미지 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop1" style="width: 0px; margin-top: -50px;">
		<div class="">
			<img src="/dist/images/analist/애널리스트_IT전자(내림).jpg" />
		</div>
	</div>

</div>
<!-- //layer pop -->

</body>
</html>