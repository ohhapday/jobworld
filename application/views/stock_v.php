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
			<div class="sbleft2">
				<div class="sb_tit">
					<h3 class="ic2">실시간 증권 정보</h3>
				</div>
				<div class="bx_tablist">
					<div class="tab">
						<div class="tabmenu m1 on"><a href="#" class="btn_tb">증권뉴스</a></div>
						<div class="tabmenu m2"><a href="#" class="btn_tb">애널리스트 보고서</a></div>
					</div>
					<div class="btmtbl">
						<div class="ar_btm_news">
							<h4 class="sb_bg">이 시각<br>주요뉴스</h4>
							<span class="thum"><img src="/dist/images/thum_ex.gif" alt=""></span>
							<ul class="dtlist">
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
							</ul>
						</div>
					</div>
					<div class="btmtbl" style="display: none">
						<div class="ar_btm_news">
							<h4 class="sb_bg">이 시각<br>보고서</h4>
							<span class="thum"><img src="/dist/images/thum_ex.gif" alt=""></span>
							<ul class="dtlist">
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
								<li><a href="#"><strong></strong><span></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="sbright2">
				<div class="sb_tit">
					<h3 class="ic3">주식 매매</h3>
				</div>
				<div class="bx_tablist">
					<div class="tab">
						<div class="tabmenu m1 on"><a href="#" class="btn_tb">사기(매수)</a></div>
						<div class="tabmenu m2"><a href="#" class="btn_tb">팔기(매도)</a></div>
					</div>
					<div class="btmtbl">
						<div class="ar_btm_dt">
							<ul class="dtlist clfix">
								<li><strong>품목명</strong><span></span></li>
								<li>
									<strong>사는수량</strong>
									<div class="numchk">
										<input type="number" name="ea" value="1">
									</div>
								</li>
								<li>
									<strong>사는금액</strong>
									<div class="numchk">
										<input type="number" name="cost" value="0" readonly>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="btmtbl" style="display: none;">
						<div class="ar_btm_dt">
							<ul class="dtlist clfix">
								<li><strong>품목명</strong><span></span></li>
								<li>
									<strong>파는수량</strong>
									<div class="numchk">
										<input type="number" name="ea" value="1">
									</div>
								</li>
								<li>
									<strong>파는금액</strong>
									<div class="numchk">
										<input type="number" name="cost" value="0" readonly>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<a href="" class="btn_bview"><span>결제(완료)</span></a>
				</div>
			</div>
		</div>
		<div class="box_sbbtm clfix">
			<div class="sbleftbt3">
				<div class="sb_tit">
					<h3 class="ic5">관심종목</h3>
					<a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a>
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
							<th scope="col">등락율</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td class="align-l">삼성전자</td>
							<td>15,500</td>
							<td><span class="pt2 colblu"><img src="/dist/images/ico_mndw.png" alt="">820</span></td>
							<td><em class="colblu">+2.00%</em></td>
						</tr>
						<tr>
							<td class="align-l">엘지전자</td>
							<td>25,500</td>
							<td><span class="pt2 colred"><img src="/dist/images/ico_mnup.png" alt="">820</span></td>
							<td><em class="colred">-2.00%</em></td>
						</tr>
						<tr>
							<td class="align-l">현대자동차</td>
							<td>5,500</td>
							<td>100</td>
							<td><em>0%</em></td>
						</tr>
						<tr>
							<td class="align-l">삼성전자</td>
							<td>35,500</td>
							<td><span class="pt2 colblu"><img src="/dist/images/ico_mndw.png" alt="">820</span></td>
							<td><em class="colblu">+2.00%</em></td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="da_add clfix">
					<button type="button" class="btn_adgre">공시정보</button>
					<button type="button" class="btn_adgre2">주가그래프</button>
				</div>
			</div>
			<div class="sbrightbt3">
				<div class="sb_tit">
					<h3 class="ic4">잔고 보유 현황</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
						<li><strong>고객자산</strong><span>10,000,000</span></li>
						<li><strong>투자금액</strong><span>10,000,000</span></li>
						<li><strong>잔고</strong><span>10,000,000</span></li>
					</ul>
				</div>
				<div class="ar_btm_bx clfix">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 28%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">종목명</th>
								<th scope="col">구매수량</th>
								<th scope="col">산금액</th>
								<th scope="col">주당가격</th>
								<th scope="col">수익금</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td class="align-l">엘지전자</td>
								<td>2,000</td>
								<td>3,000</td>
								<td>2,000</td>
								<td>2,000,000</td>
							</tr>
							<tr>
								<td class="align-l">현대전자</td>
								<td>2,000</td>
								<td>4,000</td>
								<td class="colred">-2,000</td>
								<td>2,000,000</td>
							</tr>
							<tr>
								<td class="align-l">삼성전자</td>
								<td>2,000</td>
								<td>5,000</td>
								<td>2,000</td>
								<td>&nbsp;</td>
							</tr>
							<tr class="last">
								<th scope="row">합계</th>
								<td colspan="4" class="cobg">7,500</td>
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
					<table>
						<colgroup>
							<col style="width: 7%;">
							<col style="width: 33%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">종목명</th>
							<th scope="col">현재가</th>
							<th scope="col">전일대비</th>
							<th scope="col">등락율</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<!-- <input type="radio" name="chdate" id="chdate1" checked><label for="chdate1">만기</label> -->
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
						<!--
						<tr>
							<td><input type="checkbox" name="favor" value="" id="aaaaaa"></td>
							<td class="align-l"><a href="#"><label for="aaaaaa">삼성전자</label></a></td>
							<td>5,500</td>
							<td><span class="pt2 colred"><img src="/dist/images/ico_mnup.png" alt="">820</span></td>
							<td><em class="colred">-2.00%</em></td>
						</tr>
						-->
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="btn_popbtm">
			<span class="btn_blk"><a href="">저장</a></span>
		</div>
	</div>

</div>
<!-- //관심종목 pop -->

</body>
</html>