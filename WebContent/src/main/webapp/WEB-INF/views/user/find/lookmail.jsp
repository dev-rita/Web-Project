<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 아이디 찾기</title>
<jsp:include page="../../include/header.jsp" />

			<div id="create-user" class="content" role="main">
				<h3 class="content-header">회원가입</h3>
				<div class="panel panel-default panel-margin-10">
					<div class="panel-body panel-body-content text-center">
						<p class="lead">
							요청하신 이메일로 계정정보를 보냈습니다.
						</p>
						<p>해당 이메일을 확인 하시고, 계정 정보를 확인하세요.</p>
						<p>
							<strong>※ 서비스에 따라 스팸으로 분류 되있을 수도 있습니다. 스팸함도 꼭 확인해 주시기 바랍니다.</strong>
						</p>

						<a href="login" class="btn btn-primary" style="color:#773209">로그인</a>

					</div>
				</div>
			</div>
			
			<div class="right-banner-wrapper"></div>
			
<jsp:include page="../../include/footer.jsp" />
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>		
	<script>
            var contextPath = "";
            var encodedURL = "%2Ffind%2Fuser%2Fcomplete";
        </script>

	<script src="/assets/js/application.js" type="text/javascript"></script>
	<script src="/assets/js/apps/search.js" type="text/javascript"></script>

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