<jsp:include page="../include/header.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

			<div id="edit-user" class="content" role="main">
				<h3 class="content-header">로그인</h3>
				<div class="col-md-6 main-block-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">아이디 로그인</h5>
						</div>
						<form action="login_ok" onsubmit="return login_check();" class="form-signin form-user panel-body panel-margin" method="POST" id="loginForm" autocomplete="off">
						<%-- autocomplete="off" 자동 완정 기능 해제하기 --%>
							<%--<input type="hidden" name="redirectUrl" value="%2Fuser%2Fregister"> --%> 
							<input type="text" name="login_id" id="id" autocorrect="off" autocapitalize="off" class="username form-control input-sm" placeholder="아이디" autofocus=""> 
							<%-- autocorrect="off" 자동 완성 기능 해제하기 / autocapitalize="off" 대문자로 변환하지 않음 (모든 문자의 기본값 소문자) --%>
							<span id="idcheck"></span>
							<input type="password" name="login_pwd" id="pwd" class="password form-control input-sm" placeholder="비밀번호">
							<span id="pwdcheck"></span>
							<div class="checkbox" style="display:block;">
								<label> 
									<input type="checkbox" name="remember_me" id="remember_me"> 로그인 유지
								</label>
							</div>
							<div id="divUserLogin">
                    			<button class="btn btn-primary btn-block" type="submit" id="btnUserLogin">로그인</button>
                			</div>
							<div class="signup-block">
								<a href="../user/find/findid.jsp">계정 찾기</a> 
								<span class="inline-saperator">/</span> 
								<a href="signup">회원 가입</a>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6 main-block-right">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">SNS 로그인</h5>
						</div>
						<div class="panel-body panel-margin sns-buttons">
							<a href="/oauth2/authorization/kakao" id="kakao-connect-link" class="btn btn-kakao btn-block"> 
								<span class="icon-social icon-kakao"></span>Login with Kakao
							</a> 
							<a href="/oauth2/authorization/naver" id="naver-connect-link" class="btn btn-naver btn-block"> 
								<span class="icon-social icon-naver"></span>Login with NAVER
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="right-banner-wrapper"></div>

			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="./resources/images/logo_gray.png" style="width: 55px; height: 55px;">
					</div>
					<div class="footer_content">
						<strong>상호명</strong>: 김이이정 | <strong>대표명</strong>: 김태완 | <strong>팀원명</strong>:
						이의수 이승연 정희선 | <strong>사업자번호</strong>: 404-99-12536 <br> <strong>주소</strong>:
						서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) | <strong>문의</strong>:
						info@ywhy.kr
						<hr
							style="margin: 8px 0px; border: 0px; border-top: 1px solid #eee;">
						<a href="../intro/loginafter_manager_about.jsp">About YWHY</a> | 
						<a href="user_privacy" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a> 
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github">
							<i class="fab fa-github fa-3x"></i>
						</a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script>
            var contextPath = "";
            var encodedURL = "%2Flogin%2Fauth";
    </script>

	<script src="./resources/js/application.js" type="text/javascript"></script>
	<script src="./resources/js/apps/member.js" type="text/javascript"></script>
	<%--<script src="./resources/js/apps/search.js" type="text/javascript"></script> --%>
	<%--<input type="hidden" name="redirectUrl" value="%2Fuser%2Fregister"> --%>
	<%--<script src="./resources/js/libs/jquery.progressTimer.js" type="text/javascript"></script> --%>

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