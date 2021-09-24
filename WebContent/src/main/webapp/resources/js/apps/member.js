/**
 * member.js (회원가입, 로그인)
 */
 
 /*회원가입 유효성*/
 function signup_check(){
	$("#idcheck").hide();
	if($.trim($("#id").val())==""){
		$errortext='<font color="#773209" size="2"><b>아이디를 입력하세요.</b></font>';
		$("#idcheck").text("");
		$("#idcheck").show();
		$("#idcheck").append($errortext);
		$("#id").val("").focus();
		return false;
	}
	
	$idChk=$("#idchk").val();
	if($idChk == "N"){
		$errortext='<font color="#773209" size="2"><b>중복 확인 버튼을 눌러주세요.</b></font>';
 		$("#idcheck").text("");
 		$("#idcheck").show();
 		$("#idcheck").append($errortext);
 		$("#id").focus();
 		return false;
	}
	
	$("#pwdcheck").hide();
	if($.trim($("#pwd").val())==""){
		$errortext='<font color="#773209" size="2"><b>비밀번호를 입력하세요.</b></font>';
		$("#pwdcheck").text("");
		$("#pwdcheck").show();
		$("#pwdcheck").append($errortext);
		$("#pwd").val("").focus();
		return false;
	}
	
	$("#emailcheck").hide();
	if($.trim($("#email").val())==""){
		$errortext='<font color="#773209" size="2"><b>이메일을 입력하세요.</b></font>';
		$("#emailcheck").text("");
		$("#emailcheck").show();
		$("#emailcheck").append($errortext);
		$("#email").val("").focus();
		return false;
	}
	
	$("#namecheck").hide();
	if($.trim($("#name").val())==""){
		$errortext='<font color="#773209" size="2"><b>이름을 입력하세요.</b></font>';
		$("#namecheck").text("");
		$("#namecheck").show();
		$("#namecheck").append($errortext);
		$("#name").val("").focus();
		return false;
	}
	
	$("#nickcheck").hide();
	if($.trim($("#nick").val())==""){
		$errortext='<font color="#773209" size="2"><b>닉네임을 입력하세요.</b></font>';
		$("#nickcheck").text("");
		$("#nickcheck").show();
		$("#nickcheck").append($errortext);
		$("#nick").val("").focus();
		return false;
	}


 }
 
 /*중복 아이디 검색*/
 function id_check(){
 	$("#idcheck").hide();
 	$mem_id=$.trim($("#id").val());
 	
 	//5글자 미만이면 
 	if($mem_id.length < 5){
 		$newtext='<font color="#773209" size="2"><b>아이디는 5자 이상이어야 합니다.</b></font>';
 		$("#idcheck").text(''); //idcheck 아이디 영역 문자열을 초기화
		$("#idcheck").show(); //idcheck 아이디 영역을 보이게 함.
		$("#idcheck").append($newtext); //idcheck영역에 문자열을 추가
		$("#id").val('').focus();
 	};
 	
 	//입력 조합 확인
 	if(!(validate_userid($mem_id))){
 		$newtext='<font color="#773209" size="2"><b>아이디는 영문소문자, 숫자, _ 조합만 가능합니다.</b></font>';
 		$("#idcheck").text("");
 		$("#idcheck").show();
 		$("#idcheck").append($newtext);
 		$("#id").val("").focus();
 	};
 	
 	//아이디 중복 확인 - $는 jQuery라는 뜻, $.ajax 뜻은 jQuery 내의 아작스 실행
 	$.ajax({
 		type:"POST",				//데이터를 서버로 보내는 방법
 		url:"mem_idcheck", 			//서버 매핑주소
 		data: {"id":$mem_id},
 		datatype: "int", 			//서버의 실행된 결과 값을 사용자로 받아오는 자료형 타입
 		success: function (data) {	//success는 아작스로 받아오는 것이 성공했을 경우, 서버 데이터를 data변수에 저장
 			if(data == 1){			//중복 아이디가 있다면
 				$newtext='<font color="#773209" size="2"><b>중복 아이디 입니다.</b></font>';
 				$("#idcheck").text("");
 				$("#idcheck").show();
 				$("#idcheck").append($newtext);
 				$("#id").val("").focus();
 			}else{					//중복 아이디가 아니면
 				$("#idchk").val("Y");
 				$newtext='<font color="#773209" size="2"><b>사용 가능한 아이디입니다.</b></font>';
 				$("#idcheck").text("");
 				$("#idcheck").show();
 				$("#idcheck").append($newtext);
 			}
 		},
 		error: function(){			//비동기식 아작스로 서버 db데이터를 못 가져와서 에러가 발생했을 때 호출되는 함수
 			alert("data error");
 		}
 	});
 }
 
 /*이메일 유효성 확인*/
 function mail_check() {
 	var $emailcheck = $("#emailcheck");
 	var $mem_mail = $("#email").val();
 	$emailcheck.hide();
 	
 	if(validate_email($mem_mail)){
 		$emailcheck.text("");
 		$emailcheck.show();
 		$emailcheck.append("");
 	}else{
 		$errortext='<font color="#773209" size="2"><b>이메일 형식에 맞지 않습니다.</b></font>';
 		$emailcheck.text("");
 		$emailcheck.show();
 		$emailcheck.append($errortext);
 	}
 	return false;
 }
 $("#email").on("input", mail_check);
 
 /*아이디 정규 표현식*/
 function validate_userid($mem_id){
 	var pattern=new RegExp(/^[a-z0-9_]+$/);		//아이디를 영소문자와 숫자와 _조합으로 처리
 	return pattern.test($mem_id);
 }
 
 /*메일 정규 표현식*/
 function validate_email($mem_mail) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test($mem_mail);
 }
 
 
 /*로그인*/
 function login_check(){
    $("#id_check").hide();
	if($.trim($("#login_id").val())==""){
		$errortext='<font color="#773209" size="2"><b>아이디를 입력하세요.</b></font>';
		$("#id_check").text("");
		$("#id_check").show();
		$("#id_check").append($errortext);
		$("#login_id").val("").focus();
	}
	
	$("#pwd_check").hide();
	if($.trim($("#login_pwd").val())==""){
		$errortext='<font color="#773209" size="2"><b>비밀번호를 입력하세요.</b></font>';
		$("#pwd_check").text("");
		$("#pwd_check").show();
		$("#pwd_check").append($errortext);
		$("#login_pwd").val("").focus();
	}	
	
	$mem_id=$.trim($("#login_id").val());
	$mem_pwd=$.trim($("#login_pwd").val());
	
 	$.ajax({
 		type:"POST",				//데이터를 서버로 보내는 방법
 		url:"login_ok", 			//서버 매핑주소
 		data: {"login_id":$mem_id,"login_pwd":$mem_pwd},	//login_id부분은 뷰페이지의 id와 같아야 한다.
 		datatype: "int", 			//서버의 실행된 결과 값을 사용자로 받아오는 자료형 타입
 		success: function (data) {	//success는 아작스로 받아오는 것이 성공했을 경우, 서버 데이터를 data변수에 저장
 			if(data == 0){			//아이디나 비번이 일치하는 것이 없으면
 				$errortext='<font color="#773209" size="2"><b>아이디 또는 비밀번호가 올바르지 않습니다.</b></font>';
 				$("#pwd_check").text("");
 				$("#pwd_check").show();
 				$("#pwd_check").append($errortext);
 				$("#login_id").val("").focus();
 				$("#login_pwd").val("").focus();			
 			}else{
 				 location=".";	
 			}
 		},
 		error: function(){			//비동기식 아작스로 서버 db데이터를 못 가져와서 에러가 발생했을 때 호출되는 함수
 			alert("data error");
 		}
 	});
}

