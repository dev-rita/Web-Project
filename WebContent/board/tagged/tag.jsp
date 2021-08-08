<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
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


<title>YWHY tag</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf" />
<meta name="_csrf_header" content="X-CSRF-TOKEN" />
<meta name="_csrf" content="d63a7b3b-13a3-49d5-9a01-a116f355ec55" />
<link rel="shortcut icon" href="../../images/logo.png" type="image/x-icon">
<link rel="apple-touch-icon" href="../../images/icon_57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="../../images/icon_114x114.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="../../css/application2.css">

<script>
	(function(w,d,s,l,i){
		w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
		var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
		j.async=true;
		j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M52CW55');
</script>
<!--[if lt IE 9]>
			<script src="/js/libs/html5.js"></script>
			<script src="/assets/libs/respond.src.js"></script>
			<script src="/assets/libs/html5.js"></script>
		<![endif]-->

</head>
<body>
	<div class="layout-container">
		<div class="main ">
			<div class="sidebar">
				<a href="javascript://" class="sidebar-header">
					<%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%> <i
					class="fas fa-bars fa-lg" style="color: #773209"></i>
				</a>
				<h1>
					<div class="logo">
						<a href="../../ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
					</div>
				</h1>

			<%--
            <ul id="search-google-icon" class="nav nav-sidebar nav-sidebar-search-wrapper">
               <li class="nav-sidebar-search"><a href="javascript://"
                  class="link" id="search-google" data-toggle="popover"
                  data-trigger="click" data-original-title="" title=""><i
                     class="fa fa-search"></i></a></li>
            </ul> --%>

				<form id="search-google-form" name="searchMain" class="nav-sidebar-form"
					action="https://www.google.com/search?q=<%=request.getParameter("q")%>"	target="_blank">
					<%-- 내가 만들었던 창은 검색이 되는데 여기는 안된다..왜지 css에서 -webkit뭐시기 삭제했더니 검색이 됐다..?!--%>
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
							<a href="../../signup/login.jsp" class="link"> 
								<i class="fas fa-sign-in-alt"></i> 
								<span class="nav-sidebar-label">로그인</span>
							</a>
						</li>
						<li>
							<a href="../../signup/signup.jsp" class="link"> 
								<i class="fas fa-users"></i>
								<span class="nav-sidebar-label">회원가입</span>
							</a>
						</li>
					</ul>
				</div>

				<ul class="nav nav-sidebar nav-main">
					<li>
						<a href="../questions.jsp" class="link"> 
						<i class="nav-icon fas fa-laptop"></i>
						<span class="nav-sidebar-label">Q&amp;A</span>
						</a>
					</li>
					<li>
						<a href="../community.jsp" class="link">
						<i class="nav-icon fas fa-coins"></i>
						<span class="nav-sidebar-label">커뮤니티</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- 메뉴 끝 -->
			<div id="list-article" class="content scaffold-list" role="main">
				<div class="nav" role="navigation">
					<h4>
						Tagged <span class="item-tag label label-gray">redis</span>
					</h4>
					<div class="category-filter-wrapper">
						<form action="/articles/tagged/redis" method="get" 
						name="category-filter-form" id="category-filter-form">
							<div class="category-filter-query pull-right">
								<div class="input-group input-group-sm">
									<input type="search" name="query" class="form-control" placeholder="검색어" value="" />
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</div>
							<ul class="list-sort pull-left">
								<li>
									<a href="/articles/tagged/redis?query=&sort=id&order=desc"
									data-sort="id" data-order="desc" class="category-sort-link active">최신순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=voteCount&order=desc"
									data-sort="voteCount" data-order="desc" class="category-sort-link ">추천순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=noteCount&order=desc"
									data-sort="noteCount" data-order="desc" class="category-sort-link ">댓글순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=scrapCount&order=desc"
									data-sort="scrapCount" data-order="desc" class="category-sort-link ">스크랩순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=viewCount&order=desc"
									data-sort="viewCount" data-order="desc" class="category-sort-link ">조회순</a>
								</li>
							</ul>
							<input type="hidden" name="sort" id="category-sort-input"
							value="id" /> <input type="hidden" name="order" id="category-order-input" value="desc" />
						</form>
					</div>
				</div>
				<div class="panel panel-default">
					<!-- Table -->
					<ul class="list-group">
						<li class="list-group-item list-group-has-note clearfix">
							<div class="list-title-wrapper clearfix">
								<div class="list-tag clearfix">
									<span class="list-group-item-text article-id">#1007515</span>
									<a href="/articles/tips" class="list-group-item-text item-tag label label-info">
										<i class="fa fa-code"></i> Tips & 강좌</a>
									<a href="/articles/tagged/redis"
									class="list-group-item-text item-tag label label-gray ">redis</a>
								</div>
								<h5 class="list-group-item-heading">
									<a href="/article/1007515"> [redis] redis의 트랜잭션 </a>
								</h5>
							</div>
							<div class="list-summary-wrapper clearfix">
								<div class="list-group-item-summary clearfix">
									<ul>
										<li class=""><i class="item-icon fa fa-comment "></i> 1</li>
										<li class=""><i class="item-icon fa fa-thumbs-up"></i> 1</li>
										<li class=""><i class="item-icon fa fa-eye"></i> 167</li>
									</ul>
								</div>
							</div>
							<div class="list-author-wrapper clearfix">
								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list ">
										<a href="/user/info/96462" class='avatar-photo'>
											<img src="//www.gravatar.com/avatar/0e6a2e3bfa2b3b7ed5b5902cbe4aac79?d=identicon&s=30" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/96462" title="사바라다">사바라다</a>
											<div class="activity">
												<span class="fa fa-flash"></span> 303
											</div>
											<div class="date-created">
												<span class="timeago" title="2021-07-24T18:12:03">2021-07-24 18:12:03</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="list-group-item list-group-no-note clearfix">
							<div class="list-title-wrapper clearfix">
								<div class="list-tag clearfix">
									<span class="list-group-item-text article-id">#883598</span> 
									<a href="/articles/tech-qna" class="list-group-item-text item-tag label label-info">
										<i class="fa fa-database"></i> Tech Q&A</a> 
									<a href="/articles/tagged/python3" 
										class="list-group-item-text item-tag label label-gray ">python3</a>
									<a href="/articles/tagged/%EB%A0%88%EB%94%94%EC%8A%A4"
										class="list-group-item-text item-tag label label-gray ">레디스</a>
									<a href="/articles/tagged/python"
										class="list-group-item-text item-tag label label-gray ">python</a>
									<a href="/articles/tagged/%ED%8C%8C%EC%9D%B4%EC%8D%AC"
										class="list-group-item-text item-tag label label-gray ">파이썬</a>
									<a href="/articles/tagged/redis"
										class="list-group-item-text item-tag label label-gray ">redis</a>
								</div>
								<h5 class="list-group-item-heading">
									<a href="/article/883598"> 파이썬 aws redis 연동문제 에러 </a>
								</h5>
							</div>
							<div class="list-summary-wrapper clearfix">
								<div class="item-evaluate-wrapper pull-right clearfix">
									<div class="item-evaluate">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-thumbs-o-up"></i>
										</div>
										<div class="item-evaluate-count">0</div>
									</div>
									<div class="item-evaluate item-evaluate-no-note">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-question-circle"></i>
										</div>
										<div class="item-evaluate-count">0</div>
									</div>
								</div>
							</div>
							<div class="list-author-wrapper clearfix">
								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list ">
										<a href="/user/info/112519" class='avatar-photo'>
											<img src="//graph.facebook.com/467994301261314/picture?width=30&height=30" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/112519" title="piccaboo">piccaboo</a>
											<div class="activity">
												<span class="fa fa-flash"></span> 20
											</div>
											<div class="date-created">
												<span class="timeago" title="2021-03-09T10:15:27">2021-03-09 10:15:27</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="list-group-item list-group-item-question list-group-has-note clearfix">
							<div class="list-title-wrapper clearfix">
								<div class="list-tag clearfix">
									<span class="list-group-item-text article-id">#1007632</span>
									<a href="/articles/tech-qna"
										class="list-group-item-text item-tag label label-info">
										<i class="fa fa-database"></i> Tech Q&amp;A</a>
									<a href="/articles/tagged/node.js"
										class="list-group-item-text item-tag label label-gray ">node.js</a>
									<a href="/articles/tagged/heroku"
										class="list-group-item-text item-tag label label-gray ">heroku</a>
									<a href="/articles/tagged/mysql"
										class="list-group-item-text item-tag label label-gray ">mysql</a>
								</div>
								<h5 class="list-group-item-heading list-group-item-evaluate">
									<a href="/article/1007632"> 해로쿠 배포 이후 mysql 오류... </a>
								</h5>
							</div>
							<div class="list-summary-wrapper clearfix">
								<div class="item-evaluate-wrapper pull-right clearfix">
									<div class="item-evaluate">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-thumbs-o-up"></i>
										</div>
										<div class="item-evaluate-count">0</div>
									</div>
									<div class="item-evaluate item-evaluate-has-note">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-exclamation-circle"></i>
										</div>
										<div class="item-evaluate-count">2</div>
									</div>
								</div>
							</div>
							<div class="list-group-item-author clearfix">
								<div class="avatar clearfix avatar-list ">
									<a href="/user/info/124220" class="avatar-photo">
									<img src="https://lh3.googleusercontent.com/a/AATXAJyKDUA1ubdXrAnTc1ZPYPPddgbmTS4BNlF-x08Z=s96-c"></a>
									<div class="avatar-info">
										<a class="nickname" href="/user/info/124220" title="이기운">이기운</a>
										<div class="activity">
											<span class="fa fa-flash"></span> 77
										</div>
										<div class="date-created">
											<span class="timeago" title="2021-07-25T12:50:29">2021-07-25 12:50:29</span>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="list-group-item list-group-success clearfix">
							<div class="list-title-wrapper clearfix">
								<div class="list-tag clearfix">
									<span class="list-group-item-text article-id">#807403</span> 
									<a href="/articles/tech-qna"
										class="list-group-item-text item-tag label label-info">
										<i class="fa fa-database"></i> Tech Q&A</a> 
									<a href="/articles/tagged/redis"
										class="list-group-item-text item-tag label label-gray ">redis</a>
									<a href="/articles/tagged/InmemoryDB"
										class="list-group-item-text item-tag label label-gray ">InmemoryDB</a>
									<a href="/articles/tagged/mysql"
										class="list-group-item-text item-tag label label-gray ">mysql</a>
									<a href="/articles/tagged/mariadb"
										class="list-group-item-text item-tag label label-gray ">mariadb</a>
									<a href="/articles/tagged/mongodb"
										class="list-group-item-text item-tag label label-gray ">mongodb</a>
								</div>
								<h5 class="list-group-item-heading">
									<a href="/article/807403"> 인메모리 데이터베이스들을 자동으로 다른 DB 캐시로 쓸 수
										있나요 </a>
								</h5>
							</div>
							<div class="list-summary-wrapper clearfix">
								<div class="item-evaluate-wrapper pull-right clearfix">
									<div class="item-evaluate">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-thumbs-o-up"></i>
										</div>
										<div class="item-evaluate-count">1</div>
									</div>
									<div class="item-evaluate item-evaluate-success">
										<div class="item-evaluate-icon">
											<i class="item-icon fa fa-check-circle"></i>
										</div>
										<div class="item-evaluate-count">1</div>
									</div>
								</div>
							</div>
							<div class="list-author-wrapper clearfix">
								<div class="list-group-item-author clearfix">

									<div class="avatar clearfix avatar-list ">
										<span class="avatar-photo">
											<img src='//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=30' /></span>
										<div class="avatar-info">
											<span class="nickname" title="vaultboy">vaultboy</span>
											<div class="activity">
												<span class="fa fa-lock"></span>
											</div>
											<div class="date-created">
												<span class="timeago" title="2020-10-30T19:39:12">2020-10-30 19:39:12</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="text-center">
					<ul class="pagination pagination-sm">
						<li class="prev disabled"><span> « </span></li>
						<li class="active"><span>1</span></li>
						<li>
							<a href="/articles/tagged/redis?offset=20&max=20&sort=id&order=desc">2</a>
						</li>
						<li>
							<a href="/articles/tagged/redis?offset=40&max=20&sort=id&order=desc">3</a>
						</li>
						<li class="next">
							<a href="/articles/tagged/redis?offset=20&max=20&sort=id&order=desc">»</a>
						</li> 
					</ul>
				</div>
			</div>
			<div class="right-banner-wrapper">
				<div class="google-ad">
					<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- okjspad_160x500 -->
					<ins class="adsbygoogle" style="display: inline-block; width: 160px; height: 500px"
						data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"></ins>
					<script>
	                        (adsbygoogle = window.adsbygoogle || []).push({});
	                  </script>
				</div>
			</div>
			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="../../images/logo_gray.png" style="width:55px; height:55px;">
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
						<a href="../../intro/loginbefore_about.jsp">About YWHY</a> | <a href="../../user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
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
	<script>
    	var contextPath = "";
        var encodedURL = "%2Farticles%2Ftagged%2Fredis";
    </script> 
	<script src="../../js/application.js" type="text/javascript"></script>
	<script src="../../js/search.js" type="text/javascript"></script>
	<script src="../../js/notification.js" type="text/javascript"></script>
	<script src="../../js/questions.js" type="text/javascript"></script> 
	<script>
		$(function() {
		    $('.category-sort-link').click(function(e) {
		        $('#category-sort-input').val($(this).data('sort'));
		        $('#category-order-input').val($(this).data('order'));
		        e.preventDefault();
		        $('#category-filter-form')[0].submit();
		    });
		});
	</script>
</body>
</html>
