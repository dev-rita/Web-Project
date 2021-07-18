<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script>
	function w_check() {

		if ($.trim($("#b_title").val()).length == 0) {
			alert("글제목을 입력하세요!");
			$("#b_title").val("").focus();//입력필드를 초기화하고 포커스 이동
			return false;
		}

		if ($.trim($("#b_cont").val()).length == 0) {
			alert("내용을 입력하세요!");
			$("#b_cont").val("").focus();//입력필드를 초기화하고 포커스 이동
			return false;
		}
		
		if (!($.trim($("#b_cont").val()).length == 0)&&!($.trim($("#b_cont").val()).length == 0)) {
			alert('글 작성이 완료되었습니다.');
		}
	}
</script>
<meta charset="UTF-8">
<title>새 글 쓰기</title>
<jsp:include page="../include/header2.jsp" />
<div class="line" id="article">
	<h5>새 글 쓰기</h5>
	<div style="width: 300px; height: 50px;"></div>
	<form method="post" action="board8_ok.jsp" onsubmit="return w_check();">
		<div id="member"><a href="#"><img src="../Images/member.PNG" width="40" height="35" alt="member" /></a> <h6><a href="#">글쓴이</a></h6> <br/>
		<img src="../Images/score.PNG" width="10" height="10" alt="score" /><h6>0</h6></div>
		<%--type 속성을 생략하면 기본값으로 text이다. --%>
		<div id="typing">
		<select id="board_type">
		<option value="" selected="selected">게시판을 선택해주세요.</option>
		<option value="community">커뮤니티</option>
		<option value="q&a">Q&amp;A</option>
		</select>
		<div id="title"><input type="text" name="b_title" id="b_title" size="75" Placeholder="제목을 입력해 주세요." /><br/><br/></div>
		<div id="tag"><input type="text" name="b_tag" id="b_tag" size="75" Placeholder="Tags." /><br/><br/></div>
		
		<div id="cont"><textarea name="b_cont" id="b_cont" rows="10" cols="77"></textarea><br/><br/></div>
		<div id="recapcha"><div>로봇이 아닙니다.</div></div>
		<input class="btn_reset" id=reset type="reset" value="취소" /> <input class="btn_submit" id="submit" type="submit" value='등록' /> <br/><br/>

		</div>
	</form>

	<jsp:include page="../include/footer2.jsp" />
	<script>
		$(document).ready(function(){
			$("#reset").click(function(){
				if(confirm("글 작성을 취소 하시겠습니까?")==true){//확인
				alert('글 작성을 취소합니다.');
				history.go(-1);
				}else{ return false;}
					//this.reset(); 쓴거 없앰
			})
			
				$("#submit").click(function(){
				if(confirm("글 작성을 하시겠습니까?")==true){//확인
				return true;
				}
				else{ return false;}
					//this.reset(); 쓴거 없앰
			})
		})
		</script>