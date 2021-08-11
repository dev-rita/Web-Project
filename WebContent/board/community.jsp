<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

      <meta charset="utf-8">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      
      <title>YWHY - Tech</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="_csrf_parameter" content="_csrf">
      <meta name="_csrf_header" content="X-CSRF-TOKEN">
      <meta name="_csrf" content="5fbb83aa-5724-4446-befd-340d8585ddd0">
      <link rel="shortcut icon" href="../images/logo/favicon.ico" type="image/x-icon">
      <link rel="apple-touch-icon" href="../images/icon_57x57.png">
      <link rel="apple-touch-icon" sizes="114x114" href="../images/icon_114x114.png">
      <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
      
      <link rel="stylesheet" href="../css/application2.css">
      
   	  <script src="https://www.googletagservices.com/activeview/js/current/osd.js"></script>
   	  <script src="https://partner.googleadservices.com/gampad/cookie.js?domain=okky.kr&amp;callback=_gfp_s_&amp;
   	  client=ca-pub-8103607814406874&amp;cookie=ID%3D3cf781d34f9bf70a-223fe9dafdc9004a%3AT%3D1625226002%3ART%3D1625226002%3AS%3DALNI_MYjOEKNYN7JbiPrclsyxUknsOtoSQ"></script>
   	  <script src="https://pagead2.googlesyndication.com/pagead/js/r20210720/r20190131/show_ads_impl.js" id="google_shimpl"></script>
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
      
   	  <meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
   	  <meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
   	  <meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <link rel="preload" href="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr" as="script">
   	  <script type="text/javascript" src="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr"></script>
   	  <link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=okky.kr" as="script">
   	  <script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=okky.kr"></script>
   	  <meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
   	  <meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
   	  <meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
   	  <meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
   	  <style type="text/css"></style>
