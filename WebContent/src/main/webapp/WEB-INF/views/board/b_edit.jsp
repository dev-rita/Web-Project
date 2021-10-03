<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 글 수정 </title>

<jsp:include page="../include/header.jsp"/>
			<div id="article-edit" class="content" role="main">
	    		<div class="panel panel-default clearfix">
        			<div class="panel-heading clearfix">
						<div class="avatar clearfix avatar-medium pull-left">
							<div class="avatar-info">
								<a class="nickname" href="/user/info/124651" title="${m.mem_nick}">${m.mem_nick}</a>
								<div class="activity">
									<span class="fa fa-flash"></span> 10
								</div>
								<div class="date-created">
									<span class="timeago" title="${b.b_date}">${b.b_date}</span>
								</div>
							</div>
						</div>
            			<div class="content-identity pull-right">
            			<input type="hidden" name="b_no" value="${b.b_no}" />
                			<div><i class="fa fa-eye"></i> ${b.b_hit}</div>
            			</div>
        			</div>
        			<div class="panel-body">
        				<form action="b_edit_ok?b_no=${b.b_no}&page=${page}" method="post" id="article-form" 
        				class="article-form" role="form" onsubmit="return postForm()">
        					<input type="hidden" name="_method" value="PUT" id="_method">
                			<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
        						<div class="form-group has-feedback">
           							<div><!-- 카테고리 -->
                						<select id="category" name="b_cate" class="form-control" required="">
                    						<option value="">게시판을 선택해 주세요.</option>
											<option value="Q&A" data-external="false"
												data-anonymity="false"<c:if test="${b.b_cate=='Q&A'}">${'selected'}</c:if>>Q&amp;A</option>
											<option value="커뮤니티" data-external="false"
												data-anonymity="false"<c:if test="${b.b_cate=='커뮤니티'}">${'selected'}</c:if>>커뮤니티</option>
                						</select>
            						</div>
        						</div>
								<div class="form-group has-feedback">
    								<div>
    									<input type="text" name="b_title" required="" value="${b.b_title}"
    									 placeholder="제목을 입력해 주세요." class="form-control" id="title">
    								</div>
								</div>
								<div class="form-group has-feedback">
    								<div>
    									<input type="text" name="b_tag" value="${b.b_tag}" 
    									placeholder="Tags," class="form-control" id="tagString">
    								</div>
								</div>

								<div class="form-group has-feedback">
    								<textarea name="b_cont" id="summernote" rows="20" 
    								class="form-control input-block-level">
    								${b.b_cont}</textarea>
								</div>
								<input type="hidden" name="textType" value="HTML" id="textType">

                    			<div class="nav" role="navigation">
                        			<fieldset class="buttons">
	                           			<a href="javascript:window.history.back();" class="btn btn-default btn-wide" onclick="return confirm('정말로 취소하시겠습니까?')">취소</a>
	                            		<input type="submit" name="update" class="create btn btn-success btn-wide pull-right" value="수정" id="update">
                        			</fieldset>
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
	                <ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px"
	                	data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"></ins>
	                <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
	            </div>
            </div>
    		
    		<jsp:include page="../include/footer.jsp"/>
    		
	<div id="userPrivacy" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>
        <div id="userAgreement" class="modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>
   	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<script>
    	var contextPath = "";
        var encodedURL = "%2Farticle%2Fedit%2F1007659";
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
		      wildcard: '%QUERY'
		    }
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
		$('input[name=b_tag]').tagsinput(tagsInputConfig);
		$('input[name=b_tag]').on('itemAdded', tagsInputItemAddedEventCallback);
		
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
	</script>
	<script type="text/javascript">
		setInterval(function(){
			$.get("/keepAlive");
		}, 1500 * 1000);
	</script>
    </body>
</html>
