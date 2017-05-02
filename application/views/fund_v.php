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
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/main/fund.js"></script>

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
		<h2>펀드상품개발</h2>
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
					<h3 class="ic1">내가 만든 펀드</h3>
					<a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a>
				</div>
				<div class="box_tbllist" style="overflow-y: auto; height: 183px;">
					<table>
						<colgroup>
							<col style="width: 25%;">
							<col style="width: 25%;">
							<col style="width: 17%; background-color: darkgray">
							<col style="width: 17%; background-color: darkgray">
							<col style="width: 16%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">펀드명</th>
							<th scope="col">펀드규모</th>
							<th scope="col" style="background-color: darkgray">기준가</th>
							<th scope="col" style="background-color: darkgray">평가금액</th>
							<th scope="col">예상 수익률</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td class="align-l"><button type="button">잡워드 직업체험 펀드</button></td>
							<td>10,000,000</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						</tbody>
					</table>
					<div style="margin-top: 20px; display: none;">
						<h3 class="ic4" style="text-align: center; font-size: 30px; color: #0000ff">
							아직 만들어진 펀드가 없어요. <br>
							위에 [+] 버튼을 눌러 펀드를 만들어 주세요.
						</h3>
					</div>
				</div>
				<div class="ar_btm_dt">
					<ul class="dtlist clfix">
						<li class="mb10"><strong>펀드명</strong><span></span></li>
						<li class="mb10"><strong>만든 날짜</strong><span></span></li>
						<li><strong>총 금액</strong><span></span></li>
						<li><strong>예상 수익률</strong><span></span></li>
					</ul>
				</div>
			</div>
			<div class="sbright">
				<div class="sb_tit">
					<h3 class="ic2">펀드 투자 종목</h3>
					<a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a>
				</div>
				<div class="box_tbllist" style="overflow-y: auto; height: 363px;">
					<table>
						<colgroup>
							<col style="width: 22%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 22%; background-color: darkgray;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">종목명</th>
							<th scope="col">현재가</th>
							<th scope="col">전일대비</th>
							<th scope="col">등락율</th>
							<th scope="col" style="background-color: darkgray;">정정/취소</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td class="align-l">삼성전자</td>
							<td>5,500</td>
							<td><img src="/dist/images/ico_mndw.png" alt=""> <span class="pt2">820</span></td>
							<td><em class="">+2.00%</em></td>
							<td><a href="#" class="und">클릭하세요</a></td>
						</tr>
						</tbody>
					</table>
					<div style="margin-top: 20px; display: none;">
						<h3 class="ic4" style="text-align: center; font-size: 30px; color: #0000ff">
							아직 선택된 종목이 없어요. <br>
							위에 [+] 버튼을 눌러 종목을 선택해 주세요.
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="box_sbbtm clfix">
			<div class="sbleftbt">
				<div class="sb_tit">
					<h3 class="ic3">이시각 증시</h3>
				</div>
				<div class="ar_btm_news">
					<h4 class="sb_bg">이 시각<br>주요뉴스</h4>
					<ul class="dtlist">
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
					</ul>
				</div>
				<div class="ar_btm_pt">
					<h4 class="sb_bg">종합지수</h4>
					<div class="pt_list">
						<ul>
							<li class="down"><strong>KOSDAQ</strong><div><span class="pt1">600.73</span><span class="pt2"><img src="/dist/images/ico_mndw.png" alt="">820</span></div><em class="per">1.35%</em></li>
							<li class="down"><strong>KOSPI</strong><div><span class="pt1">2000.77</span><span class="pt2"><img src="/dist/images/ico_mndw.png" alt="">22.22</span></div><em class="per">1.35%</em></li>
							<li class="up"><strong>KOSPI200</strong><div><span class="pt1">270.77</span><span class="pt2"><img src="/dist/images/ico_mnup.png" alt="">2.88</span></div><em class="per">1.35%</em></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="sbrightbt">
				<div class="sb_tit">
					<h3 class="ic4">펀드 예상  손익</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
						<li style="background-color: darkgray;"><strong>매수단가</strong><span>10,000</span></li>
						<li style="background-color: darkgray;"><strong>매수수량</strong><span>200</span></li>
						<li>
							<strong class="txtlo">예상보유기간(년)</strong>
							<select name="FUND_MM">
								<option value="3">3</option>
								<option value="12">12</option>
								<option value="36">36</option>
							</select>
						</li>
					</ul>
					<a href="#" class="btn_ckcof">적용</a>
				</div>
				<div class="ar_btm_bx clfix">
					<div class="leftar">
						<div class="box_tbllist">
							<table style="background-color: darkgray;">
								<colgroup>
									<col style="width: 25%;">
									<col style="width: 25%;">
									<col style="width: 25%;">
									<col style="width: 25%;">
								</colgroup>
								<thead>
								<tr>
									<th scope="col" style="background-color: darkgray;">보유기간</th>
									<th scope="col" style="background-color: darkgray;">매도금액</th>
									<th scope="col" style="background-color: darkgray;">순이익</th>
									<th scope="col" style="background-color: darkgray;">수익률</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td class="align-l">36 개월</td>
									<td>2,000,000</td>
									<td>2,000,000</td>
									<td>100.00%</td>
								</tr>
								</tbody>
							</table>
						</div>
						<a href="#" class="btn_bview"><span>전체 수익률 보기</span></a>
					</div>
					<div class="rightar">
						<h4 class="sb_bg">펀드 투자<br>정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix">
								<li>
									<strong class="non">&nbsp;</strong>
									<span>투자금</span>
									<span>수익금</span>
								</li>
								<li>
									<strong>투자자 A</strong>
									<input type="text">
									<input type="text">
								</li>
								<li>
									<strong>투자자 B</strong>
									<input type="text">
									<input type="text">
								</li>
								<li>
									<strong>투자자 C</strong>
									<input type="text">
									<input type="text">
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
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

