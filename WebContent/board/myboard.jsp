<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="ko" class="no-js"><!--<![endif]-->
<head>

	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
	<title>YWHY - 안녕하세요</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="_csrf_parameter" content="_csrf" />
	<meta name="_csrf_header" content="X-CSRF-TOKEN" />
	<meta name="_csrf" content="d63a7b3b-13a3-49d5-9a01-a116f355ec55" />
	<link rel="shortcut icon" href="../images/logo/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="../images/icon_57x57.png">
	<link rel="apple-touch-icon" sizes="114x114" href="../images/icon_114x114.png">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
	<link rel="stylesheet" href="../css/application2.css">
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
	<meta property="og:type" content="article">
	<meta property="og:site_name" content="OKKY">
	<meta property="og:url" content="https://okky.kr/article/1007659">
	<meta property="og:description" content=" 안녕하세요.  처음 글을 써보네요..반갑습니다!  요새 너무 날씨가 덥네요..  컴퓨터 앞에서 있으니 더 더운것 같아요...  다들 더위 조심하세요~    ">
	<meta property="og:title" content="OKKY | 안녕하세요">
	<meta property="dable:item_id" content="1007659">
	<meta property="dable:author" content="rita_dev">
	<meta property="article:section" content="life">
	<meta property="article:published_time" content="2021-07-25T16:04:42Z">		
