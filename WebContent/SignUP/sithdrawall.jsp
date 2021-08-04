<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>WebS - 회원정보 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="313eaaca-f2f0-4afc-bd0f-d1876b6d4827">
<link rel="shortcut icon" href="images/logo/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="images/logo/icon_57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/logo/icon_114x114.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image" content="images/logo.png">

<link rel="stylesheet" href="css/application2.css">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M52CW55');</script>
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
			<div class="sidebar ">
				<a href="javascript://" class="sidebar-header"> <i
					class="fa fa-bars sidebar-header-icon"></i>
				</a>

				<h1>
					<div class="logo">
						<a href="/"><img src="images/logo.png" alt="Ywhy" title="Ywhy"></a>
					</div>
				</h1>

				<ul id="search-google-icon"
					class="nav nav-sidebar nav-sidebar-search-wrapper">
					<li class="nav-sidebar-search"><a href="javascript://"
						class="link" id="search-google" data-toggle="popover"
						data-trigger="click" data-original-title="" title=""><i
							class="fa fa-search"></i></a></li>
				</ul>

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
						<a href="/user/info/123563" class="avatar-photo"><img
							src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></a>
						<div class="avatar-info">
							<a class="nickname" href="/user/info/123563" title="이의수">이의수</a>
							<div class="activity block">
								<span class="fa fa-flash"></span> 0
							</div>
						</div>
					</div>
					<div class="nav-user-action">
						<div class="nav-user-func">
							<a href="javascript://" id="user-func" data-toggle="popover"
								data-trigger="click" tabindex="0" data-original-title=""
								title=""> <i id="user-func-icon" class="fa fa-cog"></i>
							</a>
						</div>
						<div class="nav-user-func">
							<a href="javascript://" id="user-notification"
								data-toggle="popover" data-trigger="click" tabindex="0"
								data-original-title="" title=""> <i
								id="user-notification-icon" class="fa fa-bell"></i> <span
								id="user-notification-count" class="badge notification"
								style="display: none;">1</span>
							</a>
						</div>
					</div>
					<form action="/logout" method="post" style="display: none;">
						<input type="submit" name="logoutButton" value="logoutButton"
							id="logoutButton">
					</form>

					<script id="setting-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title"></h3>
                    <div class="popover-footer clearfix" id="user-func-popover">
                        <label href="" for="logoutButton" class="popover-btn"><i class="fa fa-sign-out"></i> 로그아웃</label>
                        <a href="/user/edit" class="popover-btn"><i class="fa fa-user"></i> 정보수정</a>
                    </div>
                </div>
            </script>

					<script id="notification-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title"></h3>
                    <div class="popover-content" id="notification-popover"></div>
                </div>
            </script>

					<script id="search-google-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title">Google 검색</h3>
                    <div class="popover-content" id="search-google-popover">
                        <form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search" onsubmit="searchMain.q.value='site:okky.kr '+searchMain.qt.value;">
                            <div class="input-group">
                                <input type="text" name="qt" class="form-control input-sm" placeholder="Google 검색" />
                                <input type="hidden" name="q" />
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-sm" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </script>
				</div>

				<ul class="nav nav-sidebar nav-main">

					<li><a href="/articles/questions" class="link"><i
							class="nav-icon fa fa-database"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Q&amp;A</span></a></li>
					<li><a href="/articles/community" class="link"><i
							class="nav-icon fa fa-comments"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">커뮤니티</span></a></li>
				</ul>

				<ul class="nav nav-sidebar nav-bottom">
					<li><a href="https://github.com/okjsp/okky/issues"
						class="link" target="_blank"><i class="fa fa-github"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Github
								Issues</span></a></li>
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
			<div id="footer" class="footer" role="contentinfo">
				<div class="row">
					<div class="col-sm-9"></div>
					<div>
						<div style="float: right; margin-right: 10px; height: 100px;">
							<img src="images/logo_gray.png" alt="footer">
						</div>
						<div>
							<a href="/intro/about">About Ywhy</a> | <a href="/user/privacy"
								data-toggle="modal" data-target="#userPrivacy">개인정보보호</a> | <a
								href="/intro/ad">광고문의</a> | <a href="mailto:info@okky.kr">Contact</a>
							| <a href="https://www.facebook.com/okky.sns" target="_blank">Facebook</a>
							| <a href="https://github.com/okjsp/okky" target="_blank">Github</a>
							v1.5.4
							<hr style="margin: 8px 0;">
							<strong>상호명</strong>: 김이이정 | <strong>대표명</strong>: 김태완 | <strong>팀원명</strong>:
							이의수 이승연 정희선 | <strong>사업자번호</strong>: 404-99-12536 <br> <strong>주소</strong>:
							서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) | <strong>문의</strong>:
							info@ywhy.kr <br> @ 2021 <a href="http://www.ebrain.kr"
								target="_blank">eBrain Management</a>
						</div>
					</div>
				</div>
			</div>
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