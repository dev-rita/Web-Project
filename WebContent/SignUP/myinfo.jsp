<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>YWHY - 회원정보보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="7e245c1e-0e11-4c47-a906-f2853d10e465">
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
<script
	src="https://www.googletagservices.com/activeview/js/current/osd.js"></script>
<script
	src="https://partner.googleadservices.com/gampad/cookie.js?domain=okky.kr&amp;callback=_gfp_s_&amp;client=ca-pub-8103607814406874&amp;cookie=ID%3Dc76794c62709098a-22b825815bca000d%3AT%3D1626432631%3ART%3D1626432631%3AS%3DALNI_MZ_3LnDaxAJzzhGjq5C0v5-svo6zQ"></script>
<script
	src="https://pagead2.googlesyndication.com/pagead/managed/js/adsense/m202107220101/show_ads_impl.js?bust=31061979"
	id="google_shimpl"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script>
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

<meta http-equiv="origin-trial"
	content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<meta http-equiv="origin-trial"
	content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
<meta http-equiv="origin-trial"
	content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
<meta http-equiv="origin-trial"
	content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
<meta http-equiv="origin-trial"
	content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
<meta http-equiv="origin-trial"
	content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<link rel="preload"
	href="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr"
	as="script">
<script type="text/javascript"
	src="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr"></script>
<link rel="preload"
	href="https://adservice.google.com/adsid/integrator.js?domain=okky.kr"
	as="script">
