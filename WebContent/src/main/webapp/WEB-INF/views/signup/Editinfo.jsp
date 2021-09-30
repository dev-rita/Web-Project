<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 회원 정보 수정</title>
<jsp:include page="../include/header.jsp"/>


			<div id="create-user" class="content clearfix" role="main">
				<h3 class="content-header">회원 정보 수정</h3>
				<div class="col-md-6 main-block-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="avatar clearfix avatar-medium ">
								<%--
								<a href="myinfo" class="avatar-photo">
									<img src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c">
								</a>
								 --%>
								<div class="avatar-info">
									<a class="nickname" href="myinfo" title="${m.mem_nick}" style="font-size:15px;"><b>${m.mem_nick}</b></a>
									<div class="activity block">
										<span class="fa fa-flash"></span> ${m.mem_point}
									</div>
								</div>
							</div>
							<%--
							<a id="edit-picture-btn">변경</a>
							<div class="profile-picture-list" style="display: none;">
								<div class="profile-picture " data-id="0">
									<span class="avatar-photo">
										<img src="//www.gravatar.com/avatar/c53b65e77589339ef37e0a13448683ce?d=identicon&amp;s=40"></span>
									<span>Gravatar</span>
								</div>
								<div class="profile-picture selected" data-id="40652">
									<span class="avatar-photo">
										<img src="https://lh3.googleusercontent.com/a/AATXAJxiZTIVGEtSRdK0v6bbvSqJ9bLdROm0uFX07oFh=s96-c"></span>
									<span>Google</span>
								</div>
								<button class="btn btn-primary" id="profile-upload-btn" style="font-size: 12px">
									이미지 업로드 <br> <small>권장 사이즈 150px <br> 최대 250KB</small>
								</button>
								<input type="file" name="files" accept="image/gif, image/jpg, image/jpeg, image/png" style="display: none;" id="profileImage">
								<button class="btn btn-success picture-confirm-btn">확인</button>
							</div>
							 --%>
						</div>
						<form action="editinfo_ok" method="POST" class="form-signup form-user panel-body" id="loginForm" autocomplete="off">
							<%--
							<input type="hidden" name="_csrf" value="7e245c1e-0e11-4c47-a906-f2853d10e465">
							<input type="hidden" name="_method" value="PUT" id="_method">
							 --%>
							<fieldset>
								<div class="form-group">
									<label class="control-label" for="fullName">이름</label> 
									<input type="text" name="mem_name" class="form-control input-sm" placeholder="이름" required="" value="${m.mem_name}" id="fullName">
								</div>
								<div class="form-group">
									<label class="control-label" for="nickname">닉네임</label>
									<input type="text" name="mem_nick" class="form-control input-sm" placeholder="닉네임" required="" value="${m.mem_nick}" id="nickname">
								</div>
								<div class="form-group"><%-- 아이디는 수정 안되게끔 한다. --%>
									<p class="control-label" for="nickname"><b>아이디</b></p>
									<span class="form-control input-sm" style="width: 100%;">${m.mem_id}</span>
								</div>
								<div class="form-group"><%-- 이메일은 수정 안되게끔 한다. --%>
									<p class="control-label"><b>이메일</b></p>
									<span class="form-control input-sm" style="width: 100%">${m.mem_mail}</span>
								</div>
								<%--
								<div class="form-group">
									<label class="control-label" for="nickname">관심있는 기술 태그 입력</label>
									<div class="field-subtitle">사용 중인 기술이나 관심있는 기술 태그를 선택해주세요.</div>

									<div class="bootstrap-tagsinput">
										<span class="tag label label-info">java개발자<span data-role="remove"></span></span> 
										<span class="twitter-typeahead" style="position: relative; display: inline-block;">
											<input type="text" class="tt-hint" readonly="" autocomplete="off" spellcheck="false" tabindex="-1" dir="ltr" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0%/auto repeat scroll padding-box border-box rgba(0, 0, 0, 0);">
											<input type="text" placeholder="java, c#, javascript, spring" class="tt-input" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;">
											<pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &amp; quot; Helvetica Neue&amp;quot, Helvetica, Arial, &amp;quot; Apple SD Gothic Neo&amp;quot; , &amp; quot; Malgun Gothic&amp;quot; , Dotdum; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre>
											<div class="tt-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;">
												<div class="tt-dataset tt-dataset-0"></div>
											</div>
										</span>
									</div>
								</div>
								 --%>
							</fieldset>
							<button class="btn btn-primary btn-block" style="color:#773209" type="submit">정보 수정</button>
						</form>
					</div>
				</div>
				<div class="col-md-6 main-block-right">
					<%-- 
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">이메일 변경</h5>
						</div>
						<div class="panel-body panel-margin">
							<div class="email-edit">
								<label class="control-label" for="email" style="width: 100%">이메일 주소</label>
								<div class="field-subtitle">
								
								</div>
								<input type="text" name="email" class="form-control input-sm" placeholder="이메일" required="" value="${m.mem_mail}" id="email">
								<button class="btn btn-primary" style="display: none;" data-email-type="UPDATE_EMAIL" type="button" id="verify-email-btn">인증</button>
								<button class="btn btn-success" style="display: none;" type="button" id="verify-email-retry-btn">재전송</button>
							</div>
						</div>
					</div>
					--%>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-header">SNS 연결</h5>
						</div>
						<div class="panel-body panel-margin sns-buttons">
							<a href="/oauth2/authorization/kakao" provider="kakao" class="btn btn-kakao btn-block">
								<span class="icon-social icon-kakao"></span> Connect with Kakao
							</a> 
							<a href="/oauth2/authorization/naver" provider="naver" class="btn btn-naver btn-block">
								<span class="icon-social icon-naver"></span> Connect with NAVER
							</a>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-body panel-margin">
							<a href="passwordChange" class="btn btn-info btn-block">비밀번호 변경</a> 
							<a href="withdrawal" class="btn btn-default btn-block">회원 탈퇴</a>
						</div>
					</div>
				</div>
			</div>
			
			<jsp:include page="../include/footer.jsp"/>

	<script>
		var contextPath = "";
		var encodedURL = "%2Fuser%2Fedit";
	</script>

	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script src="./resources/js/application.js" type="text/javascript"></script>
	<%--<script src="./resources/js/apps/search.js" type="text/javascript"></script> --%>
	<script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/libs/typeahead.bundle.js"></script>
	<%--
	<script type="text/javascript">
		var tagTokenizers = new Bloodhound({
			datumTokenizer : Bloodhound.tokenizers.obj.whitespace('tagName'),
			queryTokenizer : Bloodhound.tokenizers.whitespace,
			remote : {
				url : '/tag?tagName=%QUERY',
				wildcard : '%QUERY'
			}
		});

		var tagsInputConfig = {
			typeaheadjs : {
				displayKey : 'tagName',
				valueKey : 'tagName',
				source : tagTokenizers.ttAdapter(),
				templates : {
					suggestion : function(tag) {
						var query = tag._query.replace(
								/[.*+\-?^\\${}()|[\]\\]/g, '\\$&');
						var regexp = new RegExp('^(' + query + ')', 'g');
						return '<div>'
								+ tag.tagName.replace(regexp,
										"<strong>$1</strong>") + ' <span>+'
								+ tag.count + '</span></div>';
					}
				}
			}
		};

		var tagsInputItemAddedEventCallback = function(event) {
			$(this).parent().find(".tt-input").typeahead("val", "");
		};
	</script>
	
	<script>
  $(function($) {
	  var popMode = "1"; //default
	  var profileUploading = false;
	  var agent = navigator.userAgent;
	  if(/ipad/i.test(agent)||/iphone/i.test(agent)||/Android/i.test(agent)){
	  	popMode = "0";
	  }
	  
	  $("#btnAdd").click(function(e) {	//버튼의 ID	
			$.ajax({
				url : "/autoPassword/createRegToken",  //regtoken 생성 URL
				cache: false,
				success : function(data) {
					var regToken = $.trim(data);	
					var url = "https://lifein.vpay.co.kr/lifein/web/simpleapi/p/manage?reqToken=" + regToken + "&popMode=" + popMode;
		            if("0" == popMode){
						location.href=url;
					}else{
						var name = "Lifein 오토패스워드 설정";
			            var option = "width = 500, height = 800, top = 100, left = 200, location = no";
			            window.open(url, name, option);
					}
				}, 
				fail: function(e) {
						alert("에러:"+ e.message); 
				}
			});
		});	
    $("[id=btnCancel]").click(function(e) {
      location.href = "/autoPassword/delUserAutopassword";
    });
    
    $(".btn-disconnect").click(function(e) {
        var requiredLogin = $(this).data("requiredLogin");
        var confirmMessage = $(this).text()+"를 하시겠습니까?";
        var requiredLoginMessage = "해당 계정과 연결되어있는 소셜아이디로 로그인 해주세요.";
        if(requiredLogin) {
            alert(requiredLoginMessage);
        }else {
            if(confirm(confirmMessage)) {
                $.ajax({
                    url: "/oauth/disconnectaccount",
                    type: "post",
                    success: function(response) {
                        location.reload();
                    },
                    error: function(response) {
                        if(response.status == 401){
                            alert("다시 로그인 해주세요.");
                        } else if (response.status == 405) {
                            alert("로그인에 필요한 마지막 SNS 계정이기 때문에 삭제할 수 없습니다.");
                        }
                    }
                });
            }
        }
    });
    
    var $email = $(".email-edit").find("input");
    var $emailMessage = $(".email-edit").find(".field-subtitle");
    var $emailVerifyBtn = $("#verify-email-btn");
    var $emailVerifyRetryBtn = $("#verify-email-retry-btn");
    var originEmail = $.trim($email.val());
    var isExecuteVerifyEmailRetry = false;
    
    $emailVerifyBtn.on("click", function(e) {
        if(!isExecuteVerifyEmailRetry) {
            var emailType = $(this).data("emailType");
            var email = $.trim($email.val());
            if(email === "") {
                $emailMessage.html("이메일을 입력 해주세요.");
                return;
            }
            isExecuteVerifyEmailRetry = true;
	        $.ajax({
				url : "/user/verifyEmail",
				data: {
				    email: email,
				    emailType: emailType
				},
				type: "post",
				cache: false,
				success : function(data) {
					$emailMessage.html(data);
					$emailVerifyBtn.hide();
					$emailVerifyRetryBtn.show();
					isExecuteVerifyEmailRetry = false;
				}, 
				fail: function(e) {
                    $emailMessage.html(e.message);
				    isExecuteVerifyEmailRetry = false;
				}
			});
        }
    });
    
    $emailVerifyRetryBtn.on("click", function(e) {
        var emailType = $emailVerifyBtn.data("emailType");
        var email = $.trim($email.val());
        if(email === "") {
            $emailMessage.html("이메일을 입력 해주세요.");
            return;
        }
        $.ajax({
			url : "/user/resendVerifyEmail",
			data: {
			    email: email,
			    emailType: emailType
			},
			type: "post",
			cache: false,
			success : function(data) {
				$emailMessage.html(data);
				$emailVerifyBtn.hide();
				$emailVerifyRetryBtn.show();
			}, 
			fail: function(e) {
			    $emailMessage.html(e.message);
			}
		});
    });
    $email.on("keyup", function(e) {
    	var email = $(this).val();
    	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
   	    $emailMessage.html("");
   	    
   	    if(!emailRegex.test(email)) {
	   	    $emailMessage.html("올바른 이메일 형식이 아닙니다.");
   	     	$emailVerifyBtn.hide();
			$emailVerifyRetryBtn.hide();
			return;
   	    }
   	    
    	if(email == originEmail) {
    	    $emailVerifyBtn.hide();
			$emailVerifyRetryBtn.hide();
    	}else {
    	    $emailVerifyBtn.show();
    	}
    });
    
    if($(".profile-picture").length > 1) {
        $("#edit-picture-btn").show();
    }
    
    $("#edit-picture-btn").on("click", function(e) {
        var $list = $(".profile-picture-list");
        if($list.is(":visible")) {
            $list.hide();
        } else {
            $list.show();
        }
        e.preventDefault(); 
    });
    
    $("#profile-upload-btn").on("click", function(e){
       $("#profileImage").click(); 
    });
    
    $("#profileImage").on("change", function(e){
       var profileFile = $(this)[0].files[0];
       var $list = $(".profile-picture-list");
       if(profileFile){
           if (!profileFile.type.startsWith('image/')){ 
	           alert("파일은 이미지만 가능합니다. png, jpg, gif");
	           $(this).val(null);
	           return;
		   }
           if(profileFile.size >= 250 * 1000) {
	           alert("파일용량은 최대 250KB까지 가능합니다.");
	           $(this).val(null);
	           return;
           }
           var img = document.createElement("img");
           var $template = $("<div class='profile-picture selected' data-id='0' id='profile-uploaded-image'><span class='avatar-photo'></span><span style='margin-left: 5px;'>Uploaded</span></div>");
           img.file = profileFile;
		   $template.find(".avatar-photo").append(img);
		   $("#profile-uploaded-image").remove();
		   $(".profile-picture.selected").removeClass("selected");
           $list.find(".profile-picture").last().after($template);
           
           var reader = new FileReader();
           reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
           reader.readAsDataURL(profileFile);
       }
    });
    
    $(".picture-confirm-btn").on("click", function(e) {
        var $picture = $(".profile-picture.selected");
        var $profileImg = $picture.closest(".panel").find(".avatar img");
        var $navImg = $(".nav-user").find(".avatar-photo img");
        var $list = $(".profile-picture-list");
        var imgSrc = $picture.find("img").attr("src");
        var $uploadedImg = $("#profile-uploaded-image");
        if($profileImg.attr("src") == imgSrc) {
            $list.hide();
            return;
        }
        var formData = new FormData();
        var profileFile = $("#profileImage")[0].files[0] || $uploadedImg.length ? $uploadedImg.find("img")[0].file : "";
        if(!profileUploading) {
            profileUploading = true;
            if($uploadedImg.is(".selected")) {
                if(!profileFile && $uploadedImg.data("type") != "uploaded") {
                    alert("이미지를 다시 업로드 해주세요.");
                    return;
                }
	            formData.append("profileFile", profileFile);
	            formData.append("isTypeProfileFile", true);
            }
            formData.append("oauthId", $picture.data("id"));
	        $.ajax({
	            url: "/user/updatePicture",
	            data: formData,
	        	type: 'post',
	        	contentType: false,
	        	processData: false,
	            success: function(e) {
	                $(".profile-picture").removeClass("selected");
	                $picture.addClass("selected");
	                $navImg.attr("src", imgSrc);
	                $profileImg.attr("src", imgSrc);
	                $list.hide();
	                profileUploading = false;
	            },
	            error: function(e) {
	                profileUploading = false;
	               	alert("프로필 이미지 변경에 실패하였습니다.\n새로고침 후 다시 시도해주세요.");
	            }
	        });
        }
    });
    
    $(".profile-picture-list").on("click", ".profile-picture", function(e) {
        $(".profile-picture").removeClass("selected");
        $(this).addClass("selected");
    });
  })
</script>

	<script type="text/javascript">
		tagsInputConfig.maxTags = 10;
		var tagsinputWidgets = $('input[name=tagString]').tagsinput(
				tagsInputConfig);
		var tagsInputItemAddedEventCallback = function(event) {
			$(this).parent().find(".tt-input").typeahead("val", "");
		};
		$('input[name=tagString]').on('itemAdded',
				tagsInputItemAddedEventCallback);

		tagsinputWidgets.forEach(function(widget) {
			var input = widget.input();

			input.focusout(function() {
				widget.add(input.val());
				input.typeahead('val', '');
			});

			input.keyup(function() {
				var value = this.value;
				value = value.substring(value.length - 1);
				if (value == "," || value == " ") {
					widget.add($.trim(input.val()));
					input.typeahead('val', '');
				}
			});
		});
	</script>
	 --%>

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