<!-- 펀드 만들기 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop6">
		<div class="box_titpop">
			<h2>펀드 투자금 확인</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop">
			<div class="contpdd">
				<div class="box_tblwrite">
					<table>
						<colgroup>
							<col style="width: 35%;">
							<col style="width: 65%;">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">투자자 A</th>
							<td><input type="text" value="10,000" class="align-r" readonly></td>
						</tr>
						<tr>
							<th scope="row">투자자 B</th>
							<td><input type="text" value="10,000" class="align-r" readonly></td>
						</tr>
						<tr>
							<th scope="row">투자자 C</th>
							<td><input type="text" value="10,000" class="align-r" readonly></td>
						</tr>
						<tr>
							<th scope="row">총 펀드금액</th>
							<td><input type="text" value="10,000" class="align-r" readonly></td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- <div class="btn_popbtm">
			<span class="btn_blk"><a href="">저장</a></span>
		</div> -->
	</div>

	<div class="layerpop pop7">
		<form>
			<div class="box_titpop">
				<h2>펀드 만들기</h2>
				<div class="btn_close"><button type="button">닫기</button></div>
			</div>
			<div class="box_contpop">
				<div class="contpdd">
					<div class="box_tblwrite">
						<table>
							<colgroup>
								<col style="width: 25%;">
								<col style="width: 15%;">
								<col style="width: 25%;">
								<col style="width: 35%;">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">펀드명</th>
								<td colspan="3"><input type="text" value="" required></td>
							</tr>
							<tr>
								<th scope="row">펀드 운영 개월</th>
								<td>
									<select name="">
										<option>36</option>
										<option>12</option>
										<option>3</option>
									</select>
								</td>
								<th scope="row">총 펀드금액</th>
								<td>
									<input type="text" value="10,000" class="align-r" readonly>
								</td>
							</tr>
							<tr>
								<th scope="row">투자할 비율 %</th>
								<td>
									<select name="" required>
										<option value="">비율</option>
									</select>
								</td>
								<th scope="row">투자금액</th>
								<td>
									<input type="text" value="" class="align-r" readonly required>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="btn_popbtm">
				<span class="btn_blk"><button type="submit">저장</button></span>
			</div>
	</div>
		</form>
</div>
<!-- // 펀드 만들기 pop -->

<!-- 펀드 투자 종목 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop5">
		<div class="box_titpop">
			<h2>펀드 투자 종목 구성</h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="area_sbptit clfix">
			<h3 class="poph3bg">펀드명</h3>
			<span>잡 월드 직업 체험 펀드</span>
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
							<td><input type="checkbox" name="favor"></td>
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
<!-- // 펀드 투자 종목 pop -->

<!-- 수익률 보기 pop -->
<div class="wrap_layerpop" style="display: none;">

	<div class="layerpop pop8">
		<div class="box_titpop2">
			<h2>펀드매니저<span>홍길동</span></h2>
			<div class="btn_close"><button type="button">닫기</button></div>
		</div>
		<div class="box_contpop2">
			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg1">펀드명</h3>
					<span>잡 월드 직업 체험 펀드</span>
				</div>
				<div class="ar_btm_dtt clfix">
					<div class="dtts">
						<h4 class="titpb1">펀드정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix">
								<li>
									<strong>보유기간</strong>
									<input type="text" value="00" class="align-r"><span>개월</span>
								</li>
								<li>
									<strong>수익률</strong>
									<input type="text" value="00" class="align-r"><span>%</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts1">
						<span class="bgdtt1"><img src="/dist/images/ico_pops3.gif" alt=""></span>
						<h4 class="titpb1">투자원금</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 메니저 수익률 00%  수익금 00,000원</p>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg2">펀드명</h3>
					<span>잡 월드 직업 체험 펀드</span>
				</div>
				<div class="ar_btm_dtt clfix">
					<div class="dtts">
						<h4 class="titpb1">펀드정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix">
								<li>
									<strong>보유기간</strong>
									<input type="text" value="00" class="align-r"><span>개월</span>
								</li>
								<li>
									<strong>수익률</strong>
									<input type="text" value="00" class="align-r"><span>%</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts1">
						<span class="bgdtt1"><img src="/dist/images/ico_pops3.gif" alt=""></span>
						<h4 class="titpb1">투자원금</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 메니저 수익률 00%  수익금 00,000원</p>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg3">펀드명</h3>
					<span>잡 월드 직업 체험 펀드</span>
				</div>
				<div class="ar_btm_dtt clfix">
					<div class="dtts">
						<h4 class="titpb1">펀드정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix">
								<li>
									<strong>보유기간</strong>
									<input type="text" value="00" class="align-r"><span>개월</span>
								</li>
								<li>
									<strong>수익률</strong>
									<input type="text" value="00" class="align-r"><span>%</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts1">
						<span class="bgdtt1"><img src="/dist/images/ico_pops3.gif" alt=""></span>
						<h4 class="titpb1">투자원금</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong>투자자A</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자B</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong>투자자C</strong>
									<input type="text" value="00" class="align-r">
								</li>
								<li>
									<strong class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 메니저 수익률 00%  수익금 00,000원</p>
			</div>
		</div>
		<div class="btn_popbtm mt10 pb0">
			<span class="btn_print"><a href="">인쇄</a></span>
		</div>
		<div class="bg_popbtm">&nbsp;</div>
	</div>

</div>
<!-- //수익률 보기 pop -->

</body>
</html>