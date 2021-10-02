<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js"><!--<![endif]--><head>
       <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>YWHY - 회원정보 찾기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="dd8c1368-62db-4f14-bb93-9c6f60e926d9">
<link rel="shortcut icon" href="../images/logo/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="../images/logo/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="../images/logo/apple-icon-144x144.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="../css/application2.css">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script>
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
						<i class="<i class="fa fa-sign-in">"></i>
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
				<a href="questions.jsp" class="link">
					<i class="nav-icon fas fa-laptop"></i>
					<span class="nav-sidebar-label">Q&amp;A</span>
				</a>
			</li>
			<li>
				<a href="community.jsp" class="link">
					<i class="nav-icon fas fa-coins"></i>
					<span class="nav-sidebar-label">커뮤니티</span>
				</a>
			</li>
		</ul>
	 </div>
<div id="create-user" class="content" role="main">
	<h3 class="content-header">계정 찾기</h3>
	<form action="/find/user/send" method="post">
			<input type="hidden" name="_csrf" value="1bc23bb2-44e0-45cd-b3ad-cbffc1130a33">
		<div class="col-sm-8 col-sm-offset-2">
		    <div class="panel panel-default panel-margin-10">
		        <div class="panel-body panel-body-content text-center">
		            <p class="lead">이메일 주소를 입력해 주세요.</p>
		            <p>회원 가입시 입력하신 이메일 주소를 입력하시면,<br> 해당 이메일로 아이디 및 비밀번호 변경 링크를 보내드립니다.</p>
		            <div class="form-group">
		                <input type="email" name="email" class="form-control form-control-inline text-center" placeholder="이메일 주소" value="">
		            </div>
		            <button type="submit" class="btn btn-primary">계정 찾기</button> <a href="/" class="btn btn-default">취소</a>
		        </div>
		    </div>
		</div>
	</form>
</div>
                <div class="right-banner-wrapper">
                </div>
                
                <jsp:include page="../include/footer.jsp"/>
                
        <script>
            var contextPath = "";
            var encodedURL = "%2Ffind%2Fuser%2Findex";
        </script>
        
        <script src="../js/application.js" type="text/javascript"></script>
        <script src="../js/apps/search.js" type="text/javascript"></script>

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

    

</body></html>