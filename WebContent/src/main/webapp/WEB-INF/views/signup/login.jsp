<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<jsp:include page="../include/header.jsp"/>

			<div id="edit-user" class="content" role="main">
				<h3 class="content-header">로그인</h3>
				<div class="col-md-6 main-block-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">아이디 로그인</h5>
						</div>
						<form class="form-signin form-user panel-body panel-margin" method="POST" id="loginForm" autocomplete="off">
						<%-- autocomplete="off" 자동 완정 기능 해제하기 --%>
							<%-- 세션에 저장할 아이디 --%>
							<%--<input type="hidden" name="redirectUrl" value="%2Fuser%2Fregister"> --%> 
							<input type="text" name="login_id" id="login_id" autocorrect="off" autocapitalize="off" class="username form-control input-sm" placeholder="아이디" autofocus=""> 
							<%-- autocorrect="off" 자동 완성 기능 해제하기 / autocapitalize="off" 대문자로 변환하지 않음 (모든 문자의 기본값 소문자) --%>
							<span id="id_check"></span>
							<input type="password" name="login_pwd" id="login_pwd" class="password form-control input-sm" placeholder="비밀번호">
							<span id="pwd_check"></span>
							<div class="checkbox" style="display:block;">
								<!-- <label> 
									<input type="checkbox" name="remember_me" id="remember_me"> 로그인 유지
								</label> -->
							</div>
							<div id="divUserLogin">
                    			<button class="btn btn-primary btn-block" style="color:#773209" type="button" id="btnUserLogin" onclick="login_check();">로그인</button>
                			</div>
                			
							<div class="signup-block">
								<a href="findId">아이디</a> 
								<a href="findPwd"> 비밀번호 찾기</a> 
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
							<a href="#" id="kakao-connect-link" class="btn btn-kakao btn-block"> 
								<span class="icon-social icon-kakao" ></span>Login with Kakao
							</a> 
							<a href="#" id="naver-connect-link" class="btn btn-naver btn-block"> 
								<span class="icon-social icon-naver"></span>Login with NAVER
							</a>

						</div>
					</div>
				</div>
			</div>
			
			<div class="right-banner-wrapper"></div>

<jsp:include page="../include/footer.jsp"/>

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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('46af8e39f14bf7cfe2a58d4cadc1b540'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
</body>
</html>