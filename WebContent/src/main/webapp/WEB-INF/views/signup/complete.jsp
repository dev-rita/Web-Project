<jsp:include page="../include/header.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

			<div id="create-user" class="content" role="main">
				<h3 class="content-header">회원가입</h3>
				<div class="panel panel-default panel-margin-10">
					<div class="panel-body panel-body-content text-center">
						<p class="lead">
							<strong>${signup.mem_mail}</strong> 로 인증 요청 메일을 보냈습니다.<br>
							해당 이메일을 확인 하시고, 인증 확인 링크를 눌러 주시기 바랍니다.
						</p>
						<p>이메일 인증이 완료 되지 않을 경우 로그인이 불가합니다.</p>
						<p>
							<strong>※ 서비스에 따라 스팸으로 분류 되있을 수도 있습니다. 스팸함도 꼭 확인해 주시기 바랍니다.</strong>
						</p>

						<a href="login" class="btn btn-primary" style="color:#773209;">로그인</a>

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
						<hr style="margin: 8px 0px; border: 0px; border-top: 1px solid #eee;">
						<a href="intro_about">About YWHY</a> | 
						<a href="user_privacy" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a> 
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github">
							<i class="fab fa-github fa-3x"></i>
						</a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script>
            var contextPath = "";
            var encodedURL = "%2Fuser%2Fcomplete";
        </script>
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script src="/assets/js/application.js" type="text/javascript"></script>
	<%--<script src="/assets/js/apps/search.js" type="text/javascript"></script> --%>

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



</body>
</html>