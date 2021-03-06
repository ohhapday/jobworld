<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/layout.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/content.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/print.css"/>
	<link rel="stylesheet" type="text/css" href="/dist/css/content3.css" />

	<!--[if lt IE 9]>
	<script src="../js/html5shiv.js"></script>
	<![endif]-->

	<script src="/dist/js/require-config.js"></script>
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/bond.js"></script>

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
		<h2>채권 투자</h2>
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
			<div class="sbleft">
				<div class="sb_tit">
					<h3 class="ic1">채권 상품 목록</h3>
				</div>
				<div class="box_tbllist">
					<table>
						<colgroup>
							<col style="width: 25%;">
							<col style="width: 20%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 13%;">
							<col style="width: 16%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">채권명</th>
							<th scope="col">채권규모</th>
							<th scope="col">기준가</th>
							<th scope="col">수익률</th>
							<th scope="col">구분</th>
							<th scope="col">보기</th>
						</tr>
						</thead>
					</table>
					<div style="overflow-y: auto; height: 260px;">
						<table>
							<colgroup>
								<col style="width: 25%;">
								<col style="width: 20%;">
								<col style="width: 15%;">
								<col style="width: 15%;">
								<col style="width: 13%;">
								<col style="width: 12%;">
							</colgroup>
							<tbody>
							<tr style="display: none;">
								<td class="align-l" style="overflow:hidden; white-space:nowrap; text-overflow:ellipsis;"
									title="">
									<button type="button">국고채(1년)</button>
								</td>
								<td>10,000,000</td>
								<td>10,000</td>
								<td>3%</td>
								<td>국채</td>
								<td><a href="#" class="und">상세보기</a></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="sbright">
				<div class="sb_tit">
					<h3 class="ic2">금리 전망</h3>
				</div>
				<div class="bx_tablist">
					<!-- <div class="tab">
						<div class="tabmenu m1"><a href="#" class="btn_tb">금리 전망</a></div>
						<!-- <div class="tabmenu m2"><a href="#" class="btn_tb">기업신용도공지</a></div>
					</div>
					-->
					<div class="btmtbl" style="border-top: 1px solid #dbd5c6;">
						<div class="chart" style="width: 670px; height: 320px; margin: auto">
							<canvas id="chart_11" width="630" height="260" style="padding-top: 15px;"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box_sbbtm clfix">
			<div class="sbleftbt2">
				<div class="sb_tit">
					<h3 class="ic3">보유 채권 예상 손실/이익 보기</h3>
				</div>
				<div class="ar_btm_dt">
					<div class="dttit"><strong>채권명</strong><span></span></div>
					<a href="#" class="btn_buyc" style="margin-top: 15px;">채권구매</a>
					<ul class="dtlist clfix">
						<li class="mb30"><strong>구매단가</strong><span>0</span></li>
						<li class="mb30"><strong>구매수량</strong>
							<span>
								<input type="number" style="width: 50%" value="100" step="100" min="0">
							</span>
						</li>
						<li class="mb30"><strong>구매금액</strong><span>0</span></li>
						<li class="mb30"><strong>만기일자</strong><span></span></li>
						<li class="mb30"><strong>발행일자</strong><span></span></li>
						<li class="mb30"><strong class="colred">수익금</strong><span>0</span></li>
						<li><strong>만기수익률</strong><span>0%</span></li>
					</ul>
				</div>
			</div>
			<div class="sbrightbt2">

				<div class="sb_tit">
					<h3 class="ic4">잔고 보유 현황</h3>
				</div>
				<div class="ar_btm_sel" style="padding: 15px 40px 15px 40px;">
					<ul class="dtlist clfix">
						<!-- <li><strong>고객자산</strong><span></span></li> -->
						<li style="width: 50%;"><strong>투자금액</strong><span></span></li>
						<li style="width: 50%;"><strong>잔고</strong><span></span></li>
					</ul>
				</div>

				<div class="ar_btm_bx clfix" style="overflow-y: hidden; height: 250px;">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 30%;">
								<col style="width: 10%;">
								<col style="width: 10%;">
								<col style="width: 20%;">
								<col style="width: 20%;">
								<col style="width: 10%;">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">채권명</th>
								<th scope="col">수량</th>
								<th scope="col">만기(년)</th>
								<th scope="col">산금액</th>
								<th scope="col">만기수익금</th>
								<th scope="col">취소</th>
							</tr>
							</thead>
							<tbody>
							<tr style="display: none;">
								<td class="align-l" style="overflow:hidden; white-space:nowrap; text-overflow:ellipsis;">국고채</td>
								<td>00</td>
								<td>00</td>
								<td>2,000,000</td>
								<td>100.00%</td>
								<td>
									<a href="#" class="und">취소</a>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="box_bt_rdo clfix" style="margin-top: -10px;">
					<div class="ar_rdol" style="width: 100%; padding-top: 50px;">
						만기변경
						<select style="width: 180px; height: 40px; margin-left: 15px;">
							<option value="4">1년</option>
							<option value="12">3년</option>
							<option value="24">6년</option>
							<option value="48">만기</option>
						</select>
						<a href="#" class="btn_buyc" style="margin-top: 15px;">만기 변경</a>
					</div>
					<!-- <a href="#" class="btn_bview"><span>수익률 보기</span></a> -->
				</div>

			</div>
		</div>
	</div>