</head>
<body>
	<div class="layout-container">
		<div class="main ">

			<div class="sidebar"><!-- 메뉴 시작 -->
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
			</div><!-- 메뉴끝 -->

			<div id="article" class="content" role="main">

				<div class="main-banner-wrapper">
                   <div class="main-banner">
                   	  <a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg" /></a>
                   </div>
                </div>

			    <div class="nav" role="navigation">
			        <a class="create btn btn-success btn-wide pull-right" href="create.jsp"><i class="fa fa-pencil"></i> 새 글 쓰기</a>
			        <h4>사는얘기</h4>
			    </div>

				<div class="alert alert-success alert-dismissible" role="alert">
			       <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			       <ul>
						<li>글이 등록 되었습니다.</li>
			        </ul>
			    </div>
	
    		<div class="panel panel-default clearfix fa-">
        		<div class="panel-heading clearfix">
					<div class="avatar clearfix avatar-medium pull-left">
						<a href="/user/info/124651" class='avatar-photo'><img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40"/></a>
						<div class="avatar-info">
							<a class="nickname" href="/user/info/124651" title="rita_dev">rita_dev</a>
							<div class="activity"><span class="fa fa-flash"></span> 10</div>
							<div class="date-created"><span class="timeago" title="2021-07-25T16:04:42">2021-07-25 16:04:42</span></div>
						</div>
					</div>

			        <div class="content-identity pull-right">
			        	<div class="content-identity-count"><i class="fa fa-comment"></i> 0</div>
			            <div class="content-identity-count"><i class="fa fa-eye"></i> 0</div>
			         </div>
       			</div>
        		<div class="content-container clearfix">
            		<div id="content-body" class="panel-body content-body pull-left">
                		<div class="content-tags">
                   			<span class="list-group-item-text article-id">#1007659</span>
							<a href="/articles/life" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 사는얘기</a>
                		</div>
                		<h2 class="panel-title">
                    	안녕하세요
               			</h2>
                		<hr/>
                		<article class="content-text" itemprop="articleBody">
                    		<p style="color:rgb( 51 , 51 , 51 )">안녕하세요.</p><p style="color:rgb( 51 , 51 , 51 )">처음 글을 써보네요..반갑습니다!</p><p style="color:rgb( 51 , 51 , 51 )">요새 너무 날씨가 덥네요..</p><p style="color:rgb( 51 , 51 , 51 )">컴퓨터 앞에서 있으니 더 더운것 같아요...</p><p style="color:rgb( 51 , 51 , 51 )">다들 더위 조심하세요~</p><p style="color:rgb( 51 , 51 , 51 )"><br /></p>
                		</article>
           			</div>

            		<div id="content-function" class="content-function pull-right text-center">
                		<div class="content-function-group">
							<div class="note-evaluate-wrapper">
								<a href="javascript://" class="note-vote-btn" role="button" data-type="assent" data-eval="true" data-id="2444941">
									<i id="note-evaluate-assent-2444941" class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="추천"></i>
								</a>		
								<div id="content-vote-count-2444941" class="content-eval-count">0</div>			
								<a href="javascript://" class="note-vote-btn" role="button" data-type="dissent" data-eval="true" data-id="2444941">
									<i id="note-evaluate-dissent-2444941" class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="반대"></i>
								</a>
							</div>
                		</div>
		                <div class="content-function-group article-scrap-wrapper">
		                    <a href="javascript://" id="article-scrap-btn" data-type="scrap"><i class="fa fa-bookmark " data-toggle="tooltip" data-placement="left" title="스크랩"></i></a>
		                    <div id="article-scrap-count" class="content-count">0</div>
		                </div>
            		</div>
		            <div class="content-function-cog share-btn-wrapper">
		                <div class="dropdown">
		                    <a href="http://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fokky.kr%2Farticle%2F1007659" class="btn-facebook-share"><i class="fa fa-facebook-square fa-fw" data-toggle="tooltip" data-placement="left" title="페이스북 공유"></i></a>
		                </div>

		                <div class="dropdown">
		                	<form action="/article/delete/1007659" method="post" name="article-delete-form" id="article-delete-form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
		               			<input type="hidden" name="_method" value="DELETE" id="_method">
		                        <div class="dropdown">
		                            <a href="javascript://" data-toggle="dropdown"><i class="fa fa-cog" data-toggle="tooltip" data-placement="left" title="게시물 설정"></i></a>
		                            <ul class="dropdown-menu" role="menu">
		                                <li><a href="/article/edit/1007659" class="edit"><i class="fa fa-edit fa-fw"></i> 수정 </a></li>
		                                <li><a href="javascript://" id="article-delete-btn"><i class="fa fa-trash-o fa-fw"></i> 삭제 </a></li>   
		                            </ul>
		                        </div>
		                    </form>
		                </div>
            		</div>
        		</div>
    		</div>


			<div class="main-banner-wrapper">
		    	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		    	<!-- 728-90_Ressponsive -->
	        	<ins class="adsbygoogle"
	         	style="display:inline-block;width:728px;height:90px"
	         	data-ad-client="ca-pub-8103607814406874"
	         	data-ad-slot="8622179990"></ins>
	        	<script>
	         	(adsbygoogle = window.adsbygoogle || []).push({});
	       		</script>
	        </div>
	
    		<div class="panel panel-default clearfix">
        
		        <!-- List group -->
		        <ul class="list-group">
		            <li id="note-title" class="list-group-item note-title">
		                <h3 class="panel-title">댓글 <span id="note-count">0</span></h3>
		            </li>
		            <li class="list-group-item note-form clearfix">
		            	<div class="panel-body">
		                	<div style="margin-left: 5px;">
								<div class="avatar clearfix avatar-medium ">
									<a href="/user/info/124651" class='avatar-photo'><img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40"/></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/124651" title="rita_dev">rita_dev</a>
											<div class="activity block"><span class="fa fa-flash"></span> 0</div>
										</div>
								</div>
                            </div>
	                        <h5 class="text-center" style="background-color:#FFEB3B;padding:0.5em;font-weight: bold;"><a href="/user/edit" class="link">이메일 인증</a>을 완료하여야 댓글을 등록할 수 있습니다.</h5>
	                    </div>
            		</li>
       			 </ul>
    		</div>
		</div>

		<form action="/article/dissent/1007659" method="post" name="note-dissent-form" id="note-dissent-form">
			<input type="hidden" name="_method" value="PUT" id="_method">
		</form>
		<form action="/article/assent/1007659" method="post" name="note-assent-form" id="note-assent-form">
			<input type="hidden" name="_method" value="PUT" id="_method">
		</form>
		<form action="/article/unvote/1007659" method="post" name="note-unvote-form" id="note-unvote-form">
			<input type="hidden" name="_method" value="PUT" id="_method">
		</form>
		<form action="/article/selectNote/1007659" method="post" name="note-select-form" id="note-select-form">
			<input type="hidden" name="_method" value="PUT" id="_method">
		</form>
		<form action="/article/deselectNote/1007659" method="post" name="note-deselect-form" id="note-deselect-form">
			<input type="hidden" name="_method" value="PUT" id="_method">
		</form>
		<form action="/article/scrap/1007659" method="post" name="article-scrap-form" id="article-scrap-form">
		</form>
        <div class="right-banner-wrapper">
	    	<div class="google-ad">
	        	<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	            <!-- okjspad_160x500 -->
	            <ins class="adsbygoogle"
	             style="display:inline-block;width:160px;height:500px"
	             data-ad-client="ca-pub-8103607814406874"
	             data-ad-slot="6573675943"></ins>
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

<script>
	var contextPath = "";
	var encodedURL = "%2Farticle%2F1007659";
</script>
        
<script src="../js/application.js" type="text/javascript"></script>
<script src="../js/apps/search.js" type="text/javascript"></script>
<script src="../js/apps/notification.js" type="text/javascript"></script>
<div id="fb-root"></div>
<script src="../js/libs/prism.js" type="text/javascript"></script>
<script src="../js/apps/note.js" type="text/javascript"></script>
<script src="../js/apps/vote.js" type="text/javascript"></script>
<script src="../js/apps/scrap.js" type="text/javascript"></script>
<script src="../js/apps/article.js" type="text/javascript"></script>
<script>
    (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=1539685662974940&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

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

</body>
</html>
