<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/layout.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/content.css" />

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
				<div class="box_tbllist" style="overflow-y: auto; height: 360px;">
					<table>
						<colgroup>
							<col style="width: 25%;">
							<col style="width: 20%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 13%;">
							<col style="width: 12%;">
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
			<div class="sbright">
				<div class="sb_tit">
					<h3 class="ic2">채권 시황</h3>
				</div>
				<div class="bx_tablist">
					<div class="tab">
						<div class="tabmenu m1 on"><a href="#" class="btn_tb">금리변동률</a></div>
						<div class="tabmenu m2"><a href="#" class="btn_tb">기업신용도공지</a></div>
					</div>
					<div class="btmtbl">
						<div class="chart" style="width: 600px; height: 300px; margin: auto">
							<canvas id="chart_01"></canvas>
						</div>
					</div>
					<div class="btmtbl" style="display: none;">
						<div class="box_tbllist">
							<table>
								<colgroup>
									<col style="width: 20%;">
									<col style="width: 50%;">
								</colgroup>
								<thead>
								<tr>
									<th scope="col">신용도</th>
									<th scope="col">정의</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>A</td>
									<td>메모 신용등급에 따른 내용</td>
								</tr>
								</tbody>
							</table>
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
					<a href="#" class="btn_buyc">채권구매</a>
					<ul class="dtlist clfix">
						<li class="mb10"><strong>구매단가</strong><span>0</span></li>
						<li class="mb10"><strong>구매수량</strong>
							<span>
								<input type="number" style="width: 50%" value="100" step="100" min="0">
							</span>
						</li>
						<li class="mb10"><strong>구매금액</strong><span>0</span></li>
						<li class="mb10"><strong>만기일자</strong><span></span></li>
						<li class="mb10"><strong>구매날짜</strong><span></span></li>
						<li class="mb10"><strong class="colred">수익금</strong><span>0</span></li>
						<li><strong>만기수익률</strong><span>0%</span></li>
					</ul>
				</div>
			</div>
			<div class="sbrightbt2">

				<div class="sb_tit">
					<h3 class="ic4">잔고 보유 현황</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
						<!-- <li><strong>고객자산</strong><span></span></li> -->
						<li style="width: 50%;"><strong>투자금액</strong><span></span></li>
						<li style="width: 50%;"><strong>잔고</strong><span></span></li>
					</ul>
				</div>

				<div class="ar_btm_bx clfix" style="overflow-y: auto; height: 250px;">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 40%;">
								<col style="width: 10%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">채권명</th>
								<th scope="col">수량</th>
								<th scope="col">산금액</th>
								<th scope="col">만기수익금</th>
							</tr>
							</thead>
							<tbody>
							<tr style="display: none;">
								<td class="align-l">국고채</td>
								<td>00</td>
								<td>2,000,000</td>
								<td>100.00%</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="box_bt_rdo clfix" style="margin-top: 10px;">
					<div class="ar_rdol">
						<input type="radio" name="chdate" id="chdate1" checked><label for="chdate1">만기</label>
						<input type="radio" name="chdate" id="chdate2"><label for="chdate2">중도해지</label>
						<input type="date" value="" style="width: 180px;">
					</div>
					<a href="#" class="btn_bview"><span>예상 수익률 보기</span></a>
				</div>

			</div>
		</div>
	</div>
</div>
<!-- //content -->

<!-- 채권 상세보기 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop10">
		<div class="box_titpop">
			<h2>채권 상세보기 화면</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="area_sbptit clfix">
			<h3 class="poph3bg2">채권명(종목명)</h3>
			<span>국고채(3년)</span>
		</div>
		<div class="box_contpop">
			<div class="box_tblwrite col2fl">
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
					</tbody>
				</table>
			</div>
			<div class="box_tblwrite col2fr">
				<table>
					<colgroup>
						<col style="width: 35%;">
						<col style="width: 65%;">
					</colgroup>
					<tbody>
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

</div>
<!-- //layer pop -->

</body>
</html>