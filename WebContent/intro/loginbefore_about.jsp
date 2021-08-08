<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>OKKY - About us</title>
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
		<![endif]-->
<style type="text/css"></style>
</head>
<body>
	<div class="layout-container">
		<div class="main ">
			<div class="sidebar">
				<a href="javascript://" class="sidebar-header"><%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
					<i class="fas fa-bars fa-lg" style="color:#773209"></i>
				</a>

				<h1>
					<div class="logo">
						<a href="../ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
					</div>
				</h1>

				<form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search?q=${q}" target="_blank"><%-- 내가 만들었던 창은 검색이 되는데 여기는 안된다..왜지 css에서 -webkit뭐시기 삭제했더니 검색이 됐다..?!--%>
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

			<div id="about" class="content clearfix" role="main">
				<div class="about-wrapper about-history">
					<h3 class="content-header">History</h3>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2021</div>
						</div>
						<div class="about-hlist-body">
							<p>《OKKYCON: 2021》 개최</p>
							<p>총 회원 수 10만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2020</div>
						</div>
						<div class="about-hlist-body">
							<p>OKJSP 20주년</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2019</div>
						</div>
						<div class="about-hlist-body">
							<p>월 5백만 페이지뷰 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2018</div>
						</div>
						<div class="about-hlist-body">
							<p>ICT 업종 주52시간 예외에 대한 특별성명 발표</p>
							<p>《OKKYCON: 2018》 개최</p>
							<p>OKKY 세미나 총 16회 개최</p>
							<p>월 회원가입 수 1000명 돌파 / 총 회원 수 6만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2017</div>
						</div>
						<div class="about-hlist-body">
							<p>OKKY Jobs 개편 및 구인 회사 인증제 실시</p>
							<p>《OKKYCON: 2017》 개최</p>
							<p>OKKY 세미나 총 4회 개최</p>
							<p>총 회원 수 5만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2016</div>
						</div>
						<div class="about-hlist-body">
							<p>《제3회 JavaScript Conference》 개최</p>
							<p>OKKY 세미나 총 5회 개최</p>
							<p>총 회원 수 4만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2015</div>
						</div>
						<div class="about-hlist-body">
							<p>사이트 전체 개편 및 모든 개발자들을 위한 커뮤니티, OKKY (okky.kr) 로 재탄생</p>
							<p>《제2회 JavaScript Conference》 개최</p>
							<p>OKKY 세미나 총 9회 개최</p>
							<p>총 회원수 3만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2014</div>
						</div>
						<div class="about-hlist-body">
							<p>《제1회 JavaScript Conference》 개최</p>
							<p>《소프트웨어 살리기 끝장·막장 토론회》 주최</p>
							<p>《SI프리랜서 5 Step-Manual Seminar》 개최</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2013</div>
						</div>
						<div class="about-hlist-body">
							<p>일 방문 20,000 UV 달성 - 국내 최대 트래픽의 Java 개발자 커뮤니티 등극</p>
							<p>okjsp.net 도메인 변경</p>
							<p>서울시 주최 《IT 개발자 지원정책 수립을 위한 청책토론회》 주관</p>
							<p>《개발자의 삶 세미나》 개최</p>
							<p>《OKJSP 13주년 Conference》 개최</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2010</div>
						</div>
						<div class="about-hlist-body">
							<p>《OKJSP 10주년 기념 세미나》 개최</p>
							<p>총 회원 수 1만 명 돌파</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2009</div>
						</div>
						<div class="about-hlist-body">
							<p>HTML5 페이지 오픈 프로젝트</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2003</div>
						</div>
						<div class="about-hlist-body">
							<p>JCO(구 자바 커뮤니티 연합회, 현 한국자바개발자협의회) 가입</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2002</div>
						</div>
						<div class="about-hlist-body">
							<p>Jakarta Seoul Project (자카르타 프로젝트 한글 번역) Tomcat 부문 리드</p>
							<p>커뮤니티 본격 활성화 (강좌 · 번역 문서 · 기술 tips · 소스 자료실 등)</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2001</div>
						</div>
						<div class="about-hlist-body">
							<p>okjsp.pe.kr으로 도메인 변경</p>
							<p>MySQL DB를 사용하는 JSP 게시판 Open Source 배포</p>
							<p>Oracle 섹션 추가. MS-SQL과 Oracle용 버전으로 게시판 Open Source 배포</p>
						</div>
					</div>
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">2000</div>
						</div>
						<div class="about-hlist-body">
							<p>jspstudy.zoa.to (my.dreamwiz.com/heogn로 포워딩) 사이트 개설</p>
							<p>JSP와 Tomcat 서버 문서 번역 · 강좌 · JSP 메일링 서비스 등을 중심으로 개발 정보 공유
								사이트 시작</p>
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
						<a href="loginbefore_about.jsp">About YWHY</a> | <a href="../user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<%-- fontawsome이란 웹 아이콘 폰트를 모아놓은 라이브러리 사용 --%>
	<script>
            var contextPath = "";
            var encodedURL = "%2Fintro%2Fabout";
        </script>

	<script src="../js/application.js" type="text/javascript"></script>
	<script src="../js/apps/search.js" type="text/javascript"></script>
	<script src="../js/apps/notification.js" type="text/javascript"></script>

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