</div>
<!-- //content -->

<!-- 채권 상세보기 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop21">
		<div class="box_titpop">
			<h2>채권 상세보기 화면</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="area_sbptit clfix" style="width: 98%">
			<h3 class="poph3bg2" style="width: 30%">채권명(종목명)</h3>
			<span>국고채(3년)</span>
		</div>
		<div class="box_contpop">
			<div class="box_tblwrite col2fll">
				<table>
					<colgroup>
						<col style="width: 45%;">
						<col style="width: 55%;">
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">채권구분</th>
						<td class="pl20">국채</td>
					</tr>
					<tr>
						<th scope="row">표준코드</th>
						<td class="pl20">0300482828</td>
					</tr>
					<tr>
						<th scope="row">채권규모(발행금액)</th>
						<td class="pl20">200,000,000</td>
					</tr>
					<tr>
						<th scope="row">기준가격</th>
						<td class="pl20">10,00</td>
					</tr>
					<tr>
						<th scope="row">예상수익률</th>
						<td class="pl20">2%</td>
					</tr>
					<tr>
						<th scope="row">발행일</th>
						<td class="pl20">2017-05-02</td>
					</tr>
					<tr>
						<th scope="row">만기일</th>
						<td class="pl20">2017-05-02</td>
					</tr>
					<tr>
						<th scope="row">이자계산주기</th>
						<td class="pl20">3개월</td>
					</tr>
					<tr>
						<th scope="row">등록기관</th>
						<td class="pl20">한국은행</td>
					</tr>
					<tr>
						<th scope="row">지급기관</th>
						<td class="pl20">한국%</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="layerpop pop22">
		<div class="box_titpop">
			<h2>채권 가격 변동(예상) 그래프</h2>
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
<!-- //layer pop -->

<!-- 수익률 보기 pop -->
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
					<h3 class="sb_bg bg1">채권명</h3>
					<span></span>
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
								<th scope="row">보유기간</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익률</th>
								<td></td>
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
								<th scope="row">산 금액</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익금</th>
								<td></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg2">채권명</h3>
					<span></span>
				</div>
				<div class="bx2col clfix">
					<div class="box_tblwrite tblview fl">
						<table>
							<colgroup>
								<col style="width: 40%;">
								<col style="width: 66%;">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">보유기간</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익률</th>
								<td></td>
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
								<th scope="row">산 금액</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익금</th>
								<td></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg3">채권명</h3>
					<span></span>
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
								<th scope="row">보유기간</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익금</th>
								<td></td>
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
								<th scope="row">산 금액</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">수익률</th>
								<td></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="box_btcc">
				<h3>채권투자</h3>
				<div class="bxlls clfix">
					<div class="fl"><strong style="width: 40%">총수익률</strong><span style="width: 10%">00%</span></div>
					<div class="fr"><strong style="width: 40%">총수익금</strong><span style="width: 20%">00%</span></div>
				</div>
			</div>
		</div>
		<div class="btn_popbtm mt10 pb0">
			<span class="btn_print"><a href="#">인쇄</a></span>
		</div>
		<div class="bg_popbtm">&nbsp;</div>
	</div>

</div>
<!-- //수익률 보기 pop -->

<!-- 채권 상세보기 2 pop -->
<div class="wrap_layerpop" style="display: none;">
	<div class="layerpop pop10">
		<div class="box_titpop">
			<h2>채권 상세보기 화면</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="area_sbptit7 clfix">
			<h3 class="poph3bg2">채권명(종목명)</h3>
			<span>국고채(3년)</span>
		</div>
		<div class="area_sbptit8 clfix">
			<h3 class="poph3bg2">채권 가격 변동(예상) 그래프</h3>
		</div>

		<div class="box_contpop">
			<div class="box_tblwrite col2fl">
				<table>
					<colgroup>
						<col style="width: 35%;">
						<col style="width: 65%;">
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">채권구분</th>
						<td class="pl20">국채</td>
					</tr>
					<tr>
						<th scope="row">표준코드</th>
						<td class="pl20">0300482828</td>
					</tr>
					<tr>
						<th scope="row">채권규모(발행금액)</th>
						<td class="pl20">200,000,000</td>
					</tr>
					<tr>
						<th scope="row">기준가격</th>
						<td class="pl20">10,00</td>
					</tr>
					<tr>
						<th scope="row">예상수익률</th>
						<td class="pl20">2%</td>
					</tr>
					<tr>
						<th scope="row">발행일</th>
						<td class="pl20">2017-05-02</td>
					</tr>
					<tr>
						<th scope="row">만기일</th>
						<td class="pl20">2017-05-02</td>
					</tr>
					<tr>
						<th scope="row">이자계산주기</th>
						<td class="pl20">3개월</td>
					</tr>
					<tr>
						<th scope="row">등록기관</th>
						<td class="pl20">한국은행</td>
					</tr>
					<tr>
						<th scope="row">지급기관</th>
						<td class="pl20">한국%</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="contpdd7">
				<div class="chartpd" style="width: 800px; height: 600px; margin: auto">
					<canvas id="chart_20" width="800" height="600"></canvas>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- //layer pop -->

</body>
</html>