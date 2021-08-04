<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="no-js"><!--<![endif]--><head>
        <meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>WebS - 회원정보 수정</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="_csrf_parameter" content="_csrf">
		<meta name="_csrf_header" content="X-CSRF-TOKEN">
		<meta name="_csrf" content="7e245c1e-0e11-4c47-a906-f2853d10e465">
		<link rel="shortcut icon" href="asset/images/logo/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="asset/images/logo/icon_57x57.png">
		<link rel="apple-touch-icon" sizes="114x114" href="asset/images/logo/icon_114x114.png">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<meta property="og:image" content="asset/images/logo.png">
		
		<link rel="stylesheet" href="asset/css/application2.css">
	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M52CW55');</script>
		<!--[if lt IE 9]>
			<script src="/js/libs/html5.js"></script>
			<script src="/assets/libs/respond.src.js"></script>
			<script src="/assets/libs/html5.js"></script>
		<![endif]-->
		
<link rel="stylesheet" href="asset/css/APW-style.css">
		
	<style type="text/css"></style></head>
	<body>
        <div class="layout-container">
            <div class="main ">
<div class="sidebar ">
    <a href="javascript://" class="sidebar-header">
        <i class="fa fa-bars sidebar-header-icon"></i>
    </a>

    <h1><div class="logo"><a href="/"><img src="asset/images/logo.png" alt="Ywhy" title="Ywhy"></a></div></h1>

    <ul id="search-google-icon" class="nav nav-sidebar nav-sidebar-search-wrapper">
        <li class="nav-sidebar-search"><a href="javascript://" class="link" id="search-google" data-toggle="popover" data-trigger="click" data-original-title="" title=""><i class="fa fa-search"></i></a></li>
    </ul>

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

	
	

<div class="avatar clearfix avatar-medium ">
		<a href="/user/info/123563" class="avatar-photo"><img src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123563" title="이의수">이의수</a>
					<div class="activity block"><span class="fa fa-flash"></span> 0</div>
		</div>
</div>
            <div class="nav-user-action">
                <div class="nav-user-func">
                    <a href="javascript://" id="user-func" data-toggle="popover" data-trigger="click" tabindex="0" data-original-title="" title="">
                        <i id="user-func-icon" class="fa fa-cog"></i>
                    </a>
                </div>
                <div class="nav-user-func">
                    <a href="javascript://" id="user-notification" data-toggle="popover" data-trigger="click" tabindex="0" data-original-title="" title="">
                        <i id="user-notification-icon" class="fa fa-bell"></i>
                        <span id="user-notification-count" class="badge notification" style="display:none;">1</span>
                    </a>
                </div>
            </div>
            <form action="/logout" method="post" style="display:none;"><input type="submit" name="logoutButton" value="logoutButton" id="logoutButton"></form>

            <script id="setting-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title"></h3>
                    <div class="popover-footer clearfix" id="user-func-popover">
                        <label href="" for="logoutButton" class="popover-btn"><i class="fa fa-sign-out"></i> 로그아웃</label>
                        <a href="/user/edit" class="popover-btn"><i class="fa fa-user"></i> 정보수정</a>
                    </div>
                </div>
            </script>

            <script id="notification-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title"></h3>
                    <div class="popover-content" id="notification-popover"></div>
                </div>
            </script>

            <script id="search-google-template" type="text/template">
                <div class="popover popover-fixed" role="tooltip"><div class="arrow"></div>
                    <h3 class="popover-title">Google 검색</h3>
                    <div class="popover-content" id="search-google-popover">
                        <form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search" onsubmit="searchMain.q.value='site:okky.kr '+searchMain.qt.value;">
                            <div class="input-group">
                                <input type="text" name="qt" class="form-control input-sm" placeholder="Google 검색" />
                                <input type="hidden" name="q" />
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-sm" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </script>
    </div>

    <ul class="nav nav-sidebar nav-main">
    	
    		<li><a href="/articles/questions" class="link"><i class="nav-icon fa fa-database"></i> <span class="nav-sidebar-label nav-sidebar-category-label">Q&amp;A</span></a></li>
    		<li><a href="/articles/community" class="link"><i class="nav-icon fa fa-comments"></i> <span class="nav-sidebar-label nav-sidebar-category-label">커뮤니티</span></a></li>
    </ul>

    <ul class="nav nav-sidebar nav-bottom">
        <li><a href="https://github.com/okjsp/okky/issues" class="link" target="_blank"><i class="fa fa-github"></i> <span class="nav-sidebar-label nav-sidebar-category-label">Github Issues</span></a></li>
    </ul>
</div>

<div id="create-user" class="content clearfix" role="main">
    <h3 class="content-header">회원 정보 수정</h3>
    <div class="col-md-6 main-block-left">
        <div class="panel panel-default">
            <div class="panel-heading">

	
	

<div class="avatar clearfix avatar-medium ">
		<a href="/user/info/123563" class="avatar-photo"><img src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123563" title="이의수">이의수</a>
					<div class="activity block"><span class="fa fa-flash"></span> 0</div>
		</div>
