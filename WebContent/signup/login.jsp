<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js"><!--<![endif]-->
<head>
       <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>YWHY - BETTER DEVELOPER</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="7e245c1e-0e11-4c47-a906-f2853d10e465">
<link rel="shortcut icon" href="../images/logo/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="../images/logo/apple-icon_57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="../images/logo/apple-icon-114x114.png"
	href="../images/logo/apple-icon-144x144.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">

<link rel="stylesheet" href="../css/application2.css">
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
		
<link rel="stylesheet" href="../css/APW-style.css">
		
	<style type="text/css"></style></head>
	<body>
        <div class="layout-container">
            <div class="main ">
<div class="sidebar">
     	<a href="javascript://" class="sidebar-header"><%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
			<i class="fas fa-bars fa-lg" style="color:#773209"></i>
		</a>

		<h1><%-- sidebar 상단의 logo --%>
			<div class="logo">
				<a href="../ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
				</div>
		</h1>

		<form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search?q=${q}" target="_blank">
			<div class="input-group">
				<input type="text" name="q" class="form-control input-sm" placeholder="Google 검색"> 
				<span class="input-group-btn">
					<button class="btn btn-default btn-sm" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</span>
			</div>
		</form>

		<div class="nav-user nav-sidebar">
			<ul class="nav nav-sidebar">
				<li>
					<a href="../signup/login.jsp" class="link">
						<i class="fas fa-sign-in-alt"></i>
						<span class="nav-sidebar-label">로그인</span>
					</a>
				</li>
				<li>
					<a href="../signup/signup.jsp" class="link">
						<i class="fas fa-users"></i>
						<span class="nav-sidebar-label">회원가입</span>
					</a>
				</li>
			</ul>
		</div>

		<ul class="nav nav-sidebar nav-main">
			<li>
				<a href="../board/questions.jsp" class="link">
					<i class="nav-icon fas fa-laptop"></i>
					<span class="nav-sidebar-label">Q&amp;A</span>
				</a>
			</li>
			<li>
				<a href="../board/community.jsp" class="link">
					<i class="nav-icon fas fa-coins"></i>
					<span class="nav-sidebar-label">커뮤니티</span>
				</a>
			</li>
		</ul>
	 </div>

<div id="edit-user" class="content" role="main">
    <h3 class="content-header">로그인</h3>
    <div class="col-md-6 main-block-left">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h5 class="panel-header">아이디 로그인</h5>
            </div>

            <form action="/login/auth" class="form-signin form-user panel-body panel-margin" method="POST" id="loginForm" autocomplete="off">
                    <input type="hidden" name="redirectUrl" value="%2Fuser%2Fregister">
                <input type="text" name="username" autocorrect="off" autocapitalize="off" id="username" class="username form-control input-sm" placeholder="아이디" required="" autofocus="">
                <input type="password" name="password" class="password form-control input-sm" placeholder="비밀번호" required="">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember_me" id="remember_me"> 로그인 유지
                    </label>
                </div>
                <div class="signup-block">
                    <a href="../user/find/findid.jsp">계정 찾기</a>
                    <span class="inline-saperator">/</span>
                    <a href="../signup/signup.jsp">회원 가입</a>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-6 main-block-right">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h5 class="panel-header">SNS 로그인</h5>
            </div>
            <div class="panel-body panel-margin sns-buttons">
                <a href="/oauth2/authorization/kakao" id="kakao-connect-link" class="btn btn-kakao btn-block">
                	<span class="icon-social icon-kakao"></span>Login with Kakao</a>
                <a href="/oauth2/authorization/naver" id="naver-connect-link" class="btn btn-naver btn-block">
					<span class="icon-social icon-naver"></span>Login with NAVER</a>
            </div>
        </div>
    </div>

</div>
                <div class="right-banner-wrapper"></div>
			
			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="../images/logo_gray.png" style="width:55px; height:55px;">
					</div>
					<div class="footer_content">
						<strong>상호명</strong>: 김이이정 | 
						<strong>대표명</strong>: 김태완 | 
						<strong>팀원명</strong>: 이의수 이승연 정희선 | 
						<strong>사업자번호</strong>: 404-99-12536 
						<br>
						<strong>주소</strong>: 서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) |
						<strong>문의</strong>: info@ywhy.kr
						<hr style="margin:8px 0px; border:0px; border-top:1px solid #eee;">
						<a href="../intro/loginafter_manager_about.jsp">About YWHY</a> | <a href="../user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
			<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
</div>
                </div>
        <script>
            var contextPath = "";
            var encodedURL = "%2Flogin%2Fauth";
        </script>
        
        <script src="../js/application.js" type="text/javascript"></script>
        <script src="../js/apps/search.js" type="text/javascript"></script>
    <input type="hidden" name="redirectUrl" value="%2Fuser%2Fregister">
<script src="../js/libs/jquery.progressTimer.js" type="text/javascript"></script>

        <div id="userPrivacy" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>

        <div id="userAgreement" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>

    

</body>
</html>