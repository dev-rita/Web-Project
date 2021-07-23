<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>OKKY - All That Developer</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="5bf6f973-eaae-4eb3-a0b1-166384b12359">
<link rel="shortcut icon" href="/assets/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="/assets/images/icon_57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon_114x114.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta property="og:image"
	content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="../css/application.css">
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
<body cz-shortcut-listen="true" style="">
	<div class="layout-container">
		<div class="main index">
			<div class="sidebar">
				<a href="javascript://" class="sidebar-header"> <i
					class="fa fa-bars sidebar-header-icon"></i>
				</a>

				<h1>
					<div class="logo">
						<a href="/"><img src="/assets/images/okjsp_logo.png"
							alt="OKKY" title="OKKY"></a>
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
					class="nav-sidebar-form" action="https://www.google.com/search">
					<div class="input-group">
						<input type="text" name="qt" class="form-control input-sm"
							placeholder="Google 검색"> <input type="hidden" name="q">
						<span class="input-group-btn">
							<button class="btn btn-default btn-sm" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>

				<div class="nav-user nav-sidebar">
					<ul class="nav nav-sidebar">
						<li><a href="/login/auth?redirectUrl=%2F" class="link"><i
								class="fa fa-sign-in"></i> <span class="nav-sidebar-label">로그인</span></a></li>
						<li><a href="/user/register" class="link"><i
								class="fa fa-user"></i> <span class="nav-sidebar-label">회원가입</span></a></li>
					</ul>
				</div>

				<ul class="nav nav-sidebar nav-main">

					<li><a href="/articles/questions" class="link"><i
							class="nav-icon fa fa-database"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Q&amp;A</span></a></li>
					<li><a href="/articles/tech" class="link"><i
							class="nav-icon fa fa-code"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Tech</span></a></li>
					<li><a href="/articles/community" class="link"><i
							class="nav-icon fa fa-comments"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">커뮤니티</span></a></li>
					<li><a href="/articles/columns" class="link"><i
							class="nav-icon fa fa-quote-left"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">칼럼</span></a></li>
					<li><a href="/articles/recruit?filter.jobType=CONTRACT"
						class="link"><i class="nav-icon fa fa-group"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Jobs</span></a></li>
				</ul>

				<ul class="nav nav-sidebar nav-bottom">
					<li><a href="https://github.com/okjsp/okky/issues"
						class="link" target="_blank"><i class="fa fa-github"></i> <span
							class="nav-sidebar-label nav-sidebar-category-label">Github
								Issues</span></a></li>
				</ul>
			</div>




			<div class="main-banner-wrapper">
				<div class="main-banner">
					<a href="/banner/stats/389" target="_t"><img
						src="//file.okky.kr/banner/1626855463694.jpg"></a>
				</div>
			</div>

			<div id="index" class="content scaffold-list clearfix" role="main">
				<div class="col-sm-6 main-block-left">
					<div class="main-block">
						<h4 class="main-header">
							<i class="fa fa-flag"></i> Editor's Choice
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1005955">[OKKY Jobs] 2차, 3차 업데이트 안내</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/45597" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/45597" title="OKKY">OKKY</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 2k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-22 15:19:04">1일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002041">신입개발자, 당신이 회사에서 고통받는 이유</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/114326" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/dbe801506bda475154d7b73ec7e3a6e8?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/114326"
															title="kane0721">kane0721</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 472
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-17 20:09:42">6일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/890592">신입 개발자를 위한 간단한 포트폴리오 작성 팁</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/5322" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/307d31079ac2364a12f843e2634b23ef?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/5322" title="fender">fender</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 22k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-03-18 12:00:37">4달
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/863051">국비출신 첫 출근하고왔습니다 ㅎㅎ</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/109035" class="avatar-photo"><img
														src="//file.okky.kr/profile/2021/1614597352600.jpg"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/109035" title="Ormus">Ormus</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 1k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-02-01 19:58:06">6달
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/861866">2년차 개발자가 이직을 하면서 배우고 느낀점</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/74578" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/9c98c9bdd79e83d114b61d4a85d089a7?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/74578" title="salsal">salsal</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 829
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-01-30 01:52:15">6달
																전</span>
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
							<i class="fa fa-star"></i> Weekly Best
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002318">6년차 개발자의 후기 ( SI, 솔루션, 스타트업후기
												)</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/86071" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/a9c072e32cc89d6584f2cbeac20f3d5d?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/86071" title="팩트폭행범">팩트폭행범</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 2k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-19 00:13:31">5일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002278">여기 늙은 신입개발자 없나요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124251" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/14b038b1e95e06bccecfd44b88243df0?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124251"
															title="cat coffee">cat coffee</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 52
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-18 22:45:15">5일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1005807">꼰대가 말하는 노력이 구체적으로 뭔지 궁금합니다.</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/121890" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/8fcbe67e59411b29834ca0a9323cfe9f?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/121890" title="인셍힘들다">인셍힘들다</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 85
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-22 13:21:36">1일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1003542">초등학교 6학년 개발자입니다.</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/58880" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/87cad5979bc24102602856fac64df0fa?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/58880" title="Oscar">Oscar</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 517
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-20 11:05:52">3일
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1002553">iOS 개발 공부를 시작하고 첫 앱으로 고양이 클리커
												게임을 출시하게 되었습니다!</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/87322" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/0e9f64f708948dc86926a5485b076d9d?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/87322"
															title="Profit!">Profit!</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 119
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-19 11:05:36">4일
																전</span>
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
							<i class="fa fa-database"></i> Q&amp;A <a
								href="/articles/questions" class="main-more-btn pull-right"><i
								class="fa fa-ellipsis-h"></i></a>
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007192">mapper 쿼리문</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124563" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124563" title="꼽충">꼽충</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 14
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:11:09">31분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007158">톰캣 포트 질문입니다.</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/113169" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/B8886CBC9E368539F5BBEEA4625BE088?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/113169"
															title="Essimi">Essimi</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 50
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:40:11">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007148">tsconfig.json의
												strictNullChecks 옵션을 사용하시나요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/112222" class="avatar-photo"><img
														src="//file.okky.kr/profile/2021/1626932025783.jpg"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/112222" title="윤스">윤스</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 51
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:24:43">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007119">datatable 출력시 object..만 떠요ㅠㅠㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124588" class="avatar-photo"><img
														src="https://lh3.googleusercontent.com/a/AATXAJzzpXcaZJRP_eFyi0Ht93veAeptvkJCjKePk1_aYw=s96-c"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124588" title="승구">승구</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:12:05">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007101">JQuery 부모 요소를 찾았는데 속성을 못 가져올 때</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106748" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/6996f53d97901a95f77329400c2ab0bf?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106748"
															title="standAlone">standAlone</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 174
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:52:17">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007096">JAVA 메일 오류</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124585" class="avatar-photo"><img
														src="https://lh3.googleusercontent.com/a/AATXAJyxsnvcxNb2wy9csBaqfhS9IQiFLphZnEef1BhD=s96-c"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124585" title="euuun">euuun</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:10">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007094">엑셀 styles.xml 파일의 스타일 갯수 세는 방법
												아시는 분 계실까요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/96703" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/af135b1c41126e9bec1760578ff92f62?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/96703" title="유야호">유야호</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 224
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:46:45">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007069">구글맵 api marker option 잘 아시는 분
												계신가요??</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/105754" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/85e3988f6ba82671bca7b6042299f2dd?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/105754"
															title="Songnae">Songnae</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 507
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:21:10">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007060">ORACLE 스칼라 서브쿼리 질문</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107458" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/165D241CD656C8C0C56456497AFC0B97?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107458"
															title="sin개발자">sin개발자</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 283
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:14:06">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007054">React의 Recoil 상태 값 유지 질문</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124581" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/1db3ea97b8e8ced2907e8ca8c32919b3?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124581" title="똔다발">똔다발</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:08:18">3시간
																전</span>
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
					<div class="main-block">
						<h4 class="main-header">
							<i class="fa fa-comment"></i> 커뮤니티 <a href="/articles/community"
								class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a>
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007210">포트폴리오</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/122713" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/26243bea5f9927ebcadc68ce7b8b0aba?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/122713" title="미믹">미믹</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 20
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:27:43">14분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007202">이직후 수습 끝났네요.</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/122183" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/9ecba75b7982ef771fbbc8c31d0b9796?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/122183" title="흐엉어엉">흐엉어엉</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 28
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:19:29">22분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007198">허허허</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/62689" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/3842e96c8592b40b1de9b2ff3f9e3ae2?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/62689"
															title="신입개발자444호">신입개발자444호</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 193
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:18:04">24분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007193">취업준비 안된 상태에서 졸업, 어떻게
												생각하시나요?(+조기졸업)</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/107443" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/496E7E6982C37F5DE443EE49626F329E?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/107443" title="흐어억">흐어억</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 47
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 19:12:59">29분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007174">돈이 없으면 어떻게 해야 할까요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124591" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/4c6afd2889fb1e6b7eef73219a9f5a22?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124591" title="도우빵">도우빵</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:57:39">44분
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007156">중소기업도 요즘에 코딩테스트 보나요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/85019" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/883f42925259a16af3b024523d24c816?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/85019"
															title="valenci">valenci</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 343
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:37:15">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007151">금융권 개발 힘든가요?(프리랜서)</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/73726" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/875e95b63a6741840c525136dd27123c?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/73726" title="미뉵">미뉵</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 40
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:31:59">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007149">프로젝트 경력사항 기술할때. 기종이 뭔가요 ?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106354" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/45ccb3d101144c2942c0e2303f19378f?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106354" title="곧방학끝">곧방학끝</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 40
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:26:43">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007145">프로젝트 경력사항 기술할때. 기종이 뭔가요 ?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/106354" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/45ccb3d101144c2942c0e2303f19378f?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/106354" title="곧방학끝">곧방학끝</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 40
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 18:22:40">1시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007106">퇴사 기준</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/76665" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/31e649d58019692131c7057be49266bf?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/76665" title="jef">jef</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 522
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:56:49">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007064">빗썸 테크 아카데미 교육 괜찮을까요??</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124580" class="avatar-photo"><img
														src="https://avatars.githubusercontent.com/u/28558856?v=4"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124580"
															title="vkrh0406">vkrh0406</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 8
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:17:46">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007055">마감 스트레스 심하면 개발자하기 힘드나요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/115529" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/22edde8ae98884db499d450bc93eb631?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/115529"
															title="whoisroqkfwk">whoisroqkfwk</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 237
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:08:40">3시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007035">파이썬 코테 스터디원 구합니다(대구)</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124538" class="avatar-photo"><img
														src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124538" title="gift">gift</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 16:48:31">3시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007012">[앵콜교육/선착순마감] Java/Spring 및
												4차산업 융합 SW개발자 실무과정</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/120209" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/77a2f41e306efeea133504a351c529e3?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/120209" title="유욱재">유욱재</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 30
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 16:24:25">3시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007001">토이 프로젝트 UI/UX 개발자 모십니다.</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/123612" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/06e081f79e4baba639c224d75772157e?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/123612" title="자바를잡자">자바를잡자</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 10
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 16:14:50">3시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1006999">개발자 분들 3대 몇이세요</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124180" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/8777e85e6b66ed136948a9ea5dca8861?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124180" title="깡수수">깡수수</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 85
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 16:10:55">4시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1006988">개발용 노트북.. 갤럭시북 어떤가요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/40120" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/238339bde18570623af5320b49343960?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/40120" title="비비빜">비비빜</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 285
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 16:01:17">4시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1006983">패캠 프론트엔드 강의 결제직전인데 커리큘럼한번 봐주실
												수 있을까요?</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/123138" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/bf0ad55210eb6fa26acf22efed23696e?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/123138"
															title="하늘나는고래">하늘나는고래</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 20
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 15:57:27">4시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1006971">보충역 산업요원을 뽑는회사 질문 있습니다</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124426" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/19b27a95021c828bbb1d0090b6d615d4?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124426" title="테스터21">테스터21</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 39
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 15:49:07">4시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1006787">알레르기가 진짜 무서운거네요 ㅠㅠ</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/121629" class="avatar-photo"><img
														src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/121629" title="마하카스">마하카스</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 535
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 13:56:42">6시간
																전</span>
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
				<div class="col-sm-4 main-block-right">


					<div class="main-block">
						<script async=""
							src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- okkyad_250x250 -->
						<ins class="adsbygoogle"
							style="display: inline-block; width: 151px; height: 250px;"
							data-ad-client="ca-pub-8103607814406874"
							data-ad-slot="4095178752" data-adsbygoogle-status="done"
							data-ad-status="filled">
							<ins id="aswift_0_expand" tabindex="0" title="Advertisement"
								aria-label="Advertisement"
								style="border: none; height: 250px; width: 151px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;">
								<ins id="aswift_0_anchor"
									style="border: none; height: 250px; width: 151px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;">
									<iframe id="aswift_0" name="aswift_0"
										style="left: 0; position: absolute; top: 0; border: 0; width: 151px; height: 250px;"
										sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
										width="151" height="250" frameborder="0"
										src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=250&amp;twa=1&amp;slotname=4095178752&amp;adk=3251386753&amp;adf=1900951953&amp;pi=t.ma~as.4095178752&amp;w=151&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1627036842&amp;psa=1&amp;format=151x250&amp;url=https%3A%2F%2Fokky.kr%2F&amp;flash=0&amp;fwr=0&amp;rh=250&amp;rw=151&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627036842802&amp;bpp=26&amp;bdt=42&amp;idt=50&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;correlator=6838673989473&amp;frm=20&amp;pv=2&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627036843&amp;ga_hid=2142981167&amp;ga_fc=1&amp;u_tz=540&amp;u_his=5&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=792&amp;ady=449&amp;biw=943&amp;bih=919&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C31061979%2C20211866%2C21067496&amp;oid=3&amp;pvsid=1804935848237523&amp;pem=707&amp;ref=https%3A%2F%2Fokky.kr%2Flogin%2Fauth%3Flogout&amp;eae=0&amp;fc=640&amp;brdim=-8%2C-8%2C-8%2C-8%2C1920%2C0%2C976%2C1056%2C960%2C936&amp;vis=1&amp;rsz=%7C%7CeE%7C&amp;abl=CS&amp;pfx=0&amp;fu=1024&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=PeP1Toh7mM&amp;p=https%3A//okky.kr&amp;dtd=62"
										marginwidth="0" marginheight="0" vspace="0" hspace="0"
										allowtransparency="true" scrolling="no" allowfullscreen="true"
										data-google-container-id="a!1"
										data-google-query-id="CJyl1MiA-fECFQL8vQod2YsD9A"
										data-load-complete="true"></iframe>
								</ins>
							</ins>
						</ins>
						<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
					</div>
					<div class="main-block">
						<h4 class="main-header">
							<i class="fa fa-code"></i> Tech <a href="/articles/tech"
								class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a>
						</h4>
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="article-middle-block clearfix">
									<div class="list-tag clearfix" style="">
										<a href="/articles/tips"
											class="list-group-item-text item-tag label label-info"><i
											class="fa fa-code"></i> Tips &amp; 강좌</a> <a
											href="/articles/tagged/%EA%B3%B5%EC%9E%A5%EC%9E%90%EB%8F%99%ED%99%94"
											class="list-group-item-text item-tag label label-gray ">공장자동화</a>
										<a
											href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%EA%B3%B5%EC%9E%A5"
											class="list-group-item-text item-tag label label-gray ">스마트공장</a>
										<a
											href="/articles/tagged/%EC%84%BC%EC%84%9C%EB%8D%B0%EC%9D%B4%ED%84%B0"
											class="list-group-item-text item-tag label label-gray ">센서데이터</a>
										<a
											href="/articles/tagged/%EB%A7%88%ED%81%AC%EB%B2%A0%EC%9D%B4%EC%8A%A4"
											class="list-group-item-text item-tag label label-gray ">마크베이스</a>
										<a
											href="/articles/tagged/%EC%9D%B4%EC%83%81%ED%83%90%EC%A7%80"
											class="list-group-item-text item-tag label label-gray ">이상탐지</a>
										<a href="/articles/tagged/%EC%8B%9C%EA%B3%84%EC%97%B4db"
											class="list-group-item-text item-tag label label-gray ">시계열db</a>
										<a href="/articles/tagged/mes"
											class="list-group-item-text item-tag label label-gray ">mes</a>
										<a
											href="/articles/tagged/%EC%98%88%EC%A7%80%EB%B3%B4%EC%A0%84"
											class="list-group-item-text item-tag label label-gray ">예지보전</a>
										<a
											href="/articles/tagged/%EC%83%9D%EC%82%B0%EA%B4%80%EB%A6%AC%EC%8B%9C%EC%8A%A4%ED%85%9C"
											class="list-group-item-text item-tag label label-gray ">생산관리시스템</a>
									</div>
									<h5>
										<a href="/article/1006631">Raspberry pi 4를 이용해서 온습도 감시
											시스템을 구축해 보자</a>
									</h5>
									<div class="list-group-item-author clearfix">




										<div class="avatar clearfix avatar-x-small pull-right">
											<a href="/user/info/122667" class="avatar-photo"><img
												src="//www.gravatar.com/avatar/594aed2d64326e4e1efd611614d3cab9?d=identicon&amp;s=10"></a>
											<div class="avatar-info">
												<a class="nickname" href="/user/info/122667"
													title="friendsmachbase">friendsmachbase</a>
												<div class="activity">
													<span class="fa fa-flash"></span> 60
												</div>
												<div class="date-created">
													<span class="timeago" title="2021-07-23 11:17:45">8시간
														전</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="article-middle-block clearfix">
									<div class="list-tag clearfix" style="">
										<a href="/articles/tips"
											class="list-group-item-text item-tag label label-info"><i
											class="fa fa-code"></i> Tips &amp; 강좌</a> <a
											href="/articles/tagged/parent"
											class="list-group-item-text item-tag label label-gray ">parent</a>
										<a
											href="/articles/tagged/%EC%A0%9C%EC%9D%B4%EC%BF%BC%EB%A6%AC"
											class="list-group-item-text item-tag label label-gray ">제이쿼리</a>
										<a href="/articles/tagged/children"
											class="list-group-item-text item-tag label label-gray ">children</a>
										<a href="/articles/tagged/traversing"
											class="list-group-item-text item-tag label label-gray ">traversing</a>
										<a href="/articles/tagged/jquery"
											class="list-group-item-text item-tag label label-gray ">jquery</a>
										<a href="/articles/tagged/eq"
											class="list-group-item-text item-tag label label-gray ">eq</a>
									</div>
									<h5>
										<a href="/article/1005953">JQuery, Traversing. 제이쿼리...
											위치찾기. eq, parent.</a>
									</h5>
									<div class="list-group-item-author clearfix">




										<div class="avatar clearfix avatar-x-small pull-right">
											<a href="/user/info/122236" class="avatar-photo"><img
												src="https://phinf.pstatic.net/contact/20210601_186/1622512039205qnJL4_JPEG/blog_pic.jpg"></a>
											<div class="avatar-info">
												<a class="nickname" href="/user/info/122236" title="최현일">최현일</a>
												<div class="activity">
													<span class="fa fa-flash"></span> 160
												</div>
												<div class="date-created">
													<span class="timeago" title="2021-07-22 15:17:50">1일
														전</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="article-middle-block clearfix">
									<div class="list-tag clearfix" style="">
										<a href="/articles/tips"
											class="list-group-item-text item-tag label label-info"><i
											class="fa fa-code"></i> Tips &amp; 강좌</a> <a
											href="/articles/tagged/machbase"
											class="list-group-item-text item-tag label label-gray ">machbase</a>
										<a
											href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%EA%B3%B5%EC%9E%A5"
											class="list-group-item-text item-tag label label-gray ">스마트공장</a>
										<a href="/articles/tagged/anomalydetection"
											class="list-group-item-text item-tag label label-gray ">anomalydetection</a>
										<a
											href="/articles/tagged/%EB%A7%88%ED%81%AC%EB%B2%A0%EC%9D%B4%EC%8A%A4"
											class="list-group-item-text item-tag label label-gray ">마크베이스</a>
										<a
											href="/articles/tagged/%EC%9D%B4%EC%83%81%ED%83%90%EC%A7%80"
											class="list-group-item-text item-tag label label-gray ">이상탐지</a>
										<a href="/articles/tagged/ai"
											class="list-group-item-text item-tag label label-gray ">ai</a>
										<a
											href="/articles/tagged/%EC%98%88%EC%A7%80%EB%B3%B4%EC%A0%84"
											class="list-group-item-text item-tag label label-gray ">예지보전</a>
										<a
											href="/articles/tagged/%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5"
											class="list-group-item-text item-tag label label-gray ">인공지능</a>
										<a
											href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8C%A9%ED%86%A0%EB%A6%AC"
											class="list-group-item-text item-tag label label-gray ">스마트팩토리</a>
									</div>
									<h5>
										<a href="/article/1003746">DAD(Deep Anomaly Detection, 이상
											탐지)란?</a>
									</h5>
									<div class="list-group-item-author clearfix">




										<div class="avatar clearfix avatar-x-small pull-right">
											<a href="/user/info/122667" class="avatar-photo"><img
												src="//www.gravatar.com/avatar/594aed2d64326e4e1efd611614d3cab9?d=identicon&amp;s=10"></a>
											<div class="avatar-info">
												<a class="nickname" href="/user/info/122667"
													title="friendsmachbase">friendsmachbase</a>
												<div class="activity">
													<span class="fa fa-flash"></span> 60
												</div>
												<div class="date-created">
													<span class="timeago" title="2021-07-20 13:52:50">3일
														전</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="main-block">
						<h4 class="main-header">
							<i class="fa fa-quote-left"></i> 칼럼 <a href="/articles/columns"
								class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a>
						</h4>
						<div class="panel panel-default">
							<div class="panel-body">


								<a href="/articles/tagged/%ED%81%B4%EB%A6%B0%EC%BD%94%EB%93%9C"
									class="list-group-item-text item-tag label label-gray ">클린코드</a>
								<a href="/articles/tagged/%EC%95%A0%EC%9E%90%EC%9D%BC"
									class="list-group-item-text item-tag label label-gray ">애자일</a>
								<h5>
									<a href="/article/991371">번역) 애자일의 몰락과 소프트웨어 장인정신의 비극</a>
								</h5>
								<p class="main-block-desc">
									&nbsp;<a href="/article/991371"> 안녕하세요. 다시 클린 코드의 저자로 유명한
										엉클 밥, 로버트 C. 마틴의 블로그 글 번역으로 돌아왔습니다. 이번 글은 상당히 격한 어조의 독백 형식
										글인데...</a>
								</p>
							</div>
						</div>
					</div>
					<div class="main-block">
						<h4 class="main-header">
							<i class="fa fa-book"></i> 학원/홍보 <a href="/articles/promote"
								class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a>
						</h4>
						<div class="panel panel-default">
							<ul class="list-group">
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007099">AWS클라우드 아키텍처 설계 및 운영엔지니어 양성 학원
												(국비지원)</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/115863" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/6dde74d7c3814093acbbc68819e370ab?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/115863"
															title="공부하는 댕댕이">공부하는 댕댕이</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 12k
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:51:04">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007104">제주도 노형동 수학학원 중등 고등학생 초등 연동
												영어학원 모의고사 영수 종합학원</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/123445" class="avatar-photo"><img
														src="https://lh3.googleusercontent.com/a/AATXAJzR7t9S0-0iSzAjFt3UgXq7iMfCJadhaJluVkKE=s96-c"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/123445" title="설희">설희</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 130
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:54:53">2시간
																전</span>
														</div>
													</div>
												</div>
											</div>
										</h5>
									</div>
								</li>
								<li
									class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
									<div class="list-title-wrapper">
										<h5 class="list-group-item-heading">
											<a href="/article/1007098">영통 중학생 영어과외 매탄동 망포동 초등 고등 국어
												수학과외</a>
											<div class="list-group-item-author pull-right clearfix">




												<div class="avatar clearfix avatar-x-small ">
													<a href="/user/info/124566" class="avatar-photo"><img
														src="//www.gravatar.com/avatar/df474c52a66d6b82bb5ce5502bf59563?d=identicon&amp;s=10"></a>
													<div class="avatar-info">
														<a class="nickname" href="/user/info/124566"
															title="779774">779774</a>
														<div class="activity">
															<span class="fa fa-flash"></span> 80
														</div>
														<div class="date-created">
															<span class="timeago" title="2021-07-23 17:49:34">2시간
																전</span>
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
					<script async=""
						src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- okjspad_160x500 -->
					<ins class="adsbygoogle"
						style="display: inline-block; width: 160px; height: 500px"
						data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"
						data-adsbygoogle-status="done" data-ad-status="filled">
						<ins id="aswift_1_expand"
							style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"
							tabindex="0" title="Advertisement" aria-label="Advertisement">
							<ins id="aswift_1_anchor"
								style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;">
								<iframe id="aswift_1" name="aswift_1"
									style="left: 0; position: absolute; top: 0; border: 0; width: 160px; height: 500px;"
									sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
									width="160" height="500" frameborder="0"
									src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627036842&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2F&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627036842829&amp;bpp=1&amp;bdt=70&amp;idt=131&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;prev_fmts=151x250%2C0x0&amp;nras=1&amp;correlator=6838673989473&amp;frm=20&amp;pv=1&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627036843&amp;ga_hid=2142981167&amp;ga_fc=0&amp;u_tz=540&amp;u_his=5&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=20&amp;biw=943&amp;bih=919&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C31061979%2C20211866%2C21067496&amp;oid=3&amp;pvsid=1804935848237523&amp;pem=707&amp;ref=https%3A%2F%2Fokky.kr%2Flogin%2Fauth%3Flogout&amp;eae=0&amp;fc=896&amp;brdim=-8%2C-8%2C-8%2C-8%2C1920%2C0%2C976%2C1056%2C960%2C936&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=1024&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;xpc=pBfuzfpESV&amp;p=https%3A//okky.kr&amp;dtd=134"
									marginwidth="0" marginheight="0" vspace="0" hspace="0"
									allowtransparency="true" scrolling="no" allowfullscreen="true"
									data-google-container-id="a!2"
									data-google-query-id="COzE2siA-fECFRbIfAodCpYB_Q"
									data-load-complete="true"></iframe>
							</ins>
						</ins>
					</ins>
					<script>
	                        (adsbygoogle = window.adsbygoogle || []).push({});
	                   </script>
				</div>
			</div>
			<div id="footer" class="footer" role="contentinfo">
				<div class="row">
					<div class="col-sm-9">
						<div style="float: left; margin-right: 10px; height: 100px;">
							<img src="/assets/images/okky_logo_footer.png" alt="footer">
						</div>
						<div>
							<a href="/intro/about">About OKKY</a> | <a href="/user/privacy"
								data-toggle="modal" data-target="#userPrivacy">개인정보보호</a> | <a
								href="/intro/ad">광고문의</a> | <a href="mailto:info@okky.kr">Contact</a>
							| <a href="https://www.facebook.com/okky.sns" target="_blank">Facebook</a>
							| <a href="https://github.com/okjsp/okky" target="_blank">Github</a>
							v1.5.4
							<hr style="margin: 8px 0;">
							<strong>상호명</strong> : 이브레인 | <strong>대표명</strong> : 노상범 | <strong>사업자등록번호</strong>
							: 144-81-32887 | <strong>문의</strong> : info@okky.kr <br> <strong>주소</strong>
							: 서울 강남구 봉은사로 303 TGL경복빌딩 502호 (06103) <br> @ 2021 <a
								href="http://www.ebrain.kr" target="_blank">eBrain
								Management</a>
						</div>
					</div>
					<div class="sponsor-banner col-sm-3">
						<div class="sponsor-banner-head">Sponsored by</div>
						<div class="sponsor-banner-images">
							<a href="https://www.inames.co.kr" target="_blank"><img
								src="/assets/images/spb_inames.png" alt="아이네임즈"></a> <a
								href="https://www.toast.com/" target="_blank"><img
								src="/assets/images/spb_nhncloud.png" alt="NHN Cloud"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
            var contextPath = "";
            var encodedURL = "%2F";
        </script>

	<script src="/assets/js/application.js" type="text/javascript"></script>
	<script src="/assets/js/apps/search.js" type="text/javascript"></script>
	<script>
        $(function () {
          $('.timeago').timeago();
        });
    </script>

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