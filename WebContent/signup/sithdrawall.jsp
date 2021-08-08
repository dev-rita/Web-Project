<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>YWHY - 회원정보등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="313eaaca-f2f0-4afc-bd0f-d1876b6d4827">
<link rel="shortcut icon" href="images/logo/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="images/logo/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/logo/apple-icon-114x114.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image" content="images/logo.png">
<link rel="stylesheet" href="css/application2.css">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55">
	</script>
	
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-M52CW55');
</script>
<!--[if lt IE 9]>
			<script src="/js/libs/html5.js"></script>
			<script src="/assets/libs/respond.src.js"></script>
			<script src="/assets/libs/html5.js"></script>
		<![endif]-->


<style type="text/css"></style>
</head>
<body>
	<div class="layout-container">
		<div class="main ">
			<div class="sidebar">
				<a href="javascript://" class="sidebar-header"> <%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
					<i class="fas fa-bars fa-lg" style="color: #773209"></i>
				</a>

				<h1>
					<%-- sidebar 상단의 logo --%>
					<div class="logo">
						<a href="ywhy_loginafter_manager_index.jsp"><b>YWHY</b></a>
					</div>
				</h1>

				<form id="search-google-form" name="searchMain"
					class="nav-sidebar-form"
					action="https://www.google.com/search?q=${q}" target="_blank">
					<div class="input-group">
						<input type="text" name="q" class="form-control input-sm"
							placeholder="Google 검색"> <span class="input-group-btn">
							<button class="btn btn-default btn-sm" type="submit">
								<i class="fas fa-search"></i>
							</button>
						</span>
					</div>
				</form>

				<div class="nav-user nav-sidebar">
					<div class="avatar clearfix avatar-medium ">
						<%-- 사진,이름,활동점수 부분 --%>
						<a href="/user/info/123430" class="avatar-photo"> <img
							src="https://phinf.pstatic.net/contact/20210201_106/16121404739276YNfY_JPEG/images.jpg">
						</a>
						<div class="avatar-info">
							<a class="nickname" href="/user/info/123430" title="관리자"><b>관리자</b></a>
							<div class="activity block">
								<i class="fas fa-bolt"></i> 0
							</div>
						</div>
					</div>

					<div class="nav-user-action">
						<div class="nav-user-func">
							<%-- 설정 --%>
							<a href="javascript://" id="user-func" data-toggle="popover"
								data-trigger="click" tabindex="0" data-original-title=""
								title=""> <i id="user-func-icon" class="fas fa-cog"
								style="color: #773209"></i>
							</a>
						</div>
						<div class="nav-user-func">
							<%-- 알림 --%>
							<a href="javascript://" id="user-notification"
								data-toggle="popover" data-trigger="click" tabindex="0"
								data-original-title="" title=""> <i
								id="user-notification-icon" class="fas fa-bell"
								style="color: #773209"></i> <span id="user-notification-count"
								class="badge notification" style="display: none;"> 1 </span>
							</a>
						</div>
					</div>



					<form action="/logout" method="post" style="display: none;">
						<input type="submit" name="logoutButton" value="logoutButton"
							id="logoutButton">
					</form>


					<script id="setting-template" type="text/template">
						<div class="popover popover-fixed" role="tooltip">
							<div class="arrow"></div>
							<h3 class="popover-title"></h3>
							<div class="popover-footer clearfix" id="user-func-popover">
								<label href="" for="logoutButton" class="popover-btn"><i class="fa fa-sign-out"></i> 로그아웃</label>
								<a href="/user/edit" class="popover-btn"><i class="fa fa-user"></i> 정보수정</a>
							</div>
						</div>
					</script>

					<script id="notification-template" type="text/template">
						<div class="popover popover-fixed" role="tooltip">
							<div class="arrow"></div>
							<h3 class="popover-title"></h3>
							<div class="popover-content" id="notification-popover"></div>
						</div>
					</script>
				</div>

				<ul class="nav nav-sidebar nav-main">
					<li><a href="#" class="link"> <i
							class="nav-icon fas fa-laptop"></i> <span
							class="nav-sidebar-label">Q&amp;A</span>
					</a></li>
					<li><a href="#" class="link"> <i
							class="nav-icon fas fa-coins"></i> <span
							class="nav-sidebar-label">커뮤니티</span>
					</a></li>
					<li><a href="#" class="link"> <i
							class="nav-icon fas fa-hat-wizard"></i> <span
							class="nav-sidebar-label">Manager</span>
					</a></li>
				</ul>
			</div>
			<div id="create-user" class="content" role="main">
				<h3 class="content-header">회원 탈퇴</h3>
				<div class="panel panel-default panel-margin-10">
					<div class="panel-body panel-body-content text-center">
						<p class="lead">회원 탈퇴시 아래의 조취가 취해 집니다.</p>
						<ul class="text-left">
							<li>회원 탈퇴 일로부터 계정과 닉네임을 포함한 계정 정보(아이디/이메일/닉네임)는 <strong>'개인
									정보 보호 정책'에 따라 60일간 보관(잠김) 되며,</strong> 60일이 경과된 후에는 모든 개인 정보는 완전히 삭제되며 더
								이상 복구할 수 없게 됩니다.
							</li>
							<li><strong>작성된 게시물은 삭제되지 않으며, 익명처리 후 OKKY로 소유권이
									귀속됩니다.</strong></li>
							<li><strong>게시물 삭제가 필요한 경우에는 관리자(<a
									href="mailto:admin@okky.kr">admin@okky.kr</a>)로 문의해 주시기 바랍니다.
							</strong></li>
						</ul>
						<a href="/user/edit" class="btn btn-default">아니오</a> <a
							href="/user/withdraw" class="btn btn-danger">예, 탈퇴하겠습니다.</a>
					</div>
				</div>
			</div>
			<div class="right-banner-wrapper"></div>
			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="images/logo_gray.png" style="width: 55px; height: 55px;">
					</div>
					<div class="footer_content">
						<strong>상호명</strong>: 김이이정 | <strong>대표명</strong>: 김태완 | <strong>팀원명</strong>:
						이의수 이승연 정희선 | <strong>사업자번호</strong>: 404-99-12536 <br> <strong>주소</strong>:
						서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) | <strong>문의</strong>:
						info@ywhy.kr
						<hr
							style="margin: 8px 0px; border: 0px; border-top: 1px solid #eee;">
						<a href="intro/loginafter_manager_about.jsp">About YWHY</a> | <a
							href="user/privacy.jsp" data-toggle="modal"
							data-target="#userPrivacy">개인 정보 보호</a> <a
							href="https://github.com/dev-rita/Web-Project.git" target=_blank;
							class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	</div>
	<script>
		var contextPath = "";
		var encodedURL = "%2Fuser%2FwithdrawConfirm";
	</script>

	<script src="js/application.js" type="text/javascript"></script>
	<script src="js/apps/search.js" type="text/javascript"></script>
	<script src="js/apps/notification.js" type="text/javascript"></script>

	<div id="userPrivacy" class="modal" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>

	<div id="userAgreement" class="modal" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>



</body>
</html>