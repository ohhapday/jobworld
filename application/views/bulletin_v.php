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
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/bulletin.js"></script>

</head>
<body>

<div id="skip">
	<ul>
		<li><a href="#container">본문 바로가기</a></li>
		<li><a href="#gnb">주 메뉴 바로가기</a></li>
	</ul>
</div>

<!-- content -->
<div id="container">
	<div id="content" class="clfix">
		<div class="box_sbtop clfix">
			<div class="sbleft3">
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
			<div class="sbright3">
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
										<img src="/dist/images/ico_mndw2.png" alt="">820
									</span>
								</div>
								<em class="per">1.35%</em>
							</li>
							<li class="down">
								<strong>KOSPI</strong>
								<div>
									<span class="pt1">2000.77</span><span class="pt2">
										<img src="/dist/images/ico_mndw2.png" alt="">22.22
									</span>
								</div>
								<em class="per">1.35%</em>
							</li>
							<li class="up">
								<strong>KOSPI200</strong>
								<div>
									<span class="pt1">270.77</span>
									<span class="pt2">
										<img src="/dist/images/ico_mnup2.png" alt="">2.88
									</span>
								</div>
								<em class="per">1.35%</em>
							</li>
						</ul>
					</div>
				</div>
				<div class="sb_tit sb_tit2 mt20">
					<h3 class="ic3">종목별 주식 그래프</h3>
				</div>
				<div class="pt_tit">

				</div>
				<div class="chrt">
					<canvas id="chart_11" width="850" height="450"></canvas>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //content -->

</body>
</html>