<jsp:include page="../../include/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

			<div id="create-user" class="content" role="main">
				<h3 class="content-header">비밀번호 변경</h3>
				<form action="passwordChange_ok" method="post" onsubmit="return passwordChange();">
					<%--<input type="hidden" name="_csrf" value="bbaaed77-5b82-4221-a5c2-7159c658c83c"> --%>
					<div class="col-sm-8 col-sm-offset-2">
						<div class="panel panel-default panel-margin-10">
							<div class="panel-body panel-body-content text-center">
								<p class="lead">변경하실 비밀번호를 입력해 주세요.</p>
								<div class="form-group">
									<input type="password" name="newPassword" id="newPassword" class="form-control form-control-inline text-center" placeholder="새 비밀번호">
									<span id="newPassword_check"></span>
								</div>
								<div class="form-group">
									<input type="password" name="mem_pwd" id="newPasswordConfirm" class="form-control form-control-inline text-center" placeholder="새 비밀번호 확인">
									<span id="newPasswordConfirm_check"></span>
								</div>
								<button type="submit" class="btn btn-primary" style="color:#773209">비밀번호 변경</button>
								<a href="." class="btn btn-default">취소</a>
							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="right-banner-wrapper"></div>
			
			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
					<img src="../../images/logo_gray.png" style="width: 55px; height: 55px;">
					</div>
					<div class="footer_content">
						<strong>상호명</strong>: 김이이정 | <strong>대표명</strong>: 김태완 | <strong>팀원명</strong>:
						이의수 이승연 정희선 | <strong>사업자번호</strong>: 404-99-12536 <br> <strong>주소</strong>:
						서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) | <strong>문의</strong>:
						info@ywhy.kr
						<hr style="margin: 8px 0px; border: 0px; border-top: 1px solid #eee;">
						<a href="../../intro/loginafter_manager_about.jsp">About YWHY</a> | <a
							href="../../user/privacy.jsp" data-toggle="modal"
							data-target="#userPrivacy">개인 정보 보호</a> <a
							href="https://github.com/dev-rita/Web-Project.git" target=_blank;
							class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script>
		var contextPath = "";
		var encodedURL = "%2Fuser%2FpasswordChange";
	</script>
	
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script src="./resources/js/application.js" type="text/javascript"></script>
	<%--<script src="../../js/apps/search.js" type="text/javascript"></script> --%>
	<script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/apps/member.js" type="text/javascript"></script>

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
