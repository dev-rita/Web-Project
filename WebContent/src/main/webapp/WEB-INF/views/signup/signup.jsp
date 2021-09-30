<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 회원가입</title>
<jsp:include page="../include/header.jsp"/>

			<div id="create-user" class="content" role="main">
				<h3 class="content-header">회원가입</h3>
				<div class="col-md-6 main-block-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">이메일로 가입하기</h5>
						</div>
						<form action="signup_ok" method="post" onsubmit="return signup_check();"  class="form-signup form-user panel-body" id="loginForm" autocomplete="off">
						<%-- autocomplete=off는 자동완성 기능을 해제하는 기능이다. --%>
							<%--<input type="hidden" name="user_id" value="${user_id}"> --%>
							<fieldset>
								<input type="text" id="id" name="mem_id" class="form-control input-sm" placeholder="아이디" value="">
								<%-- 아이디 중복 확인의 value가 N이면 중복확인이 안되었다는 뜻으로 signup_check()함수로 인해 넘어가지 못한다. 
									중복 확인 버튼 눌렀을 때 성공하면 value가 Y로 바뀌면서 다음 입력으로 넘어갈 수 있다. --%>
								<button type="button" id="idchk" class="form-control input-sm" onclick="id_check();" value="N">아이디 중복 확인</button>
								<span id="idcheck"></span>
								<input type="password" id="pwd" name="mem_pwd" class="form-control input-sm" placeholder="비밀번호" value="">
								<span id="pwdcheck"></span>
								<input type="text" id="email" name="mem_mail" style="width: 100%" class="form-control input-sm" placeholder="이메일" value="">
								<%-- 이메일 중복 확인의 value가 N이면 중복확인이 안되었다는 뜻으로 signup_check()함수로 인해 넘어가지 못한다.
									 중복 확인 버튼 눌렀을 때 성공하면 value가 Y로 바뀌면서 다음 입력으로 넘어갈 수 있다. --%>
								<button type="button" id="emailchk" class="form-control input-sm" onclick="email_check();" value="N">이메일 중복 확인</button> 
								<span id="emailcheck"></span>
								<input type="text" id="name" name="mem_name" class="form-control input-sm" placeholder="이름" value=""> 
								<span id="namecheck"></span>
								<input type="text" id="nick" name="mem_nick" class="form-control input-sm" placeholder="닉네임" value="">
								<span id="nickcheck"></span>
								<br>
								<%--
								<div class="checkbox">
									<label> 
										<input type="checkbox" name="person.dmAllow" value="true" checked="checked"> 이메일 수신 동의
									</label>
								</div>
								--%>
							</fieldset>
							<button class="btn btn-primary btn-block" style="color:#773209;" type="submit">아래 약관을 동의하며 계정 생성</button>
							<div class="signup-block">
								<a href="user_membershipTermsandConditions" data-toggle="modal" data-target="#userAgreement">회원가입약관</a> 
								<span class="inline-saperator">/</span> 
								<a href="user_privacy" data-toggle="modal" data-target="#userPrivacy">개인정보취급방침</a>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6 main-block-right">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">SNS로 가입하기</h5>
						</div>
						<div class="panel-body panel-margin sns-buttons">
							<a href="/oauth2/authorization/kakao" id="kakao-connect-link" class="btn btn-kakao btn-block"> 
								<span class="icon-social icon-kakao"></span>Sign in with Kakao
							</a> 
							<a href="/oauth2/authorization/naver" id="naver-connect-link" class="btn btn-naver btn-block"> 
								<span class="icon-social icon-naver"></span>Sign in with NAVER
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="right-banner-wrapper"></div>
			
<jsp:include page="../include/footer.jsp"/>

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
		var contextPath = "";
		var encodedURL = "%2Fuser%2Fregister";
	</script>
	
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script src="./resources/js/application.js" type="text/javascript"></script>
	<script src="./resources/js/apps/member.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


	<div style="background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204, 204); box-shadow: rgba(0, 0, 0, 0.2) 2px 2px 3px; position: absolute; transition: visibility 0s linear 0.3s, opacity 0.3s linear 0s; opacity: 0; visibility: hidden; z-index: 2000000000; left: 0px; top: -10000px;">
		<div style="width: 100%; height: 100%; position: fixed; top: 0px; left: 0px; z-index: 2000000000; background-color: rgb(255, 255, 255); opacity: 0.05;"></div>
		<div class="g-recaptcha-bubble-arrow" style="border: 11px solid transparent; width: 0px; height: 0px; position: absolute; pointer-events: none; margin-top: -11px; z-index: 2000000000;"></div>
		<div class="g-recaptcha-bubble-arrow" style="border: 10px solid transparent; width: 0px; height: 0px; position: absolute; pointer-events: none; margin-top: -10px; z-index: 2000000000;"></div>
		<div style="z-index: 2000000000; position: relative;">
			<iframe title="reCAPTCHA 보안문자"
				src="https://www.google.com/recaptcha/api2/bframe?hl=ko&amp;v=vzAt61JclNZYHl6fEWIBqLbe&amp;k=6Lcvw_gSAAAAAH3zOofJBJOFLpmjx7Vq3hxnYIRw&amp;cb=ps2g7ryt3ykh"
				name="c-fk611p6p8bk5" frameborder="0" scrolling="no"
				sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"
				style="width: 100%; height: 100%;"></iframe>
		</div>
	</div>

</body>
</html>