</div>
           		<a id="edit-picture-btn">변경</a>
           		<div class="profile-picture-list" style="display:none;">
	
	
           			<div class="profile-picture " data-id="0">
	   					<span class="avatar-photo"><img src="//www.gravatar.com/avatar/c53b65e77589339ef37e0a13448683ce?d=identicon&amp;s=40"></span>
	   					<span>Gravatar</span>
   					</div>
	
	
		           			<div class="profile-picture selected" data-id="40652">
			   					<span class="avatar-photo"><img src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></span>
			   					<span>Google</span>
		   					</div>
   					<button class="btn btn-primary" id="profile-upload-btn" style="font-size: 12px">이미지 업로드<br><small>권장 사이즈 150px<br>최대 250KB</small></button>
  					<input type="file" name="files" accept="image/gif, image/jpg, image/jpeg, image/png" style="display:none;" id="profileImage">
  					<button class="btn btn-success picture-confirm-btn">확인</button>
           		</div>
            </div>
            <form action="/user/update?id=106195" method="POST" class="form-signup form-user panel-body" id="loginForm" autocomplete="off">
					<input type="hidden" name="_csrf" value="7e245c1e-0e11-4c47-a906-f2853d10e465">
            	<input type="hidden" name="_method" value="PUT" id="_method">
                <fieldset>
                    <div class="form-group">
                        <label class="control-label" for="fullName">이름</label>
                        <input type="text" name="fullName" class="form-control input-sm" placeholder="이름" required="" value="이의수" id="fullName">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="nickname">닉네임</label>
                        <input type="text" name="nickname" class="form-control input-sm" placeholder="닉네임" required="" value="이의수" id="nickname">
                    </div>
                    <div class="form-group">
                    	<label class="control-label" for="nickname">관심있는 기술 태그 입력</label>
	               		<div class="field-subtitle">사용 중인 기술이나 관심있는 기술 태그를 선택해주세요.</div>
               			<input type="text" name="tagString" value="java개발자" placeholder="java, c#, javascript, spring" class="form-control input-sm" id="tagString" style="display: none;"><div class="bootstrap-tagsinput"><span class="tag label label-info">java개발자<span data-role="remove"></span></span> <span class="twitter-typeahead" style="position: relative; display: inline-block;"><input type="text" class="tt-hint" readonly="" autocomplete="off" spellcheck="false" tabindex="-1" dir="ltr" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0);"><input type="text" placeholder="java, c#, javascript, spring" class="tt-input" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Helvetica Neue&quot, Helvetica, Arial, &quot;Apple SD Gothic Neo&quot;, &quot;Malgun Gothic&quot;, Dotdum; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre><div class="tt-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-0"></div></div></span></div>
	               	</div>
                    <div class="checkbox">
                        <label>
                        	<input type="checkbox" name="dmAllowed" checked="checked" id="person.dmAllowed"> 
이메일 수신 동의                        </label>
                    </div>
                </fieldset>
                <button class="btn btn-primary btn-block" type="submit">정보 수정</button>
            </form>
        </div>
    </div>
    <div class="col-md-6 main-block-right">
    	<div class="panel panel-default">
    		<div class="panel-heading">
                <h5 class="panel-header">이메일 변경</h5>
            </div>
            <div class="panel-body panel-margin">
	    		<div class="email-edit">
	    			<label class="control-label" for="email" style="width:100%">이메일 주소</label>
	    			<div class="field-subtitle"></div>
					<input type="text" name="email" class="form-control input-sm" placeholder="이메일" required="" value="kwlee4120@gmail.com" id="email">
					<button class="btn btn-primary" style="display:none;" data-email-type="UPDATE_EMAIL" type="button" id="verify-email-btn">인증</button>
					<button class="btn btn-success" style="display:none;" type="button" id="verify-email-retry-btn">재전송</button>
				</div>
			</div>
    	</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h5 class="panel-header">SNS 연결</h5>
            </div>
            <div class="panel-body panel-margin sns-buttons">
    	<a href="/oauth2/authorization/kakao" provider="kakao" class="btn btn-kakao btn-block"><span class="icon-social icon-kakao"></span> Connect with Kakao</a>
    	<a href="/oauth2/authorization/naver" provider="naver" class="btn btn-naver btn-block"><span class="icon-social icon-naver"></span> Connect with NAVER</a>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body panel-margin">
                <a href="/user/passwordChange" class="btn btn-info btn-block">비밀번호 변경</a>
                <a href="/user/withdrawConfirm" class="btn btn-default btn-block">회원 탈퇴</a>
            </div>
        </div>
    </div>
</div>
                <div class="right-banner-wrapper">
                </div>
                <div id="footer" class="footer" role="contentinfo">
<div class="row">
    <div class="col-sm-9">
        <div>
        	<div style="float: right;margin-right: 10px;height:100px;">
        	<img src="asset/images/logo_gray.png" alt="footer">
        </div>
        <div>
        	<a href="/intro/about">About Ywhy</a>
            | <a href="/user/privacy" data-toggle="modal" data-target="#userPrivacy">개인정보보호</a>
            | <a href="/intro/ad">광고문의</a>
            | <a href="mailto:info@okky.kr">Contact</a>
            | <a href="https://www.facebook.com/okky.sns" target="_blank">Facebook</a>
            | <a href="https://github.com/okjsp/okky" target="_blank">Github</a>  v1.5.4
            <hr style="margin: 8px 0;">
            <strong>상호명</strong>: 김이이정 | 
                  <strong>대표명</strong>: 김태완 | 
                  <strong>팀원명</strong>: 이의수 이승연 정희선 | 
                  <strong>사업자번호</strong>: 404-99-12536 
                  <br>
                  <strong>주소</strong>: 서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) |
                  <strong>문의</strong>: info@ywhy.kr
            <br> @ 2021 <a href="http://www.ebrain.kr" target="_blank">eBrain Management</a>
        </div>
    </div>
    </div>
</div>
                </div>
            </div>
        </div>
        <script>
            var contextPath = "";
            var encodedURL = "%2Fuser%2Fedit";
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
			    	var query = tag._query.replace(/[.*+\-?^\\${}()|[\]\\]/g, '\\$&');
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
	tagsInputConfig.maxTags = 10;
	var tagsinputWidgets = $('input[name=tagString]').tagsinput(tagsInputConfig);
	var tagsInputItemAddedEventCallback = function(event) {
	    $(this).parent().find(".tt-input").typeahead("val","");
	};
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
</script>

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