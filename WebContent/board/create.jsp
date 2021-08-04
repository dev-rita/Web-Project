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

<title>OKKY - Article 등록</title>

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
<script>
	(function(w,d,s,l,i){
		w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
		var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
		j.async=true;
		j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M52CW55');
</script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
					<%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%> 
					<i class="fas fa-bars fa-lg" style="color: #773209"></i>
				</a>
				<h1>
					<div class="logo">
						<a href="ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
					</div>
				</h1>
			<%--
            <ul id="search-google-icon" class="nav nav-sidebar nav-sidebar-search-wrapper">
               <li class="nav-sidebar-search"><a href="javascript://"
                  class="link" id="search-google" data-toggle="popover"
                  data-trigger="click" data-original-title="" title=""><i
                     class="fa fa-search"></i></a></li>
            </ul>	--%>

				<form id="search-google-form" name="searchMain" class="nav-sidebar-form"
					action="https://www.google.com/search?q=<%=request.getParameter("q")%>" target="_blank">
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
			<div id="article-create" class="content" role="main">
				<div class="content-header">
					<h3>새 글 쓰기</h3>
				</div>
				<div class="panel panel-default clearfix">
					<div class="panel-heading clearfix">
						<div class="avatar clearfix avatar-medium pull-left">
							<a href="/user/info/124651" class='avatar-photo'>
								<img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40" /></a>
							<div class="avatar-info">
								<a class="nickname" href="/user/info/124651" title="rita_dev">rita_dev</a>
								<div class="activity block">
									<span class="fa fa-flash"></span> 0
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form action="/articles/questions/save" method="post" 
						id="article-form" class="article-form" role="form" onsubmit="return postForm()">
							<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
								<div class="form-group has-feedback">
									<div>
										<select id="category" name="categoryCode" class="form-control" required="">
											<option value="">게시판을 선택해 주세요.</option>
											<option value="tech-qna" data-external="false"
												data-anonymity="false">Tech Q&A</option>
											<option value="blockchain-qna" data-external="false"
												data-anonymity="false">Blockchain Q&A</option>
										</select>
									</div>
								</div>
								<div class="form-group has-feedback">
									<div>
										<input type="text" name="title" required="" value=""
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
										class="form-control input-block-level"></textarea>
									<input type="hidden" name="textType" value="HTML" id="textType">
									<div class="recaptcha-wrapper">
										<div class="g-recaptcha"
											data-sitekey="6Lcvw_gSAAAAAH3zOofJBJOFLpmjx7Vq3hxnYIRw"></div>
									</div>
									<div class="nav" role="navigation">
										<fieldset class="buttons">
											<a href="javascript:window.history.back();" class="btn btn-default btn-wide" 
											onclick="return confirm('정말로 취소하시겠습니까?')">취소</a> 
											<input type="submit" name="create" class="create btn btn-success btn-wide pull-right"
											action="create" value="등록" id="create">
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
						<img src="../images/logo_gray.png" style="width: 55px; height: 55px;">
					</div>
					<div class="footer_content">
						<strong>상호명</strong>: 김이이정 | <strong>대표명</strong>: 김태완 | <strong>팀원명</strong>:
						이의수 이승연 정희선 | <strong>사업자번호</strong>: 404-99-12536 <br> <strong>주소</strong>:
						서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) | <strong>문의</strong>:
						info@ywhy.kr
						<hr style="margin: 8px 0px; border: 0px; border-top: 1px solid #eee;">
						<a href="#">About YWHY</a> | <a href="#">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank;
							class="content_github"><i class="fab fa-github fa-3x"></i></a>
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
            var encodedURL = "%2Farticles%2Fquestions%2Fcreate";
    </script>
	<script src="/assets/js/application.js" type="text/javascript"></script>
	<script src="/assets/js/apps/search.js" type="text/javascript"></script>
	<script src="/assets/js/apps/notification.js" type="text/javascript"></script>
	<script src="/assets/js/libs/typeahead.bundle.js"></script>
	<script type="text/javascript">
		var tagTokenizers = new Bloodhound({
	    	datumTokenizer: Bloodhound.tokenizers.obj.whitespace('tagName'),
	    	queryTokenizer: Bloodhound.tokenizers.whitespace,
	    	remote: {
	      	url: '/tag?tagName=%QUERY',
	      	wildcard: '%QUERY'}
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
		var tagsinputWidgets = $('input[name=tagString]').tagsinput(tagsInputConfig);
		$('input[name=tagString]').on('itemAdded', tagsInputItemAddedEventCallback);
	
		tagsinputWidgets.forEach(function(widget) {
	    	var input = widget.input();
			input.focusout(function() {
	        	widget.add(input.val());
	        	input.typeahead('val', '');
	   		});
			input.keyup(function() {
	        	var value = this.value;
	        	value = value.substring(value.length - 1);
	        	if(value == "," || value == " ") {
		        	widget.add($.trim(input.val()));
		        	input.typeahead('val', '');
	        	}
	    	});
		});

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
			var response = grecaptcha.getResponse();
			if(response.length == 0) {
				alert("CAPTCHA 인증을 진행해주세요.");
			    return false;
			}
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
		
	    $('#category').change(function() {
	        if(this.value == 'recruit') {
	            if(this.value && confirm('게시판 변경시 수정된 내용은 초기화 됩니다. 변경 하시겠습니까?')) {
	              /*if(this.value == 'recruit') {
	                location.href=contextPath+'/recruit/create';
	              } else {*/
	                location.href=contextPath+'/articles/'+this.value+'/create';
	              // }
	            } else {
	            }
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

