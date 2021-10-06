<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - tag</title>

<jsp:include page="../include/header.jsp"/>
			<!-- 메뉴 끝 -->
			<div id="list-article" class="content scaffold-list" role="main">
				<div class="nav" role="navigation">
					<h4>
						Tagged <span class="item-tag label label-gray">${find_tag}</span>
					</h4>
					<div class="category-filter-wrapper">
						<%--<form action="/articles/tagged/redis" method="get" 
						name="category-filter-form" id="category-filter-form">
							<div class="category-filter-query pull-right">
								<div class="input-group input-group-sm">
									<input type="search" name="query" class="form-control" placeholder="검색어" value="" />
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</div>
							<ul class="list-sort pull-left">
								<li>
									<a href="/articles/tagged/redis?query=&sort=id&order=desc"
									data-sort="id" data-order="desc" class="category-sort-link active">최신순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=voteCount&order=desc"
									data-sort="voteCount" data-order="desc" class="category-sort-link ">추천순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=noteCount&order=desc"
									data-sort="noteCount" data-order="desc" class="category-sort-link ">댓글순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=scrapCount&order=desc"
									data-sort="scrapCount" data-order="desc" class="category-sort-link ">스크랩순</a>
								</li>
								<li>
									<a href="/articles/tagged/redis?query=&sort=viewCount&order=desc"
									data-sort="viewCount" data-order="desc" class="category-sort-link ">조회순</a>
								</li>
							</ul>
							<input type="hidden" name="sort" id="category-sort-input"
							value="id" /> <input type="hidden" name="order" id="category-order-input" value="desc" />
						</form>--%>
						
						 <form id="category-filter-form" name="category-filter-form" method="get" action="b_tag">
			               <div class="category-filter-wrapper">
			                  <div class="category-filter-query pull-right">
			                     <div class="input-group input-group-sm">
			                    
			                    
			                      <input type="hidden" name="tag" value="${find_tag}">
			                      
			                        
			                     	<select name="find_field" class="form-control" id="find_field">
										<option value="b_title" <c:if test="${find_field == 'b_title'}" > ${'selected'} </c:if>> 제목 </option>
										<option value="b_cont" <c:if test="${find_field == 'b_cont'}" > ${'selected'} </c:if>> 내용 </option>
									</select>
			                        <input type="search" name="find_name" id="search-field" class="form-control" placeholder="검색어" value="${find_name}">
			                        <span class="input-group-btn">
			                           <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
			                       <c:if test="${!empty find_name}" ><a href="b_tag?tag=${find_tag}" class="btn btn-warning"><i class="fa fa-times-circle"></i>clear</a></c:if>
			                        </span>
			                     </div>
			                  </div>
			                  <ul class="list-sort pull-left">
			                     <li><a href="#" data-sort="id" data-order="desc" class="category-sort-link <c:if test="${(sort==null) || sort.equals('id')}">active</c:if>">최신순</a></li>
			                     <li><a href="#" data-sort="voteCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('voteCount')}">active</c:if>">추천순</a></li>
			                     <li><a href="#" data-sort="noteCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('noteCount')}">active</c:if>">댓글순</a></li>
			                     <li><a href="#" data-sort="scrapCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('scrapCount')}">active</c:if>">스크랩순</a></li>
			                     <li><a href="#" data-sort="viewCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('viewCount')}">active</c:if>">조회순</a></li>                     
			                  </ul>
			                  
			               <input type="hidden" name="sort" id="category-sort-input" value="id">
			                <input type="hidden" name="order" id="category-order-input" value="desc">

			               </div>
           				 </form>
					</div>
				</div>
				<div class="panel panel-default">
					<!-- Table -->
					<ul class="list-group">
               	 <c:if test="${!empty blist}">
         			<c:forEach var="b" items="${blist}">
                     <li class="list-group-item list-group-item-question <c:if test="${b.b_replycnt==0}">list-group-no-note</c:if><c:if test="${b.b_replycnt!=0}">list-group-has-note</c:if> clearfix">
                        <div class="list-title-wrapper clearrfix">
                           <div class="list-tag clearfix">
                                 <span class="list-group-item-text article-id">&num;${b.b_no}</span><!-- 번호 -->
                               <a href="${b.b_cate == '커뮤니티' ? 'b_community' : 'b_questions'}" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> ${b.b_cate}</a><!-- 태그 -->
                               <c:forTokens var="tag1" items="${b.b_tag}" delims=",">
									<a href="b_tag?tag=${tag1}" class="list-group-item-text item-tag label label-gray ">${tag1}</a>
								</c:forTokens>
                           </div>
                           <h5 class="list-group-item-heading list-group-item-evaluate">
                                 <a href="b_cont?b_no=${b.b_no}&page=${page}&state=cont">${b.b_title}</a><!-- 제목 -->
                            </h5>
                        </div>
                         <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                                 <ul>
                                    <li class="<c:if test="${b.b_replycnt == 0}">item-icon-disabled</c:if>"><i class="item-icon fa fa-comment"></i>${b.b_replycnt}</li><!-- 댓글 수 -->
                                    <li class="<c:if test="${b.b_rec == 0}">item-icon-disabled</c:if>"><i class="item-icon fa fa-thumbs-up"></i>${b.b_rec}</li><!-- 추천 수  -->                               
                                    <li class="<c:if test="${b.b_hit == 0}">item-icon-disabled</c:if>"><i class="item-icon fa fa-eye"></i>${b.b_hit}</li><!-- 조회 수  -->
                                                                   
                               </ul>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                             <div class="avatar clearfix avtar-list">
                                   <a href="b_my?mem_id=${b.mem_id}" class="avatar-photo">
                                 <div class="avatar-info">
                                    <a class="nickname" href="b_my?mem_id=${b.mem_id}" title="${b.b_name} ">${b.b_name}</a><!-- 작성자  -->
                                       <div class="date-created"><span class="timeago" title="${b.b_date}">${b.b_date}</span></div><!-- 작성날짜 -->
                              </div>
                          </div>
                        </div>
                     </li>
                      </c:forEach>
        		  </c:if>
        		  
        		  <c:if test="${(empty blist)&&(!empty find_field)&&(!empty find_name)}">  
                     <li class="list-group-item clearfix">
                        <div class="panel-body-item clearfix">
                       		<div class="panel-body text-center">
                           <h5 class="list-group-item-heading list-group-item-evaluate">
                       		         게시글이 없습니다!<!-- 제목 -->
                            </h5>
                            </div>
                        </div>                
                     </li>                 
        		  </c:if>
               </ul>
				</div>
				 <c:if test="${(empty find_field)&&(empty find_name)}">
              <div class="text-center">
            <ul class="pagination pagination-sm">
              
               	<c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
               	 <li class="prev disabled">
                  <span>«&nbsp;</span>
                  </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
				<a href="b_tag?tag=${find_tag}&page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
				</li>
				</c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
						<li class="active"><span>${a}</span></li>
					</c:if>
					<c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
						<li><a href="b_tag?tag=${find_tag}&page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
					</c:if>
				</c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_tag?tag=${find_tag}&page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
              
               	<c:if test="${page >= maxpage }">
               	<li class="next disabled">
               		<span>»&nbsp;</span>
               	</li>
               	</c:if>
				<c:if test="${page < maxpage }">
				 <li class="next">
					<a href="b_tag?tag=${find_tag}&page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
				 </li>
				</c:if>
              
               </ul>
               </div>
             </c:if>      
             <%--검색 후 페이징 --%>
            
             <c:if test="${(!empty find_field)&&(!empty blist)}">
              <div class="text-center">
             <ul class="pagination pagination-sm">

              
               	<c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
               	<li class="prev disabled">
                  <span>«&nbsp;</span>
                </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
				<a href="b_tag?tag=${find_tag}&find_field=${find_field}&find_name=${blank_find_name}&page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
				</li>
				</c:if>

               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
						<li class="active"><span>${a}</span></li>
					</c:if>
					<c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
						<li><a href="b_tag?tag=${find_tag}&find_field=${find_field}&find_name=${blank_find_name}&page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
					</c:if>
				</c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_tag?tag=${find_tag}&find_field=${find_field}&find_name=${blank_find_name}&page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
               
               	<c:if test="${page >= maxpage }">
               	 <li class="next disabled">
               		<span>»&nbsp;</span>
               	 </li>
               	</c:if>
				<c:if test="${page < maxpage }">
				 <li class="next">
					<a href="b_tag?tag=${find_tag}&find_field=${find_field}&find_name=${blank_find_name}&page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
				 </li>
				</c:if>
              
                </ul>
                </div>
             </c:if>
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
        var encodedURL = "%2Farticles%2Ftagged%2Fredis";
    </script> 
	<script src="./resources/js/application.js" type="text/javascript"></script>
	<script src="./resources/js/apps/search.js" type="text/javascript"></script>
	<script src="./resources/js/apps/notification.js" type="text/javascript"></script>
	<script src="./resources/js/questions.js" type="text/javascript"></script> 
	<script>
		$(function() {
		    $('.category-sort-link').click(function(e) {
		        $('#category-sort-input').val($(this).data('sort'));
		        $('#category-order-input').val($(this).data('order'));
		        e.preventDefault();
		        $('#category-filter-form')[0].submit();
		    });
		});
	</script>
</body>
</html>
