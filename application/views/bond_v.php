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
				<span class="member"><strong>직원명</strong>님이 로그인하셨습니다.</span>
				<span class="time">10:10:10</span>
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
						<tr>
							<td class="align-l"><button type="button">국고채(1년)</button></td>
							<td>10,000,000</td>
							<td>10,000</td>
							<td>3%</td>
							<td>국채</td>
							<td><a href="" class="und">상세보기</a></td>
						</tr>
						<tr>
							<td class="align-l"><button type="button">국고채(1년)</button></td>
							<td>10,000,000</td>
							<td>10,000</td>
							<td>3%</td>
							<td>국채</td>
							<td><a href="" class="und">상세보기</a></td>
						</tr>
						<tr>
							<td class="align-l"><button type="button">국고채(1년)</button></td>
							<td>10,000,000</td>
							<td>10,000</td>
							<td>3%</td>
							<td>국채</td>
							<td><a href="" class="und">상세보기</a></td>
						</tr>
						<tr>
							<td class="align-l"><button type="button">국고채(1년)</button></td>
							<td>10,000,000</td>
							<td>10,000</td>
							<td>3%</td>
							<td>국채</td>
							<td><a href="" class="und">상세보기</a></td>
						</tr>
						<tr>
							<td class="align-l"><button type="button">국고채(1년)</button></td>
							<td>10,000,000</td>
							<td>10,000</td>
							<td>3%</td>
							<td>국채</td>
							<td><a href="" class="und">상세보기</a></td>
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
						<div class="chart"><img src="/dist/images/chart_sb1.gif" alt=""></div>
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
					<div class="dttit"><strong>채권명</strong><span>국고채(3년)</span></div>
					<a href="#" class="btn_buyc">채권사기</a>
					<ul class="dtlist clfix">
						<li class="mb10"><strong>사는단가</strong><span class="align-r">10,000</span></li>
						<li class="mb10"><strong>사는수량</strong><span>100</span></li>
						<li class="mb10"><strong>사는금액</strong><span class="align-r">1,000,000</span></li>
						<li class="mb10"><strong>만기일자</strong><span>2020-03-09</span></li>
						<li class="mb10"><strong>사는날짜</strong><span>2017-03-30</span></li>
						<li class="mb10"><strong class="colred">수익금</strong><span class="align-r">1,020,000</span></li>
						<li><strong>만기수익률</strong><span>2%</span></li>
					</ul>
				</div>
			</div>
			<div class="sbrightbt2">
				<div class="box_bt_rdo clfix">
					<div class="ar_rdol">
						<input type="radio" name="chdate" id="chdate1" checked><label for="chdate1">만기</label>
						<input type="radio" name="chdate" id="chdate2"><label for="chdate2">중도해지</label><input type="text" value="2017-10-10">
					</div>
					<a href="" class="btn_bview"><span>예상 수익률 보기</span></a>
				</div>
				<div class="ar_btm_bx clfix">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 40%;">
								<col style="width: 30%;">
								<col style="width: 30%;">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">보유년수</th>
								<th scope="col">예상순이익</th>
								<th scope="col">수익률</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td class="align-l"><span>2017-03-31</span> <span class="ml10">2017-03-31</span></td>
								<td>2,000,000</td>
								<td>100.00%</td>
							</tr>
							<tr>
								<td class="align-l"><span>2017-03-31</span> <span class="ml10">2017-03-31</span></td>
								<td>2,000,000</td>
								<td>100.00%</td>
							</tr>
							<tr>
								<td class="align-l"><span>2017-03-31</span> <span class="ml10">2017-03-31</span></td>
								<td>2,000,000</td>
								<td>100.00%</td>
							</tr>
							<tr class="last">
								<th scope="row">예상 수익률</th>
								<td><strong>7,500</strong></td>
								<td><strong>100.00%</strong></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //content -->

</body>
</html>