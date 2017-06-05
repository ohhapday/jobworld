<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/layout.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/content.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/scroll.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/print.css"/>

	<!--[if lt IE 9]>
	<script src="../js/html5shiv.js"></script>
	<![endif]-->

	<script src="/dist/js/require-config.js"></script>
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/stock.js"></script>

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
	<div class="area_tpdata">
		<h2>주식 투자</h2>
		<div>
			<div class="area_mem">
				<span class="member"><strong></strong>님이 로그인하셨습니다.</span>
				<span class="time"></span>
			</div>
			<h1><a href="#"><img src="/dist/images/logo_r.png" alt="드림증권 투자시스템"></a></h1>
		</div>
	</div>
</header>
<!-- //header -->

<!-- content -->
<div id="container">
	<div id="content" class="clfix">
		<div class="box_sbtop clfix">
			<div class="sbright2" style="margin-top: -20px;">

				<div class="sb_tit">
					<h3 class="ic4">위탁금 현황</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
						<li><strong>고객자산</strong><span></span></li>
						<li><strong>투자금액</strong><span></span></li>
						<li><strong>잔고</strong><span></span></li>
					</ul>
				</div>

				<div class="sb_tit" style="margin-top: 10px;">
					<h3 class="ic3">주식 매매</h3>
				</div>
				<div class="bx_tablist">
					<div class="tab">
						<div class="tabmenu m1 on"><a href="#" class="btn_tb">사기(매수)</a></div>
						<div class="tabmenu m2"><a href="#" class="btn_tb">팔기(매도)</a></div>
					</div>
					<div class="btmtbl on">
						<div class="ar_btm_dt">
							<ul class="dtlist clfix">
								<li><strong style="width: 35%;">종목명</strong><span style="width: 55%"></span></li>
								<li>
									<strong>사는수량(주)</strong>
									<div class="numchk">
										<input type="number" name="ea" value="0" step="10" min="0">
									</div>
								</li>
								<li>
									<strong>사는금액(원)</strong>
									<div class="numchk"></div>
								</li>
							</ul>
						</div>
					</div>
					<div class="btmtbl off">
						<div class="ar_btm_dt">
							<ul class="dtlist clfix">
								<li><strong style="width: 35%;">종목명</strong><span style="width: 55%"></span></li>
								<li>
									<strong>파는수량(주)</strong>
									<div class="numchk">
										<input type="number" name="ea" value="0" step="10" min="0">
									</div>
								</li>
								<li>
									<strong>파는금액(원)</strong>
									<div class="numchk"></div>
								</li>
							</ul>
						</div>
					</div>
					<a href="#" class="btn_bview"><span>결제(완료)</span></a>
				</div>
			</div>
		</div>
		<div class="box_sbbtm clfix">
			<div class="sbleftbt4">
				<div class="sb_tit">
					<h3 class="ic5">선택종목</h3>
					<div style="position: absolute; top: 3px; right: 0;">
						<span>0초</span>
						<span>(변경 예정 시각)</span>
					</div>
					<!-- <a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a> -->
				</div>
				<div class="box_tbllist">
					<table id="stock_table_01">
						<colgroup>
							<col style="width: 28%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
						</colgroup>
						<thead>
						<tr style=" height: 80px;">
							<th scope="col">매매내역</th>
							<th scope="col">현재가</th>
							<th scope="col">직전가</th>
							<th scope="col">등락율</th>
							<th scope="col">상세보기</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td class="align-l">삼성전자</td>
							<td>15,500</td>
							<td><img src="/dist/images/ico_mndw.png" alt=""> <span class="pt2">820</span></td>
							<td><em class="">+2.00%</em></td>
							<td><a href="#" class="und">상세보기</a></td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="sbrightbt3" style="margin-top: -10px;">
				<!--
				<div class="sb_tit">
					<h3 class="ic4">위탁금 현황</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
						<li><strong>고객자산</strong><span></span></li>
						<li><strong>투자금액</strong><span></span></li>
						<li><strong>잔고</strong><span></span></li>
					</ul>
				</div>
				-->
				<div class="sb_tit">
					<h3 class="ic4">구매내역</h3>
				</div>
				<div class="ar_btm_bx clfix">
					<div class="box_tbllist">
						<table id="stock_table_03">
							<!--
							<colgroup>
								<col style="width: 28%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
							</colgroup>
							-->
							<thead>
							<tr>
								<th scope="col">종목명</th>
								<th scope="col">구매수량</th>
								<th scope="col">산금액</th>
								<th scope="col">현재가</th>
								<th scope="col">수익금</th>
							</tr>
							</thead>
							<tbody>
							<tr style="display: none;">
								<td>엘지전자</td>
								<td>2,000</td>
								<td>3,000</td>
								<td>2,000</td>
								<td>2,000,000</td>
							</tr>
							</tbody>
							<tfoot>
							<tr class="last">
								<th scope="row">합계</th>
								<td colspan="4" class="cobg" style="width: 640px;">7,500</td>
							</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //content -->

