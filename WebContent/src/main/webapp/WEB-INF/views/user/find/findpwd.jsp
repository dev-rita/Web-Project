<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 비밀번호 찾기</title>
<jsp:include page="../../include/header.jsp"/>

		<div id="create-user" class="content" role="main">
			<h3 class="content-header">계정 찾기</h3>
			<form method="POST">
				<%--<input type="hidden" name="_csrf" value="1bc23bb2-44e0-45cd-b3ad-cbffc1130a33"> --%>
				<div class="col-sm-8 col-sm-offset-2">
					<div class="panel panel-default panel-margin-10" style="width:500px">
						<div class="panel-body panel-body-content text-center">
							<p class="lead">아이디와 이메일 주소를 입력해 주세요.</p>
							<p>회원 가입시 입력하신 아이디, 이메일 주소를 입력하시면<br> 해당 이메일로 임시 비밀번호를 보내드립니다.</p>
							<div class="form-group">
								<input type="text" name="find_id2" id="find_id2" class="form-control form-control-inline text-center" placeholder="아이디" value="">
								<input type="text" name="find_email2" id="find_email2" class="form-control form-control-inline text-center" placeholder="이메일 주소" value="">
								<span id="find_emailcheck2"></span>
							</div>
							<button type="button" class="btn btn-primary" style="color:#773209" onclick="find2();">계정 찾기</button>
							<a href="." class="btn btn-default">취소</a>
						</div>
					</div>
				</div>
			</form>
		</div>

		<div class="right-banner-wrapper"></div>

<jsp:include page="../../include/footer.jsp"/>
		
<script>
	var contextPath = "";
	var encodedURL = "%2Ffind%2Fuser%2Findex";
</script>

<script src="./resources/js/application.js" type="text/javascript"></script>
<script src="./resources/js/apps/member.js" type="text/javascript"></script>
<%--<script src="../../js/apps/search.js" type="text/javascript"></script> --%>
<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>

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