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
	<script src="/bower_components/requirejs/require.js" data-main="/dist/js/login/main.js"></script>

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
		<h1><a href="#"><img src="/dist/images/logo.png" alt="드림증권 투자시스템"></a></h1>
	</div>
</header>
<!-- //header -->
<form method="post">
	<!-- content -->
	<div id="container">
		<div id="content" class="clfix">
			<div class="box_login">
				<div class="tit_log"><h2>LOGIN</h2></div>
				<div class="inp_log">
					<ul>
						<li><strong class="inp_st">직원명</strong>
							<div>
								<input type="text" name="EMPL_NAME" value="" maxlength="5" required disabled>
							</div>
						</li>
						<li><strong>성별</strong>
							<div>
								<input type="radio" id="sx1" name="sx" value="M" disabled checked><label for="sx1">남</label>
								<input type="radio" id="sx2" name="sx" value="F" disabled><label for="sx2">여</label>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn_loglist hidden">
					<button type="submit" class="btn_login">로그인</button>
					<button type="reset" class="btn_cancel">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //content -->
</form>

</body>
</html>