<!-- 관심종목 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop9">
		<div class="box_titpop">
			<h2>관심종목 등록하기</h2>
			<div class="btn_close">
				<button type="button">닫기</button>
			</div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="box_tbllist ovtbl">
					<table id="">
						<!--
						<colgroup>
							<col style="width: 7%;">
							<col style="width: 33%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
						</colgroup>
						-->
						<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">종목명</th>
							<th scope="col">현재가</th>
							<th scope="col">직전가</th>
							<th scope="col">등락율</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td><input type="checkbox" name="favor" value=""></td>
							<td class="align-l"><a href="#"><label for="">삼성전자</label></a></td>
							<td>5,500</td>
							<td>
								<img src="/dist/images/ico_mndw.png" alt=""> <span class="pt2">820</span>
							</td>
							<td>
								<em class="">+2.00%</em>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="btn_popbtm">
			<span class="btn_blk"><a href="#">저장</a></span>
		</div>
	</div>

</div>
<!-- //관심종목 pop -->

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
				<em class="colblu">잡월드 뉴스</em><span class="l_pd">|</span><span></span>
			</div>
		</div>
	</div>
</div>
<!-- //뉴스정보 pop -->

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

<!-- 결과보기 pop -->
<div class="wrap_layerpop prt" style="display: none;">

	<div class="layerpop pop8">
		<div class="box_titpop2">
			<div style="text-align: right; padding: 30px;">
				testat
			</div>
			<h2>주식투자자<span>홍길동</span></h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop2">
			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg1" style="width: 30%;">종합현황</h3>
				</div>
				<div class="bx2col clfix">
					<div class="box_tblwrite tblview fl">
						<table>
							<colgroup>
								<col style="width: 40%;">
								<col style="width: 60%;">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">처음자산</th>
								<td>10,000,000원</td>
							</tr>
							<tr>
								<th scope="row">현재금액</th>
								<td>8,800,000원</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="box_tblwrite tblview fr">
						<table>
							<colgroup>
								<col style="width: 40%;">
								<col style="width: 60%;">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">투자금액</th>
								<td>8,800,000원</td>
							</tr>
							<tr>
								<th scope="row">수익률</th>
								<td>10%</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg2" style="width: 30%;">상세현황</h3>
				</div>
				<div class="bx2col sizhg clfix">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 20%;">
								<col style="width: 20%;">
								<col style="width: 20%;">
								<col style="width: 20%;">
								<col style="width: 20%;">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">종목명</th>
								<th scope="col">수량</th>
								<th scope="col">산 금액</th>
								<th scope="col">판 금액</th>
								<th scope="col">수익금</th>
							</tr>
							</thead>
							<tbody>
							<tr style="display: none;">
								<td>삼성전자</td>
								<td>10,000</td>
								<td>10,000</td>
								<td>10,000</td>
								<td>10,000</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
		<div class="btn_popbtm mt10 pb0">
			<span class="btn_print"><a href="#">인쇄</a></span>
		</div>
		<div class="bg_popbtm">&nbsp;</div>
	</div>

</div>
<!-- //결과보기 pop -->

<!-- 신규 기업정보 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop18">
		<div class="box_titpop">
			<div>
				<span class="my_h4" style="color: #fff; font-size: 1.625em; font-weight: normal;">삼성전자</span>
				<span class="my_h5" style="margin-left: 15px;">test</span>
				<span class="my_h5_02" style="margin-left: 15px;">test</span>
			</div>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="lftpols1">
					<div class="numkk">
						<strong>125,000</strong>
						<span class="pt2 colblu">
							<img src="/dist/images/ico_mndw.png" alt="">
						</span>
						<span style="margin-left: -20px;">82000</span>
						<em>-8.88%</em>
					</div>
					<div class="bx_innm clfix">
						<ul>
							<li class="clfix"><strong>- 종목코드 :</strong><span>009863</span></li>
							<li class="clfix"><strong>- 최고가 :</strong><span>129,000</span></li>
							<li class="clfix"><strong>- 최저가 :</strong><span>129,000</span></li>
							<li class="clfix"><strong>- 신용정보 :</strong><span>BBB</span></li>
						</ul>
					</div>
					<div class="chrt" style="margin-top: 50px;">
						<div class="chartpd" style="width: 540px; height: 350px; margin: auto">
							<canvas id="chart_12" width="540" height="350"></canvas>
						</div>
						<div style="text-align: center;">연간 차트</div>
					</div>
				</div>
				<div class="lftpols2">
					<div class="bx_innm1" style="margin-top: -10px;">
						<h1 style="font-size: 1.5em;">종목뉴스</h1>
						<ul>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
							<li><a href="#" class="ellipsis">공시정보 뉴스 표시 부분</a></li>
						</ul>
					</div>
					<div class="chrt" style="margin-top: 40px;">
						<div class="chartpd" style="width: 540px; height: 350px; margin: auto">
							<canvas id="chart_11" width="540" height="350"></canvas>
						</div>
						<div style="text-align: center;">실시간 차트</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- //신규 기업정보 pop -->

</body>
</html>