<script type="text/javascript"
	src="https://adservice.google.com/adsid/integrator.js?domain=okky.kr"></script>
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

			<div id="user" class="content clearfix" role="main">
				<div class="panel panel-default">
					<div class="panel-body">




						<div class="avatar clearfix avatar-big col-sm-3 text-center">
							<a href="/user/info/123563" class="avatar-photo"><img
								src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></a>
						</div>
						<div class="user-info col-sm-9">
							<div class="clearfix">
								<h2 class="pull-left">이의수</h2>
								<button class="btn btn-success pull-right btn-wide disabled">
									<i class="fa fa-plus"></i> 팔로우
								</button>
							</div>
							<div class="user-points">
								<div class="user-point">
									<div class="user-point-label">
										<i class="fa fa-flash"></i> 활동점수
									</div>
									<div class="user-point-num">
										<a href="/user/info/123563/activity">0</a>
									</div>
								</div>
								<div class="user-point">
									<div class="user-point-label">
										<i class="fa fa-user"></i> 팔로잉
									</div>
									<div class="user-point-num">
										<a href="#">0</a>
									</div>
								</div>
								<div class="user-point">
									<div class="user-point-label">
										<i class="fa fa-users"></i> 팔로워
									</div>
									<div class="user-point-num">
										<a href="#">0</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2 user-info-nav pull-right">
					<ul class="nav">
						<li class="active"><a href="/user/info/123563/activity">최근
								활동</a></li>
						<li class=""><a href="/user/info/123563/articles">게시물 </a></li>
						<li class=""><a href="/user/info/123563/scrapped">스크랩 </a></li>
					</ul>
				</div>
				<div class="col-sm-10 main-block-left pull-left">
					<ul class="list-group">

					</ul>
					<div class="text-center"></div>
				</div>
			</div>
			<div class="right-banner-wrapper">




				<div class="google-ad">
					<script async=""
						src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- okjspad_160x500 -->
					<ins class="adsbygoogle"
						style="display: inline-block; width: 160px; height: 500px"
						data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"
						data-adsbygoogle-status="done" data-ad-status="filled">
						<ins id="aswift_0_expand"
							style="display: inline-table; border: none; height: 500px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;"
							tabindex="0" title="Advertisement" aria-label="Advertisement">
							<ins id="aswift_0_anchor"
								style="display: block; border: none; height: 500px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
								<iframe id="aswift_0" name="aswift_0"
									style="left: 0; position: absolute; top: 0; border: 0; width: 160px; height: 500px;"
									sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
									width="160" height="500" frameborder="0"
									src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=1468885513&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627262472&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2Fuser%2Finfo%2F123563&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuODY0LjcxIixbXSxudWxsLG51bGwsbnVsbF0.&amp;dt=1627262472374&amp;bpp=7&amp;bdt=292&amp;idt=76&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc76794c62709098a-22b825815bca000d%3AT%3D1626432631%3ART%3D1626432631%3AS%3DALNI_MZ_3LnDaxAJzzhGjq5C0v5-svo6zQ&amp;correlator=7351851261730&amp;frm=20&amp;pv=2&amp;ga_vid=580770423.1626432632&amp;ga_sid=1627262472&amp;ga_hid=231018962&amp;ga_fc=0&amp;u_tz=540&amp;u_his=1&amp;u_java=0&amp;u_h=960&amp;u_w=1440&amp;u_ah=960&amp;u_aw=1440&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=65&amp;biw=1423&amp;bih=888&amp;scr_x=0&amp;scr_y=0&amp;eid=31061979%2C20211866&amp;oid=3&amp;pvsid=3509884965966248&amp;pem=269&amp;wsm=1&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1440%2C0%2C1440%2C960%2C1440%2C888&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=9CT6PF5Z6K&amp;p=https%3A//okky.kr&amp;dtd=97"
									marginwidth="0" marginheight="0" vspace="0" hspace="0"
									allowtransparency="true" scrolling="no" allowfullscreen="true"
									allow="conversion-measurement" data-google-container-id="a!1"
									data-google-query-id="CPWJkI3J__ECFU7GTAId0UQK9Q"
									data-load-complete="true"></iframe>
							</ins>
						</ins>
					</ins>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
			</div>
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
	<script>
		var contextPath = "";
		var encodedURL = "%2Fuser%2Finfo%2F123563";
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



	<ins class="adsbygoogle adsbygoogle-noablate"
		data-adsbygoogle-status="done" style="display: none !important;"
		data-ad-status="unfilled">
		<ins id="aswift_1_expand"
			style="display: inline-table; border: none; height: 0px; margin: 0; padding: 0; position: relative; visibility: visible; width: 0px; background-color: transparent;"
			tabindex="0" title="Advertisement" aria-label="Advertisement">
			<ins id="aswift_1_anchor"
				style="display: block; border: none; height: 0px; margin: 0; padding: 0; position: relative; visibility: visible; width: 0px; background-color: transparent;">
				<iframe id="aswift_1" name="aswift_1"
					style="left: 0; position: absolute; top: 0; border: 0; width: undefinedpx; height: undefinedpx;"
					sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
					frameborder="0"
					src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1627262472&amp;plat=1%3A16777216%2C2%3A16777216%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2Fuser%2Finfo%2F123563&amp;ea=0&amp;flash=0&amp;pra=7&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuODY0LjcxIixbXSxudWxsLG51bGwsbnVsbF0.&amp;dt=1627262472385&amp;bpp=2&amp;bdt=303&amp;idt=104&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc76794c62709098a-22b825815bca000d%3AT%3D1626432631%3ART%3D1626432631%3AS%3DALNI_MZ_3LnDaxAJzzhGjq5C0v5-svo6zQ&amp;prev_fmts=160x500&amp;nras=1&amp;correlator=7351851261730&amp;frm=20&amp;pv=1&amp;ga_vid=580770423.1626432632&amp;ga_sid=1627262472&amp;ga_hid=231018962&amp;ga_fc=0&amp;u_tz=540&amp;u_his=1&amp;u_java=0&amp;u_h=960&amp;u_w=1440&amp;u_ah=960&amp;u_aw=1440&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1423&amp;bih=888&amp;scr_x=0&amp;scr_y=0&amp;eid=31061979%2C20211866&amp;oid=3&amp;pvsid=3509884965966248&amp;pem=269&amp;wsm=1&amp;eae=2&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1440%2C0%2C1440%2C960%2C1440%2C888&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;dtd=118"
					marginwidth="0" marginheight="0" vspace="0" hspace="0"
					allowtransparency="true" scrolling="no" allowfullscreen="true"
					allow="conversion-measurement" data-google-container-id="a!2"
					data-load-complete="true"></iframe>
			</ins>
		</ins>
	</ins>
	<iframe id="google_osd_static_frame_484236937800"
		name="google_osd_static_frame"
		style="display: none; width: 0px; height: 0px;"></iframe>
	<iframe src="https://www.google.com/recaptcha/api2/aframe" width="0"
		height="0" style="display: none;"></iframe>
</body>
<iframe id="google_esf" name="google_esf"
	src="https://googleads.g.doubleclick.net/pagead/html/r20210720/r20190131/zrt_lookup.html"
	style="display: none;"></iframe>
</html>

