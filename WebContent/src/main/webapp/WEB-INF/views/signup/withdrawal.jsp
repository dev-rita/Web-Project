<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 회원탈퇴</title>
<jsp:include page="../include/header.jsp"/>

			<div id="create-user" class="content" role="main">
				<h3 class="content-header">회원 탈퇴</h3>
				<div class="panel panel-default panel-margin-10">
					<div class="panel-body panel-body-content text-center">
						<form method="post" action="withdrawal_ok">
							<p class="lead">회원 탈퇴시 아래의 조취가 취해 집니다.</p>
							<ul class="text-left">
								<li>회원 탈퇴 일로부터 계정과 닉네임을 포함한 계정 정보(아이디/이메일/닉네임)는 
									<strong>보관 없이 삭제되며</strong> 더 이상 복구할 수 없게 됩니다.
								</li>
								<li><strong>작성된 게시물은 삭제되지 않으며, YHWY로 소유권이 귀속됩니다.</strong></li>
							</ul>
							<a href="editinfo" class="btn btn-default">아니오</a> 
							<button type="submit" class="btn btn-danger">예, 탈퇴하겠습니다.</button>
						</form>
					</div>
				</div>
			</div>
			<div class="right-banner-wrapper"></div>
			
			<jsp:include page="../include/footer.jsp"/>
			
			
		</div>
	</div>
	
	<script>
		var contextPath = "";
		var encodedURL = "%2Fuser%2FwithdrawConfirm";
	</script>

	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script src="../js/application.js" type="text/javascript"></script>
	<script src="../js/apps/search.js" type="text/javascript"></script>
	<script src="../js/apps/notification.js" type="text/javascript"></script>

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