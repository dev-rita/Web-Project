<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>YWHY - Better Developer</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="5bf6f973-eaae-4eb3-a0b1-166384b12359">
<link rel="shortcut icon" href="images/logo/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/logo/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/logo/apple-icon-144x144.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image"
	content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="css/application2.css">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://www.googletagservices.com/activeview/js/current/osd.js"></script>
<script
	src="https://partner.googleadservices.com/gampad/cookie.js?domain=okky.kr&amp;callback=_gfp_s_&amp;client=ca-pub-8103607814406874&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g"></script>
<script
	src="https://pagead2.googlesyndication.com/pagead/managed/js/adsense/m202107220101/show_ads_impl_fy2019.js?bust=31061979"
	id="google_shimpl"></script>
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
<meta name="google-site-verification"
	content="DkGncyJVqYFVekHithdbYnKgklkyKVwruPZ18WUDjr0">
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
<style type="text/css"></style>
</head>
<body>
	<div class="layout-container">
		<div class="main index">
			<div class="sidebar">
				<a href="javascript://" class="sidebar-header"><%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
					<i class="fas fa-bars fa-lg" style="color:#773209"></i>
				</a>

				<h1><%-- sidebar 상단의 logo --%>
					<div class="logo">
						<a href="ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
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
							<a href="SignUP/login.jsp" class="link">
								<i class="fas fa-sign-in-alt"></i>
								<span class="nav-sidebar-label">로그인</span>
							</a>
						</li>
						<li>
							<a href="SignUP/signup.jsp" class="link">
								<i class="fas fa-users"></i>
								<span class="nav-sidebar-label">회원가입</span>
							</a>
						</li>
					</ul>
				</div>

				<ul class="nav nav-sidebar nav-main">
					<li>
						<a href="board/questions.jsp" class="link">
							<i class="nav-icon fas fa-laptop"></i>
							<span class="nav-sidebar-label">Q&amp;A</span>
						</a>
					</li>
					<li>
						<a href="board/community.jsp" class="link">
							<i class="nav-icon fas fa-coins"></i>
							<span class="nav-sidebar-label">커뮤니티</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="main-banner-wrapper">
            	<div class="main-banner">
              		<a href="/banner/stats/389" target="_t"><img src="//file.okky.kr/banner/1626855463694.jpg"></a>
               	</div>
            </div>

			<div id="index" class="content scaffold-list clearfix" role="main">
				<div class="col-sm-6 main-block-left">
					<div class="main-block">
						<h4 class="main-header">
							<i class="fas fa-cloud"></i> YWHY's Choice
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="#">[OKKY Jobs] 2차, 3차 업데이트 안내</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/45597" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/45597" title="OKKY">닉네임</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 2k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-22 15:19:04">1일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002041">신입개발자, 당신이 회사에서 고통받는 이유</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/114326" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/dbe801506bda475154d7b73ec7e3a6e8?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/114326" title="kane0721">kane0721</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 472
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-17 20:09:42">6일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/890592">신입 개발자를 위한 간단한 포트폴리오 작성 팁</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/5322" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/307d31079ac2364a12f843e2634b23ef?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/5322" title="fender">fender</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 22k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-03-18 12:00:37">4달 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/863051">국비출신 첫 출근하고왔습니다 ㅎㅎ</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/109035" class="avatar-photo">
														<img src="//file.okky.kr/profile/2021/1614597352600.jpg">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/109035" title="Ormus">Ormus</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 1k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-02-01 19:58:06">6달 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/861866">2년차 개발자가 이직을 하면서 배우고 느낀점</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/74578" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/9c98c9bdd79e83d114b61d4a85d089a7?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/74578" title="salsal">salsal</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 829
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-01-30 01:52:15">6달 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6 main-block-right">
					<div class="main-block">
						<h4 class="main-header">
							<i class="fas fa-sun"></i> Weekly Best
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002318">6년차 개발자의 후기 ( SI, 솔루션, 스타트업후기)</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/86071" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/a9c072e32cc89d6584f2cbeac20f3d5d?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/86071" title="팩트폭행범">팩트폭행범</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 2k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-19 00:13:31">5일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002278">여기 늙은 신입개발자 없나요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124251" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/14b038b1e95e06bccecfd44b88243df0?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124251" title="cat coffee">cat coffee</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 52
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-18 22:45:15">5일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1005807">꼰대가 말하는 노력이 구체적으로 뭔지 궁금합니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/121890" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/8fcbe67e59411b29834ca0a9323cfe9f?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/121890" title="인셍힘들다">인셍힘들다</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 85
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-22 13:21:36">1일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1003542">초등학교 6학년 개발자입니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/58880" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/87cad5979bc24102602856fac64df0fa?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/58880" title="Oscar">Oscar</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 517
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-20 11:05:52">3일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002553">iOS 개발 공부를 시작하고 첫 앱으로 고양이 클리커 게임을 출시하게 되었습니다!</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/87322" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/0e9f64f708948dc86926a5485b076d9d?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/87322" title="Profit!">Profit!</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 119
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-19 11:05:36">4일 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-sm-8 main-block-left">
					<div class="main-block">
						<h4 class="main-header">
							<i class="fas fa-laptop"></i> Q&amp;A 
							<a href="board/questions.jsp" class="main-more-btn pull-right">
								<i class="fas fa-ellipsis-h"></i>
							</a>
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007192">mapper 쿼리문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124563" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124563" title="꼽충">꼽충</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 14
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:11:09">14분 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007158">톰캣 포트 질문입니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/113169" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/B8886CBC9E368539F5BBEEA4625BE088?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/113169" title="Essimi">Essimi</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 50
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:40:11">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007148">tsconfig.json의 strictNullChecks 옵션을 사용하시나요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/112222" class="avatar-photo">
														<img src="//file.okky.kr/profile/2021/1626932025783.jpg">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/112222" title="윤스">윤스</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 51
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:24:43">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007119">datatable 출력시 object..만 떠요ㅠㅠㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124588" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJzzpXcaZJRP_eFyi0Ht93veAeptvkJCjKePk1_aYw=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124588" title="승구">승구</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:12:05">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007101">JQuery 부모 요소를 찾았는데 속성을 못 가져올 때</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106748" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/6996f53d97901a95f77329400c2ab0bf?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106748" title="standAlone">standAlone</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 174
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:52:17">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007096">JAVA 메일 오류</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124585" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJyxsnvcxNb2wy9csBaqfhS9IQiFLphZnEef1BhD=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124585" title="euuun">euuun</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007094">엑셀 styles.xml 파일의 스타일 갯수 세는 방법 아시는 분 계실까요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/96703" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/af135b1c41126e9bec1760578ff92f62?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/96703" title="유야호">유야호</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 224
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:46:45">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007069">구글맵 api marker option 잘 아시는 분 계신가요??</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/105754" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/85e3988f6ba82671bca7b6042299f2dd?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/105754" title="Songnae">Songnae</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 507
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:21:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sin개발자</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007054">React의 Recoil 상태 값 유지 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124581" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/1db3ea97b8e8ced2907e8ca8c32919b3?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124581" title="똔다발">똔다발</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:08:18">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007192">mapper 쿼리문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124563" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124563" title="꼽충">꼽충</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 14
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:11:09">14분 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007158">톰캣 포트 질문입니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/113169" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/B8886CBC9E368539F5BBEEA4625BE088?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/113169" title="Essimi">Essimi</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 50
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:40:11">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007148">tsconfig.json의 strictNullChecks 옵션을 사용하시나요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/112222" class="avatar-photo">
														<img src="//file.okky.kr/profile/2021/1626932025783.jpg">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/112222" title="윤스">윤스</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 51
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:24:43">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007119">datatable 출력시 object..만 떠요ㅠㅠㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124588" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJzzpXcaZJRP_eFyi0Ht93veAeptvkJCjKePk1_aYw=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124588" title="승구">승구</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:12:05">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007101">JQuery 부모 요소를 찾았는데 속성을 못 가져올 때</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106748" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/6996f53d97901a95f77329400c2ab0bf?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106748" title="standAlone">standAlone</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 174
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:52:17">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007096">JAVA 메일 오류</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124585" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJyxsnvcxNb2wy9csBaqfhS9IQiFLphZnEef1BhD=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124585" title="euuun">euuun</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007094">엑셀 styles.xml 파일의 스타일 갯수 세는 방법 아시는 분 계실까요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/96703" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/af135b1c41126e9bec1760578ff92f62?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/96703" title="유야호">유야호</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 224
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:46:45">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007069">구글맵 api marker option 잘 아시는 분 계신가요??</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/105754" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/85e3988f6ba82671bca7b6042299f2dd?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/105754" title="Songnae">Songnae</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 507
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:21:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sin개발자</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sin개발자</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-sm-8 main-block-right">
					<div class="main-block">
						<h4 class="main-header">
							<i class="fas fa-coins"></i> 커뮤니티 
							<a href="board/community.jsp" class="main-more-btn pull-right">
								<i class="fas fa-ellipsis-h"></i>
							</a>
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007192">mapper 쿼리문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124563" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124563" title="꼽충">꼽충</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 14
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:11:09">14분 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007158">톰캣 포트 질문입니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/113169" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/B8886CBC9E368539F5BBEEA4625BE088?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/113169" title="Essimi">Essimi</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 50
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:40:11">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007148">tsconfig.json의 strictNullChecks 옵션을 사용하시나요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/112222" class="avatar-photo">
														<img src="//file.okky.kr/profile/2021/1626932025783.jpg">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/112222" title="윤스">윤스</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 51
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:24:43">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007119">datatable 출력시 object..만 떠요ㅠㅠㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124588" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJzzpXcaZJRP_eFyi0Ht93veAeptvkJCjKePk1_aYw=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124588" title="승구">승구</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:12:05">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007101">JQuery 부모 요소를 찾았는데 속성을 못 가져올 때</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106748" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/6996f53d97901a95f77329400c2ab0bf?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106748" title="standAlone">standAlone</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 174
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:52:17">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007096">JAVA 메일 오류</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124585" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJyxsnvcxNb2wy9csBaqfhS9IQiFLphZnEef1BhD=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124585" title="euuun">euuun</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007094">엑셀 styles.xml 파일의 스타일 갯수 세는 방법 아시는 분 계실까요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/96703" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/af135b1c41126e9bec1760578ff92f62?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/96703" title="유야호">유야호</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 224
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:46:45">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007069">구글맵 api marker option 잘 아시는 분 계신가요??</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/105754" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/85e3988f6ba82671bca7b6042299f2dd?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/105754" title="Songnae">Songnae</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 507
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:21:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sin개발자</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007054">React의 Recoil 상태 값 유지 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124581" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/1db3ea97b8e8ced2907e8ca8c32919b3?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124581" title="똔다발">똔다발</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:08:18">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007192">mapper 쿼리문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124563" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124563" title="꼽충">꼽충</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 14
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:11:09">14분 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007158">톰캣 포트 질문입니다.</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/113169" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/B8886CBC9E368539F5BBEEA4625BE088?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/113169" title="Essimi">Essimi</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 50
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:40:11">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007148">tsconfig.json의 strictNullChecks 옵션을 사용하시나요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/112222" class="avatar-photo">
														<img src="//file.okky.kr/profile/2021/1626932025783.jpg">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/112222" title="윤스">윤스</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 51
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:24:43">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007119">datatable 출력시 object..만 떠요ㅠㅠㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124588" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJzzpXcaZJRP_eFyi0Ht93veAeptvkJCjKePk1_aYw=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124588" title="승구">승구</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:12:05">1시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007101">JQuery 부모 요소를 찾았는데 속성을 못 가져올 때</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106748" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/6996f53d97901a95f77329400c2ab0bf?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106748" title="standAlone">standAlone</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 174
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:52:17">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007096">JAVA 메일 오류</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124585" class="avatar-photo">
														<img src="https://lh3.googleusercontent.com/a/AATXAJyxsnvcxNb2wy9csBaqfhS9IQiFLphZnEef1BhD=s96-c">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124585" title="euuun">euuun</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007094">엑셀 styles.xml 파일의 스타일 갯수 세는 방법 아시는 분 계실까요?</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/96703" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/af135b1c41126e9bec1760578ff92f62?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/96703" title="유야호">유야호</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 224
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:46:45">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007069">구글맵 api marker option 잘 아시는 분 계신가요??</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/105754" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/85e3988f6ba82671bca7b6042299f2dd?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/105754" title="Songnae">Songnae</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 507
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:21:10">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sin개발자</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">제가 이 과정을 잘 끝내고 프로젝트도 잘 마무리 할 수 있을지 걱정이에요..</a>
											<div class="list-group-item-author pull-right clearfix">
												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo">
														<img src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10">
													</a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458" title="sin개발자">sun</a>
														<div class="activity">
															<i class="fas fa-bolt"></i> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간 전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="right-banner-wrapper">
	       		<div class="google-ad">
	          		<script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	          	   	<!-- okjspad_160x500 -->
	           	   	<ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_1_expand" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"><ins id="aswift_1_anchor" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;"><iframe id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627279039&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2F&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627279039021&amp;bpp=4&amp;bdt=500&amp;idt=144&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;prev_fmts=250x250&amp;correlator=2495855955506&amp;frm=20&amp;pv=1&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627279039&amp;ga_hid=1669324219&amp;ga_fc=0&amp;u_tz=540&amp;u_his=3&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=20&amp;biw=1265&amp;bih=937&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C20211866%2C21067496&amp;oid=3&amp;pvsid=3237660968919372&amp;pem=707&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1282%2C937&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;xpc=0P8aw9ZTPc&amp;p=https%3A//okky.kr&amp;dtd=152" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!2" data-google-query-id="COviiOmGgPICFY7IfAodvBkEEw" data-load-complete="true"></iframe></ins></ins></ins>
	          		<script>
	             		(adsbygoogle = window.adsbygoogle || []).push({});
	             	</script>
	         	</div>
          	</div>

			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="images/logo_gray.png" style="width:55px; height:55px;">
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
						<a href="intro/loginbefore_about.jsp">About YWHY</a> | <a href="user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	
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
	
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<%-- fontawsome이란 웹 아이콘 폰트를 모아놓은 라이브러리 사용 --%>
	

	<script>
            var contextPath = "";
            var encodedURL = "%2F";
        </script>

	<script src="js/application.js" type="text/javascript"></script>
	<script src="js/apps/search.js" type="text/javascript"></script>
	<script>
        $(function () {
          $('.timeago').timeago();
        });
    </script>

	<ins class="adsbygoogle adsbygoogle-noablate"
		data-adsbygoogle-status="done" style="display: none !important;"
		data-ad-status="unfilled">
		<ins id="aswift_2_expand" tabindex="0" title="Advertisement"
			aria-label="Advertisement"
			style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;">
			<ins id="aswift_2_anchor"
				style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;">
				<iframe id="aswift_2" name="aswift_2"
					style="left: 0; position: absolute; top: 0; border: 0; width: undefinedpx; height: undefinedpx;"
					sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
					frameborder="0"
					src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1627036842&amp;plat=1%3A16777224%2C2%3A16777224%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1048576%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2F&amp;ea=0&amp;flash=0&amp;pra=7&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627036842891&amp;bpp=2&amp;bdt=131&amp;idt=2&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;prev_fmts=151x250&amp;nras=1&amp;correlator=6838673989473&amp;frm=20&amp;pv=1&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627036843&amp;ga_hid=2142981167&amp;ga_fc=0&amp;u_tz=540&amp;u_his=5&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=943&amp;bih=919&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C31061979%2C20211866%2C21067496&amp;oid=3&amp;pvsid=1804935848237523&amp;pem=707&amp;ref=https%3A%2F%2Fokky.kr%2Flogin%2Fauth%3Flogout&amp;eae=2&amp;fc=896&amp;brdim=-8%2C-8%2C-8%2C-8%2C1920%2C0%2C976%2C1056%2C960%2C936&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=33792&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;fsb=1&amp;dtd=9"
					marginwidth="0" marginheight="0" vspace="0" hspace="0"
					allowtransparency="true" scrolling="no" allowfullscreen="true"
					data-google-container-id="a!3" data-load-complete="true"></iframe>
			</ins>
		</ins>
	</ins>
	<iframe id="google_osd_static_frame_6871337382217"
		name="google_osd_static_frame"
		style="display: none; width: 0px; height: 0px;"></iframe>
	<iframe src="https://www.google.com/recaptcha/api2/aframe" width="0"
		height="0" style="display: none;"></iframe>
</body>
</html>