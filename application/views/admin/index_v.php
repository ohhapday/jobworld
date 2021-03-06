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
	    <script src="/dist/js/html5shiv.js"></script>
	<![endif]-->

	<script src="/dist/js/require-config.js"></script>
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/admin/main.js"></script>

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
		<h1><a href="#"><img src="/dist/images/logo_ad.png" alt="드림증권 투자시스템"></a></h1>
		<div class="area_mem">
			<span class="member"><strong>직원명</strong>님이 로그인하셨습니다.</span>
			<span class="time">10:10:10</span>
		</div>
	</div>
</header>
<!-- //header -->

<!-- content -->
<div id="container">
	<div id="content" class="clfix">
		<div class="box_sbleft clfix">
			<div class="sb_tit">
				<h3 class="ic1">로그인 및 체험자 정보</h3>
			</div>
			<div class="sbleftdat">
				<div class="box_tbllist col3 margnon">
					<table>
						<colgroup>
							<col style="width: 33%;">
							<col style="width: 33%;">
							<col style="width: 33%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">순번</th>
								<th scope="col">직원명</th>
								<th scope="col">남/여</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>남</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="box_tbllist col3">
					<table>
						<colgroup>
							<col style="width: 33%;">
							<col style="width: 33%;">
							<col style="width: 33%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">순번</th>
								<th scope="col">직원명</th>
								<th scope="col">남/여</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>남</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="box_tbllist col3">
					<table>
						<colgroup>
							<col style="width: 33%;">
							<col style="width: 33%;">
							<col style="width: 33%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">순번</th>
								<th scope="col">직원명</th>
								<th scope="col">남/여</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>남</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
							<tr>
								<td>2</td>
								<td>홍길동</td>
								<td>여</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="sb_tit">
				<h3 class="ic2">데이터 초기화</h3>
			</div>
			<div class="sbleftdat">
				<div class="btn_refresh"><a href="#"><img src="/dist/images/btn_refresh.png" alt=""> 모든 데이터를 초기화 합니다.</a></div>
			</div>
			<div class="sb_tit">
				<h3 class="ic3">체험 순서 선택</h3>
			</div>
			<div class="sbleftdat">
				<div class="bx_chk_list clfix">
					<ul>
						<li><button type="button" class="on">펀드 체험</button></li>
						<li><button type="button">채권 체험</button></li>
						<li><button type="button">투자 체험</button></li>
					</ul>
					<div class="btn_conf"><a href="">확정</a></div>
				</div>
			</div>
			<div class="sb_tit">
				<h3 class="ic4">체험할 주식 데이터 선택</h3>
			</div>
			<div class="sbleftdat">
				<div class="bx_chk_list clfix">
					<ul>
						<li><button type="button" class="on">1단계 <span>초보</span></button></li>
						<li><button type="button">1단계 <span>중간</span></button></li>
						<li><button type="button">3단계 <span>고수</span></button></li>
					</ul>
					<div class="btn_conf"><a href="">확정</a></div>
				</div>
			</div>
		</div>
		<div class="box_sbright clfix">
			<div class="sb_tit">
				<h3 class="ic1">프로그램 사용 제한</h3>
			</div>
			<div class="sbrightdat">
				<div class="pro_bt clfix">
					<button type="button" class="btn_use">사용하기</button>
					<button type="button" class="btn_stop">중단하기</button>
				</div>
			</div>
			<div class="sb_tit">
				<h3 class="ic2">프로그램 사용 제한</h3>
			</div>
			<div class="sbrightdat">
				<div class="da_adt clfix">
					<button type="button" class="btn_adgre">종합환경설정</button>
					<button type="button" class="btn_adyee">채권관리</button>
					<button type="button" class="btn_adyee">주식종목관리</button>
				</div>
			</div>
			<div class="sb_tit">
				<h3 class="ic3">이 시간 뉴스 및 애널리스트 분석 자료 전송</h3>
			</div>
			<div class="bx_tablist">
				<div class="tab">
					<div class="tabmenu m1 on"><a href="#" class="btn_tb">이 시간 뉴스</a><a href="#" class="btn_mod">수정</a></div>
					<div class="tabmenu m2"><a href="#" class="btn_tb">애널리스트 분석</a><a href="#" class="btn_mod">수정</a></div>
				</div>
				<div class="btmtbl">
					<div class="box_tbllist">
						<table>
							<colgroup>
								<col style="width: 33%;">
								<col style="width: 33%;">
								<col style="width: 33%;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">전송</th>
									<th scope="col">종목 영향</th>
									<th scope="col">등락 반영</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="" class="btn_send">전송</a></td>
									<td>제약</td>
									<td>오름</td>
								</tr>
								<tr>
									<td><a href="" class="btn_sendon">전송됨</a></td>
									<td>제약</td>
									<td>내림</td>
								</tr>
								<tr>
									<td><a href="" class="btn_send">전송</a></td>
									<td>제약</td>
									<td>내림</td>
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