</head>
<body>
<div class="layout-container">
	<div class="main">
   
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
     <div id="list-article" class="content scaffold-list life-list" role="main">
     	<div class="nav" role="navigation">
        	<a class="create btn btn-success btn-wide pull-right" href="create.jsp"><i class="fa fa-pencil"></i> 새 글 쓰기</a>
            
            <h4>사는얘기</h4>
            <form id="category-filter-form" name="category-filter-form" method="get" action="/acticles/lefe">
               <div class="category-filter-wrapper">
                  <div class="category-filter-query pull-right">
                     <div class="input-group input-group-sm">
                        <input type="search" name="query" id="search-field" class="form-control" placeholder="검색어" value="">
                        <span class="input-group-btn">
                           <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                        </span>
                     </div>
                  </div>
                  <ul class="list-sort pull-left">
                     <li><a href="/articles/life?query=&amp;sort=id&amp;order=desc" data-sort="id" data-order="desc" class="category-sort-link active">최신순</a></li>
                     <li><a href="/articles/life?query=&amp;sort=voteCount&amp;order=desc" data-sort="voteCount" data-order="desc" class="category-sort-link">추천순</a></li>
                     <li><a href="/articles/life?query=&amp;sort=noteCount&amp;order=desc" data-sort="noteCount" data-order="desc" class="category-sort-link">댓글순</a></li>
                     <li><a href="/articles/life?query=&amp;sort=scrapCount&amp;order=desc" data-sort="scrapCount" data-order="desc" class="category-sort-link">스크랩순</a></li>
                     <li><a href="/articles/life?query=&amp;sort=viewCount&amp;order=desc" data-sort="viewCount" data-order="desc" class="category-sort-link">조회순</a></li>                     
                  </ul>
                  <input type="hidden" name="sort" id="category-sort-input" value="id">
                  <input type="hidden" name="order" id="category-order-input" value="desc">
               </div>
            </form>
         </div>
         
         <div class="why-choice">
            <div class="panel panel-default">
               <ul class="list-group">
                  <li class="list-group-item list-group-item-question list-group-has-note clearfix">
                     <div class="list-title-wrapper clearfix">
                        <div class="list-tag clearfix">
                           <span class="list-group-item-text article-id">#1005955</span>
                           <a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 공지사항</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">3차 업데이트 미리보기</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">2차</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">업데이트</a>
                           <a href="/articles/tagged/okkyjobs" class="list-group-item-text item-tag label label-gray">YWHYjobs</a>
                        </div>
                        <h5 class="list-group-item-heading list-group-item-evaluate">
                           <a href="/article/1005955">[YWHY JOBs] 2차, 3차 업데이트 안내</a>
                        </h5>
                     </div>
                        <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                              <ul>
                                 <li class=""><i class="item-icon fa fa-comment"></i>2</li>
                                 <li class=""><i class="item-icon fa fa-thumbs-up"></i>8</li>
                                 <li class=""><i class="item-icon fa fa-eye"></i>849</li>
                              </ul>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                           <div class="avatar clearfix avatar-list">
                              <a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&amp;s=30"></a>
                              <div class="avatar-info">
                                 <a class="nickname" href="/user/infor/45597" title="OKKY">OKKY</a>
                                 <div class="activity"><span class="fa fa-flash"></span>2k
                                 </div>
                                 <div class="date-created"><span class="timeago" title="2021-07-22T15:19:04">2021-07-22 15:19:04</span></div>
                              </div>
                           </div>
                     </div>
                     </li>
               </ul>
            </div>
         </div>
         <div class="main-banner-wrapper">
            <div class="main-banner">
               <a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg"></a>
            </div>
         </div>
            <div class="panel panel-default life-panel">
               <ul class="list-group">
                     <li class="list-group-item list-group-item-question list-group-has-note clearfix">
                        <div class="list-title-wrapper clearrfix">
                           <div class="list-tag clearfix">
                                 <span class="list-group-item-text article-id">#1006995</span>
                               <a href="/articles/life" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 사는얘기</a>
                           </div>
                           <h5 class="list-group-item-heading list-group-item-evaluate">
                                 <a href="/article/1006995">테스트</a>
                            </h5>
                        </div>
                         <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                                 <ul>
                                    <li class="item-icon-disabled"><i class="item-icon fa fa-comment"></i>0</li>
                                    <li class="item-icon-disabled"><i class="item-icon fa fa-thumbs-up"></i>0</li>
                                    <li class=""><i class="item-icon fa fa-eye"></i>4</li>
                               </ul>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                             <div class="avatar clearfix avtar-list">
                                   <a href="/user/info/106884" class="avatar-photo"><img src="//www.gravatar.com/avatar/8b4ddad17ec0dd8ad9a309757d8f63ab?d=identicon&amp;s=30"></a>
                                 <div class="avatar-info">
                                    <a class="nickname" href="/user/info/106884" title="현재의행복">현재의행복</a>
                                    <div class="activity"><span class="fa fa-flash"></span>32</div>
                                       <div class="date-created"><span class="timeago" title="2021-07-23T16:05:31">2021-07-23 16:05:31</span></div>
                              </div>
                          </div>
                        </div>
                     </li>
               </ul>
            
         </div>
         <div class="text-center">
            <ul class="pagination pagination-sm">
               <li class="prev disabled">
                  <span>«</span>
               </li>
               <li class="active">
                  <span>1</span>
               </li>
               <li>
                  <a href="/articles/life?offset=20&amp;max=20&amp;sort=id&amp;order=desc">2</a>
               </li>
               <li>
                  <a href="/articles/life?offset=40&amp;max=20&amp;sort=id&amp;order=desc">3</a>
               </li>
               <li>
                  <a href="/articles/life?offset=60&amp;max=20&amp;sort=id&amp;order=desc">4</a>
               </li>
               <li>
                  <a href="/articles/life?offset=80&amp;max=20&amp;sort=id&amp;order=desc">5</a>
               </li>
               <li>
                  <a href="/articles/life?offset=100&amp;max=20&amp;sort=id&amp;order=desc">6</a>
               </li>
               <li>
                  <a href="/articles/life?offset=120&amp;max=20&amp;sort=id&amp;order=desc">7</a>
               </li>
               <li>
                  <a href="/articles/life?offset=140&amp;max=20&amp;sort=id&amp;order=desc">8</a>
               </li>
               <li>
                  <a href="/articles/life?offset=160&amp;max=20&amp;sort=id&amp;order=desc">9</a>
               </li>
               <li>
                  <a href="/articles/life?offset=180&amp;max=20&amp;sort=id&amp;order=desc">10</a>
               </li>
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="/articles/life?offset=102540&amp;max=20&amp;sort=id&amp;order=desc">5128</a>   
               </li>
               <li class="next">
                  <a href="/articles/life?offset=20&amp;max=20amp;sort=id&amp;order=desc">»</a>
               </li>
            </ul>
         </div>
     </div>
       <div class="right-banner-wrapper">
         <div class="google-ad">
            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle" style="display:inline-block; width:160px; height:500px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:500px;margin:0;padding:0;position:relative;visibility:visible;width:160px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:500px;margin:0;padding:0;position:relative;visibility:visible;width:160px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627023969&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2Farticles%2Flife&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuODY0LjcxIixbXSxudWxsLG51bGwsbnVsbF0.&amp;dt=1627023969052&amp;bpp=1&amp;bdt=48&amp;idt=20&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dee607629c0fcafee-224c987d33c90088%3AT%3D1622864578%3ART%3D1622864578%3AS%3DALNI_MY7VofQozLmVunGLq3965B6JrT-vw&amp;correlator=5312791754074&amp;frm=20&amp;pv=2&amp;ga_vid=1222471380.1622864577&amp;ga_sid=1627023969&amp;ga_hid=943108740&amp;ga_fc=0&amp;u_tz=540&amp;u_his=4&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=65&amp;biw=1903&amp;bih=969&amp;scr_x=0&amp;scr_y=0&amp;eid=44739548%2C42530672%2C182982000%2C182982200%2C20211866&amp;oid=3&amp;pvsid=3842476153529701&amp;pem=522&amp;wsm=1&amp;ref=https%3A%2F%2Fokky.kr%2Farticles%2Fcommunity&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1920%2C969&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=55Qw5ypKSL&amp;p=https%3A//okky.kr&amp;dtd=24" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" allow="conversion-measurement" data-google-container-id="a!1" data-google-query-id="CNSO-M3Q-PECFY63vAodAf0PYQ" data-load-complete="true"></iframe></ins></ins></ins>
            <script>
               (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
         </div>
       </div>
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
						<a href="../intro/loginbefore_about.jsp">About YWHY</a> | <a href="../user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
	</div>
</div>
<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
<script src="../js/application.js" type="text/javascript"></script>
<script src="../js/apps/search.js" type="text/javascript"></script>
 
 <div id="userPrivacy" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
 	<div class="modal-dialog">
    	<div class="modal-content"></div>
    </div>
 </div>

 <div id="userAgreement" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	 <div class="modal-dialog">
     	<div class="modal-content"></div>
     </div>
 </div>
 
<script>
   $(function(){
      $('.category-sort-link').click(function(e){
         $('#category-sort-input').val($(this).data('sort'));
         $('#category-order-input').val($(this).data('order'));
         e.preventDefault();
         $('#category-filter-form')[0].submit();
      });
   });
</script>
</body>
</html>