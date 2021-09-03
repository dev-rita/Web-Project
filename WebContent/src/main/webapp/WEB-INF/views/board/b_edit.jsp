<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="ko" class="no-js"><!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
<title>YWHY - Article 수정</title>
		
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf" />
<meta name="_csrf_header" content="X-CSRF-TOKEN" />
<meta name="_csrf" content="d63a7b3b-13a3-49d5-9a01-a116f355ec55" />
<link rel="shortcut icon" href="./resources/images/logo/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="../images/icon_57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="../images/icon_114x114.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="./resources/css/application2.css">	
<script>
	(function(w,d,s,l,i){
		w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
		var f=d.getElementsByTagName(s)[0],	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
		j.async=true;
		j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;
		f.parentNode.insertBefore(j,f);
	})
	(window,document,'script','dataLayer','GTM-M52CW55');
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
			<div class="sidebar"><!-- 메뉴시작 -->
            	<a href="javascript://" class="sidebar-header"><%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
               		<i class="fas fa-bars fa-lg" style="color:#773209"></i>
            	</a>
            	<h1>
                	<div class="logo">
                  		<a href="../ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
               		</div>
            	</h1>

			<%--
            <ul id="search-google-icon" class="nav nav-sidebar nav-sidebar-search-wrapper">
               <li class="nav-sidebar-search"><a href="javascript://"
                  class="link" id="search-google" data-toggle="popover"
                  data-trigger="click" data-original-title="" title=""><i
                     class="fa fa-search"></i></a></li>
            </ul>
 			--%>
            	<form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search?q=<%=request.getParameter("q")%>" target="_blank"><%-- 내가 만들었던 창은 검색이 되는데 여기는 안된다..왜지 css에서 -webkit뭐시기 삭제했더니 검색이 됐다..?!--%>
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
			<div id="article-edit" class="content" role="main">
	    		<div class="panel panel-default clearfix">
        			<div class="panel-heading clearfix">
						<div class="avatar clearfix avatar-medium pull-left">
							<a href="/user/info/124651" class='avatar-photo'>
								<img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40"/></a>
							<div class="avatar-info">
								<a class="nickname" href="/user/info/124651" title="rita_dev">rita_dev</a>
								<div class="activity">
									<span class="fa fa-flash"></span> 10
								</div>
								<div class="date-created">
									<span class="timeago" title="2021-07-25T16:04:42">2021-07-25 16:04:42</span>
								</div>
							</div>
						</div>
            			<div class="content-identity pull-right">
                			<div class="article-id">#1007659</div>
                			<div><i class="fa fa-eye"></i> 15</div>
            			</div>
        			</div>
        			<div class="panel-body">
        				<form action="/article/update/1007659" method="post" id="article-form" 
        				class="article-form" role="form" onsubmit="return postForm()">
        					<input type="hidden" name="_method" value="PUT" id="_method">
                			<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
        						<div class="form-group has-feedback">
           							<div>
                						<select id="category" name="categoryCode" class="form-control" required="">
                    						<option value="">게시판을 선택해 주세요.</option>
                        					<option value="life" selected="selected" data-external="false"
                        					 data-anonymity="false">사는얘기</option>
                        					<option value="forum" data-external="false" data-anonymity="false">포럼</option>
                        					<option value="event" data-external="false" data-anonymity="false">IT 행사</option>
                        					<option value="techbook-review" data-external="false" 
                        					data-anonymity="false">기술 서적 리뷰</option>
                        					<option value="gathering" data-external="false" data-anonymity="false">정기모임/스터디</option>
                        					<option value="promote" data-external="false" data-anonymity="false">학원/홍보</option>
                						</select>
            						</div>
        						</div>
								<div class="form-group has-feedback">
    								<div>
    									<input type="text" name="title" required="" value="안녕하세요"
    									 placeholder="제목을 입력해 주세요." class="form-control" id="title">
    								</div>
								</div>
								<div class="form-group has-feedback">
    								<div>
    									<input type="text" name="tagString" value="" 
    									placeholder="Tags," class="form-control" id="tagString">
    								</div>
								</div>

								<div class="form-group has-feedback">
    								<textarea name="text" id="summernote" rows="20" 
    								class="form-control input-block-level">&lt;p style=&quot;
    								color:rgb( 51 , 51 , 51 )&quot;&gt;안녕하세요.&lt;/p&gt;&lt;p style=&quot;
    								color:rgb( 51 , 51 , 51 )&quot;&gt;처음 글을 써보네요..반갑습니다!&lt;/p&gt;&lt;
    								p style=&quot;color:rgb( 51 , 51 , 51 )&quot;&gt;요새 너무 날씨가 덥네요..&lt;/p&gt;&lt;
    								p style=&quot;color:rgb( 51 , 51 , 51 )&quot;&gt;컴퓨터 앞에서 있으니 더 더운것 같아요...&lt;/p&gt;&lt;
    								p style=&quot;color:rgb( 51 , 51 , 51 )&quot;&gt;다들 더위 조심하세요~&lt;/p&gt;&lt;
    								p style=&quot;color:rgb( 51 , 51 , 51 )&quot;&gt;&lt;br /&gt;&lt;/p&gt;</textarea>
								</div>
								<input type="hidden" name="textType" value="HTML" id="textType">

                    			<div class="nav" role="navigation">
                        			<fieldset class="buttons">
	                           			<a href="/article/1007659" class="btn btn-default btn-wide" onclick="return confirm('정말로 취소하시겠습니까?')">취소</a>
	                            		<input type="submit" name="update" class="create btn btn-success btn-wide pull-right" action="update" value="저장" id="update">
                        			</fieldset>
                    			</div>
				          	</fieldset>
				        </form>
					</div>
				</div>
			</div>
           	<div class="right-banner-wrapper">
				<div class="google-ad">
	            	<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	                   <!-- okjspad_160x500 -->
	                <ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px"
	                	data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"></ins>
	                <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
	            </div>
            </div>
    		<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="./resources/images/logo_gray.png" style="width:55px; height:55px;">
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
   	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script>
    	var contextPath = "";
        var encodedURL = "%2Farticle%2Fedit%2F1007659";
    </script>
        
    <script src="./resources/js/application.js" type="text/javascript"></script>
    <script src="./resources/js/apps/search.js" type="text/javascript"></script>
    <script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/libs/typeahead.bundle.js"></script>
	<script type="text/javascript">
			var tagTokenizers = new Bloodhound({
		    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('tagName'),
		    queryTokenizer: Bloodhound.tokenizers.whitespace,
		    remote: {
		      url: '/tag?tagName=%QUERY',
		      wildcard: '%QUERY'
		    }
		});
		
		var tagsInputConfig = {
		        typeaheadjs: {
					displayKey: 'tagName',
				    valueKey: 'tagName',
				    source: tagTokenizers.ttAdapter(),
				    templates: {
				    	suggestion: function(tag){
				    	var query = tag._query.replace(/[.*+\-?^$(){}|[\]\\]/g, '\\$&');
				        var regexp = new RegExp('^(' + query +')', 'g');
				        return '<div>' + tag.tagName.replace(regexp, "<strong>$1</strong>") + ' <span>+' + tag.count + '</span></div>';
					}
				}
		    }
		};
										
		var tagsInputItemAddedEventCallback = function(event) {
		    $(this).parent().find(".tt-input").typeahead("val","");
		};
		
	</script>
	<script type="text/javascript">
		$('input[name=tagString]').tagsinput(tagsInputConfig);
		$('input[name=tagString]').on('itemAdded', tagsInputItemAddedEventCallback);
		
		$('#summernote').summernote({minHeight: 300, lang: 'ko-KR',
		  onInit: function() {
		    if($(window).height() > 400) {
		        $('.note-editable').css('max-height', $(window).height()-100);
		    }
		    $(".note-link-btn").attr("type","button");
		  },
		  onImageUpload: $.onImageUpload($('#summernote'))
		});
		
		function postForm() {
		    $('textarea[name="content.text"]').val($('#summernote').code());
		}
		
		$('#notice').click(function() {
		  if($(this).is(':checked')) {
		    $('#noticeCategoryList').show();
		  } else {
		    $('#noticeCategoryList').hide();
		    $('input[name="notices"]').prop('checked', false);
		  }
		});
	</script>
	<script type="text/javascript">
		setInterval(function(){
			$.get("/keepAlive");
		}, 1500 * 1000);
	</script>
    </body>
</html>
