<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>드림증권 투자시스템</title>
	<link rel="stylesheet" type="text/css" href="/dist/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/layout.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/content.css" />
	<link rel="stylesheet" type="text/css" href="/dist/css/print_fund.css"/>

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
			<div class="sbleft sbleft3">
				<div class="sb_tit">
					<h3 class="ic1">내가 만든 펀드</h3>
					<a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a>
				</div>
				<div class="box_tbllist" style="overflow-y: auto; height: 330px;">
					<table>
						<colgroup>
							<col style="width: 40%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
							<col style="width: 20%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">펀드명</th>
							<th scope="col">펀드규모(원)</th>
							<th scope="col">수익률(%)</th>
							<th scope="col">보유기간(개월)</th>
						</tr>
						</thead>
						<tbody>
						<tr style="display: none;">
							<td class="align-l"><button type="button">잡워드 직업체험 펀드</button></td>
							<td>10,000,000</td>
							<td></td>
							<td>
								<select style="height: 40px; width: 60%; background-color: #F8F1E1; float: right;">
								</select>
							</td>
						</tr>
						</tbody>
					</table>
					<div style="margin-top: 20px; display: none;">
						<h3 class="ic4" style="text-align: center; font-size: 30px; color: #0000ff">
							위에 [+] 버튼을 눌러 펀드를 만들어 주세요.
						</h3>
					</div>
				</div>
				<div class="ar_btm_dt">
					<ul class="dtlist clfix">
						<li class="mb10"><strong>펀드명</strong><span></span></li>
						<li class="mb10"><strong>만든 날짜</strong><span></span></li>
						<li><strong>총 금액(원)</strong><span></span></li>
						<li><strong>수익률(%)</strong><span></span></li>
					</ul>
				</div>
			</div>
			<div class="sbright">
				<div class="sb_tit">
					<h3 class="ic2">펀드 투자 종목</h3>
					<a href="#" class="btn_plss"><img src="/dist/images/ico_sbpls.gif" alt=""></a>
				</div>
				<div class="box_tbllist" style="border: 1px solid #CCC; border-top: 1px solid #000000">
					<table>
						<colgroup>
							<col style="width: 32%;">
							<col style="width: 24%;">
							<col style="width: 24%;">
							<col style="width: 18%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">종목명</th>
							<th scope="col">현재가(원)</th>
							<th scope="col">전월대비(원)</th>
							<th scope="col">등락율(%)</th>
						</tr>
						</thead>
					</table>
					<div style="overflow-y: auto; height: 442px;">
						<table>
							<colgroup>
								<col style="width: 32%;">
								<col style="width: 24%;">
								<col style="width: 24%;">
								<col style="width: 18%;">
							</colgroup>
							<tbody>
							<tr style="display: none;">
								<td class="align-l">삼성전자</td>
								<td>5,500</td>
								<td><img src="/dist/images/ico_mndw.png" alt=""> <span class="pt2">820</span></td>
								<td><em class="">+2.00%</em></td>
							</tr>
							</tbody>
						</table>
					</div>
					<div style="margin-top: -320px; display: none; height: 320px;">
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
				<!--
				<div class="ar_btm_news">
					<h4 class="sb_bg">이 시각<br>주요뉴스</h4>
					<ul class="dtlist">
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
						<li><a href="#"><strong></strong><span></span></a></li>
					</ul>
				</div>
				-->
				<div class="ar_btm_pt" style="margin-top: 0px;">
					<h4 class="sb_bg">종합지수</h4>
					<div class="pt_list">
						<ul>
							<li class="down"><strong>KOSDAQ</strong><div><span class="pt1">600.73</span><span class="pt2"><img src="/dist/images/ico_mndw.png" alt="">820</span></div>
								<em class="per" style="font-size: 0.8em; text-align: right;">1.35%</em>
							</li>
							<li class="down"><strong>KOSPI</strong><div><span class="pt1">2000.77</span><span class="pt2"><img src="/dist/images/ico_mndw.png" alt="">22.22</span></div>
								<em class="per" style="font-size: 0.8em; text-align: right;">1.35%</em>
							</li>
							<li class="up"><strong>KOSPI200</strong><div><span class="pt1">270.77</span><span class="pt2"><img src="/dist/images/ico_mnup.png" alt="">2.88</span></div>
								<em class="per" style="font-size: 0.8em; text-align: right;">1.35%</em>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="sbrightbt">
				<!--
				<div class="sb_tit">
					<h3 class="ic4">펀드 예상  손익</h3>
				</div>
				<div class="ar_btm_sel">
					<ul class="dtlist clfix">
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
				-->
				<div class="ar_btm_sel" style="border: 0px; padding: 0px 40px; margin-top: 130px;">
					<a href="#" class="btn_bview" style="margin-top: 10px; cursor: not-allowed;">
						<span>전체 수익률 보기</span>
					</a>
				</div>
			</div>
			<div class="sbrightbt" style="margin-top: -220px;">
				<div class="ar_btm_bx clfix">
					<div class="rightar">
						<h4 class="sb_bg" style="margin-right: 0px;">펀드 투자<br>정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix" style="width: 110%;">
								<li>
									<strong class="non">&nbsp;</strong>
									<span>투자금</span>
									<span>수익금</span>
								</li>
								<li>
									<strong>투자자 A</strong>
									<input type="text" style="width: 35%; font-size: 0.9em; text-align: right;">
									<input type="text" style="width: 29%; font-size: 0.9em; text-align: right;">
								</li>
								<li>
									<strong>투자자 B</strong>
									<input type="text" style="width: 35%; font-size: 0.9em; text-align: right;">
									<input type="text" style="width: 29%; font-size: 0.9em; text-align: right;">
								</li>
								<li>
									<strong>투자자 C</strong>
									<input type="text" style="width: 35%; font-size: 0.9em; text-align: right;">
									<input type="text" style="width: 29%; font-size: 0.9em; text-align: right;">
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
							<th scope="row">총 펀드금액(원)</th>
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
				<div class="btn_close">
					<button type="button">닫기</button>
				</div>
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
								<td colspan="3"><input type="text" value="" placeholder="잡월드증권투자펀드" required></td>
							</tr>
							<tr>
								<th scope="row">운영기간(개월)</th>
								<td>
									<select name="">

									</select>
								</td>
								<th scope="row">총 펀드금액(원)</th>
								<td>
									<input type="text" value="10,000" class="align-r" readonly>
								</td>
							</tr>
							<tr>
								<th scope="row">투자할 비율(%)</th>
								<td>
									<select name="" required>
										<option value="">비율</option>
									</select>
								</td>
								<th scope="row">투자금액(원)</th>
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
		</form>
	</div>
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
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 18%;">
							<col style="width: 15%;">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">종목명</th>
							<th scope="col">현재가(원)</th>
							<th scope="col">전월대비(원)</th>
							<th scope="col">등락율(%)</th>
							<th scope="col">상세보기</th>
						</tr>
						</thead>
					</table>
					<div style="height: 460px; overflow-y: auto;">
						<table>
							<colgroup>
								<col style="width: 7%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 18%;">
								<col style="width: 15%;">
							</colgroup>
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
								<td><a href="#" class="und">상세보기</a></td>
							</tr>
							</tbody>
						</table>
					</div>
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
		<div class="box_contpop2" style="overflow-y: auto; height: 670px;">
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
									<strong style="width: 50%;">보유기간</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;">
									<span style="width: 20%;">개월</span>
								</li>
								<li>
									<strong style="width: 50%;">수익률</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;"><span>%</span>
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
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong class="back-non" style="width: 45%">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%" class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 매니저 수익률 00%  수익금 00,000원</p>
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
									<strong style="width: 50%;">보유기간</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;">
									<span style="width: 20%;">개월</span>
								</li>
								<li>
									<strong style="width: 50%;">수익률</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;"><span>%</span>
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
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 35%">
								</li>
								<li>
									<strong class="back-non" style="width: 45%">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%" class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 매니저 수익률 00%  수익금 00,000원</p>
			</div>

			<div class="pb_view clfix">
				<div class="pb_tit">
					<h3 class="sb_bg bg3">펀드명</h3>
					<span></span>
				</div>
				<div class="ar_btm_dtt clfix">
					<div class="dtts">
						<h4 class="titpb1">펀드정보</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix">
								<li>
									<strong style="width: 50%;">보유기간</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;">
									<span style="width: 20%;">개월</span>
								</li>
								<li>
									<strong style="width: 50%;">수익률</strong>
									<input type="text" value="00" class="align-r" style="width: 20%;"><span>%</span>
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
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong class="back-non" style="width: 45%">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
					<div class="dtts2">
						<h4 class="titpb2">수익금액</h4>
						<div class="ar_btm_inp">
							<ul class="dtlist clfix inp100">
								<li>
									<strong style="width: 45%">투자자A</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자B</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%">투자자C</strong>
									<input type="text" value="00" class="align-r" style="width: 45%">
								</li>
								<li>
									<strong style="width: 45%" class="back-non">합계</strong>
									<input type="text" value="00" class="align-r colred" style="width: 45%">
								</li>
							</ul>
						</div>
					</div>
				</div>
				<p class="pem">펀드 매니저 수익률 0%  수익금 0원</p>
			</div>
		</div>
		<div class="box_btcc">
			<div class="bxlls clfix">
				<div class="fl">
					<strong style="width: 40%">총수익률(%)</strong>
					<span style="width: 50%">00%</span>
				</div>
				<div class="fr">
					<strong style="width: 40%">총수익금(원)</strong>
					<span style="width: 50%; margin-left: -50px;">00%</span>
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