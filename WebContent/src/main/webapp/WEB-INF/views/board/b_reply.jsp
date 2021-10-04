<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 답변 글 쓰기</title>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<jsp:include page="../include/header.jsp"/>

			<div id="article-create" class="content" role="main">
				<div class="content-header">
					<h3>답변 글 쓰기</h3>
				</div>
				<div class="panel panel-default clearfix">
					<div class="panel-heading clearfix">
						<div class="avatar clearfix avatar-medium pull-left">
							<a href="/user/info/124651" class='avatar-photo'>
								<img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png" /></a>
							<div class="avatar-info">
								<a class="nickname" href="b_my?mem_id=${b.mem_id}" title="${m.mem_nick}" id="nickname">${m.mem_nick}</a>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form action="b_reply_ok?b_no=${b.b_no}&page=${page}" method="post" 
						id="article-form" class="article-form" role="form" onsubmit="return postForm()">
							<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
								<input type="hidden" name="b_ref" value="${b.b_ref}" /><%--원본글과 답변글을 묶어주는 그룹 번호값 --%>
								<input type="hidden" name="b_step" value="${b.b_step}" />
								<%-- 원본글이면 0,첫번째 답변글이면1,즉 원본글과 답변글을 구분하는 번호값이면서 몇번째 답변글인가를 알려줌. --%>
								<input type="hidden" name="b_level" value="${b.b_level}" /><%--답변글 정렬순서 --%>
								<input type="hidden" name="b_name" id="b_name" value="">
								<input type="hidden" name="b_cate" id="category" value="${b.b_cate == '커뮤니티' ? '커뮤니티' : 'Q&A'}">
								<script>
								document.getElementById('b_name').value=document.getElementById('nickname').textContent;								
								</script>
								
								<div class="form-group has-feedback">
									<div>
										<input type="text" name="b_title" required="" value="Re:${b.b_title}"
											placeholder="제목을 입력해 주세요." class="form-control" id="title">
									</div>
								</div>
								<div class="form-group has-feedback">
									<div>
										<input type="text" name="b_tag" value=""
											placeholder="Tags," class="form-control" id="tagString">
									</div>
								</div>
								<div class="form-group has-feedback">
									<textarea name="b_cont" id="summernote" rows="20"
										class="form-control input-block-level"></textarea>
									<input type="hidden" name="textType" value="HTML" id="textType">
									<div class="recaptcha-wrapper">
										<div class="g-recaptcha"
											data-sitekey="6Lcvw_gSAAAAAH3zOofJBJOFLpmjx7Vq3hxnYIRw"></div>
									</div>
									<div class="nav" role="navigation">
										<fieldset class="buttons">
											<a href="javascript:window.history.back();" class="btn btn-default btn-wide" 
											onclick="return confirm('정말로 취소하시겠습니까?')">취소</a> 
											<input type="submit" name="create" class="create btn btn-success btn-wide pull-right"
											action="create" value="등록" id="create">
										</fieldset>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="right-banner-wrapper">
				<div class="google-ad">
					<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- okjspad_160x500 -->
					<ins class="adsbygoogle" style="display: inline-block; width: 160px; height: 500px"
						data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"></ins>
					<script>
	                        (adsbygoogle = window.adsbygoogle || []).push({});
	                </script>
				</div>
			</div>
    		
    		<jsp:include page="../include/footer.jsp"/>
    		
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
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script>
            var contextPath = "";
            var encodedURL = "%2Farticles%2Fquestions%2Fcreate";
    </script>
	<script src="./resources/js/application.js" type="text/javascript"></script>
	<script src="./resources/js/apps/search.js" type="text/javascript"></script>
	<script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/libs/typeahead.bundle.js"></script>
	<script type="text/javascript">
		var tagTokenizers = new Bloodhound({
	    	datumTokenizer: Bloodhound.tokenizers.obj.whitespace('tagName'),
	    	queryTokenizer: Bloodhound.tokenizers.whitespace,
	    	remote: {
	      	url: '/tag?tagName=%QUERY',
	      	wildcard: '%QUERY'}
			});
	
		var tagsInputConfig = {
	        typeaheadjs: {
				displayKey: 'tagName',
			    valueKey: 'tagName',
			    source: tagTokenizers.ttAdapter(),
			    templates: {
			    	suggestion: function(tag){
			    		var query = tag._query.replace(/[.*+\-?^$(){}|[\]\\]/g, '\\$&');
			        	var regexp = new RegExp('^(' + query +')', 'g');
			        	return '<div>' + tag.tagName.replace(regexp, "<strong>$1</strong>") + ' <span>+' + tag.count + '</span></div>';
					}
				}
	    	}
		};
	
		var tagsInputItemAddedEventCallback = function(event) {
	    	$(this).parent().find(".tt-input").typeahead("val","");
		};
	</script>
	
	<script type="text/javascript">
		var tagsinputWidgets = $('input[name=b_tag]').tagsinput(tagsInputConfig);
		$('input[name=b_tag]').on('itemAdded', tagsInputItemAddedEventCallback);
	
		tagsinputWidgets.forEach(function(widget) {
	    	var input = widget.input();
			input.focusout(function() {
	        	widget.add(input.val());
	        	input.typeahead('val', '');
	   		});
			input.keyup(function() {
	        	var value = this.value;
	        	value = value.substring(value.length - 1);
	        	if(value == "," || value == " ") {
		        	widget.add($.trim(input.val()));
		        	input.typeahead('val', '');
	        	}
	    	});
		});

		$('#summernote').summernote({minHeight: 300, lang: 'ko-KR',
	  	onInit: function() {
	    	if($(window).height() > 400) {
	        	$('.note-editable').css('max-height', $(window).height()-100);
	    	}
	    	$(".note-link-btn").attr("type","button");
	  	},
	  	onImageUpload: $.onImageUpload($('#summernote'))
		});
	
		function postForm() {
			var response = grecaptcha.getResponse();
			if(response.length == 0) {
				alert("CAPTCHA 인증을 진행해주세요.");
			    return false;
			}
		    $('textarea[name="content.text"]').val($('#summernote').code());
		}
		
		$('#notice').click(function() {
		  if($(this).is(':checked')) {
		    $('#noticeCategoryList').show();
		  } else {
		    $('#noticeCategoryList').hide();
		    $('input[name="notices"]').prop('checked', false);
		  }
		});
		
	    $('#category').change(function() {
	        if(this.value == 'recruit') {
	            if(this.value && confirm('게시판 변경시 수정된 내용은 초기화 됩니다. 변경 하시겠습니까?')) {
	              /*if(this.value == 'recruit') {
	                location.href=contextPath+'/recruit/create';
	              } else {*/
	                location.href=contextPath+'/articles/'+this.value+'/create';
	              // }
	            } else {
	            }
	        }
	    });
	</script>
		<script type="text/javascript">
			setInterval(function(){
				$.get("/keepAlive");
			}, 1500 * 1000);
		</script>
			
</body>
</html>

