<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 공지사항</title>

<jsp:include page="../include/header.jsp"/>

     <div id="list-article" class="content scaffold-list life-list" role="main">
     	<div class="nav" role="navigation">
     		 
        	<a class="create btn btn-success btn-wide pull-right" onclick="location='b_create?page=${page}';" ><i class="fa fa-pencil"></i> 새 글 쓰기</a>
          
            <h4>공지사항</h4>
            <form id="category-filter-form" name="category-filter-form" method="get" action="b_notice">
               <div class="category-filter-wrapper">
                  <div class="category-filter-query pull-right">
                     <div class="input-group input-group-sm">
                     	<select name="find_field" class="form-control" id="find_field">
							<option value="n_title" <c:if test="${find_field == 'n_title'}" > ${'selected'} </c:if>> 제목 </option>
							<option value="n_cont" <c:if test="${find_field == 'n_cont'}" > ${'selected'} </c:if>> 내용 </option>
						</select>
                        <input type="search" name="find_name" id="search-field" class="form-control" placeholder="검색어" value="${find_name}">
                        <span class="input-group-btn">
                           <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                       <c:if test="${!empty find_name}" ><a href="b_notice" class="btn btn-warning"><i class="fa fa-times-circle"></i>clear</a></c:if>
                        </span>
                     </div>
                  </div>
                  <ul class="list-sort pull-left">
                     <li><a href="#" data-sort="id" data-order="desc" class="category-sort-link <c:if test="${(sort==null) || sort.equals('id')}">active</c:if>">최신순</a></li>
                     <li><a href="#" data-sort="voteCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('voteCount')}">active</c:if>">추천순</a></li>
                     <li><a href="#" data-sort="viewCount" data-order="desc" class="category-sort-link <c:if test="${sort.equals('viewCount')}">active</c:if>">조회순</a></li>                     
                  </ul>
                  
               <input type="hidden" name="sort" id="category-sort-input" value="id">
                <input type="hidden" name="order" id="category-order-input" value="desc">
                  
               </div>
            </form>
         </div>
         
         <div class="why-choice">
            <div class="panel panel-default">
               <ul class="list-group">
                  <c:if test="${!empty nplist}">
                  <c:forEach var="n" items="${nplist}">
                     <li class="list-group-item list-group-item-question list-group-no-note clearfix" style="border-left:3px #3a93de solid !important;">
                        <div class="list-title-wrapper clearrfix">
                           <div class="list-tag clearfix">
                                 <span class="list-group-item-text article-id">&num;${n.n_no}</span><!-- 번호 -->
                               <a href="b_notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i>${n.n_cate}</a><!-- 태그 -->
                               <c:forTokens var="tag" items="${n.n_tag}" delims=","> <!-- 태그 -->              
                           <a href="b_tag?tag=${tag}" class="list-group-item-text item-tag label label-gray ">${tag}</a>
                        </c:forTokens>
                           </div>
                           <h5 class="list-group-item-heading list-group-item-evaluate">       
                                 <a href="b_notice_cont?n_no=${n.n_no}&page=${page}">${n.n_title}</a><!-- 제목 -->
                            </h5>
                        </div>
                         <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                                 <div class="item-evaluate-wrapper pull-right clearfix">
                            <div class="item-evaluate">
                                <div class="item-evaluate-icon">
                                    <i class="
                                    <c:if test="${n.n_rec>=0}">item-icon fa fa-thumbs-o-up</c:if>
                                    <c:if test="${n.n_rec<0}">item-icon fa fa-thumbs-o-down</c:if>" aria-hidden="true"></i>
                                </div>
                                   <div class="item-evaluate-count">${n.n_rec}</div>
                            </div>
                            <div class="item-evaluate">
                                <div class="item-evaluate-icon">
                                     <i class="item-icon fa fa-eye" aria-hidden="true"></i>
                                </div>
                                <div class="item-evaluate-count">${n.n_hit}</div>
                            </div>
                           </div>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                             <div class="avatar clearfix avtar-list">
                                   
                                 <div class="avatar-info">
                                    <a class="nickname" href="b_my?mem_id=${n.mem_id}" title="${n.n_name} ">${n.n_name}</a><!-- 작성자  -->
                                    <div class="activity"><span class="fa fa-flash"></span>32</div><!-- 활동점수  -->
                                       <div class="date-created"><span class="timeago" title="${n.n_date}">${n.n_date}</span></div><!-- 작성날짜 -->
                              </div>
                          </div>
                        </div>
                     </li>
                      </c:forEach>
                </c:if>
               </ul>
            </div>
         </div>
         <div class="main-banner-wrapper">
            <div class="main-banner">
               <a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg"></a>
            </div>
         </div>
        
            <div class="panel panel-default life-panel">
               <ul class="list-group">
               	 <c:if test="${!empty nlist}">
         			<c:forEach var="n" items="${nlist}">
                     <li class="list-group-item list-group-item-question list-group-no-note clearfix">
                        <div class="list-title-wrapper clearrfix">
                           <div class="list-tag clearfix">
                                 <span class="list-group-item-text article-id">&num;${n.n_no}</span><!-- 번호 -->
                               <a href="b_notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i>${n.n_cate}</a><!-- 태그 -->
                               <c:forTokens var="tag" items="${n.n_tag}" delims=","> <!-- 태그 -->              
									<a href="b_tag?tag=${tag}" class="list-group-item-text item-tag label label-gray ">${tag}</a>
								</c:forTokens>
                           </div>
                           <h5 class="list-group-item-heading list-group-item-evaluate">       
                                 <a href="b_notice_cont?n_no=${n.n_no}&page=${page}">${n.n_title}</a><!-- 제목 -->
                            </h5>
                        </div>
                           <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                                 <div class="item-evaluate-wrapper pull-right clearfix">
                            <div class="item-evaluate">
                                <div class="item-evaluate-icon">
                                    <i class="
                                    <c:if test="${n.n_rec>=0}">item-icon fa fa-thumbs-o-up</c:if>
                                    <c:if test="${n.n_rec<0}">item-icon fa fa-thumbs-o-down</c:if>" aria-hidden="true"></i>
                                </div>
                                   <div class="item-evaluate-count">${n.n_rec}</div>
                            </div>
                            <div class="item-evaluate">
                                <div class="item-evaluate-icon">
                                     <i class="item-icon fa fa-eye" aria-hidden="true"></i>
                                </div>
                                <div class="item-evaluate-count">${n.n_hit}</div>
                            </div>                           
                           </div>
                        </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                             <div class="avatar clearfix avtar-list">
                                   
                                 <div class="avatar-info">
                                    <a class="nickname" href="b_my?mem_id=${n.mem_id}" title="${n.n_name} ">${n.n_name}</a><!-- 작성자  -->
                                    <div class="activity"><span class="fa fa-flash"></span>32</div><!-- 활동점수  -->
                                       <div class="date-created"><span class="timeago" title="${n.n_date}">${n.n_date}</span></div><!-- 작성날짜 -->
                              </div>
                          </div>
                        </div>
                     </li>
                      </c:forEach>
        		  </c:if>
        		  
        		  <c:if test="${(empty nlist)}">  
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
        
        
          <%--검색 전 페이징 --%>
             <c:if test="${(!empty nlist)&&(empty find_field)&&(empty find_name)}">
              <div class="text-center">
            <ul class="pagination pagination-sm">
              
               	<c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
               	 <li class="prev disabled">
                  <span>«&nbsp;</span>
                  </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
				<a href="b_notice?page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
				</li>
				</c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
						<li class="active"><span>${a}</span></li>
					</c:if>
					<c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
						<li><a href="b_notice?page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
					</c:if>
				</c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_notice?page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
              
               	<c:if test="${page >= maxpage }">
               	<li class="next disabled">
               		<span>»&nbsp;</span>
               	</li>
               	</c:if>
				<c:if test="${page < maxpage }">
				 <li class="next">
					<a href="b_notice?page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
				 </li>
				</c:if>
              
               </ul>
               </div>
             </c:if>      
             <%--검색 후 페이징 --%>
            
             <c:if test="${(!empty find_field)&&(!empty nlist)}">
              <div class="text-center">
             <ul class="pagination pagination-sm">

              
               	<c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
               	<li class="prev disabled">
                  <span>«&nbsp;</span>
                </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
				<a href="b_notice?find_field=${find_field}&find_name=${blank_find_name}&page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
				</li>
				</c:if>

               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
						<li class="active"><span>${a}</span></li>
					</c:if>
					<c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
						<li><a href="b_notice?find_field=${find_field}&find_name=${blank_find_name}&page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
					</c:if>
				</c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_notice?find_field=${find_field}&find_name=${blank_find_name}&page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
               
               	<c:if test="${page >= maxpage }">
               	 <li class="next disabled">
               		<span>»&nbsp;</span>
               	 </li>
               	</c:if>
				<c:if test="${page < maxpage }">
				 <li class="next">
					<a href="b_notice?find_field=${find_field}&find_name=${blank_find_name}&page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
				 </li>
				</c:if>
              
                </ul>
                </div>
             </c:if>
            
	     
	         
	     </div>
       <div class="right-banner-wrapper">
         <div class="google-ad">
            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle" style="display:inline-block; width:160px; height:500px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:500px;margin:0;padding:0;position:relative;visibility:visible;width:160px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:500px;margin:0;padding:0;position:relative;visibility:visible;width:160px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627023969&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2Farticles%2Flife&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuODY0LjcxIixbXSxudWxsLG51bGwsbnVsbF0.&amp;dt=1627023969052&amp;bpp=1&amp;bdt=48&amp;idt=20&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dee607629c0fcafee-224c987d33c90088%3AT%3D1622864578%3ART%3D1622864578%3AS%3DALNI_MY7VofQozLmVunGLq3965B6JrT-vw&amp;correlator=5312791754074&amp;frm=20&amp;pv=2&amp;ga_vid=1222471380.1622864577&amp;ga_sid=1627023969&amp;ga_hid=943108740&amp;ga_fc=0&amp;u_tz=540&amp;u_his=4&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=65&amp;biw=1903&amp;bih=969&amp;scr_x=0&amp;scr_y=0&amp;eid=44739548%2C42530672%2C182982000%2C182982200%2C20211866&amp;oid=3&amp;pvsid=3842476153529701&amp;pem=522&amp;wsm=1&amp;ref=https%3A%2F%2Fokky.kr%2Farticles%2Fcommunity&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1920%2C969&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=55Qw5ypKSL&amp;p=https%3A//okky.kr&amp;dtd=24" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" allow="conversion-measurement" data-google-container-id="a!1" data-google-query-id="CNSO-M3Q-PECFY63vAodAf0PYQ" data-load-complete="true"></iframe></ins></ins></ins>
            <script>
               (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
         </div>
       </div>
    		
    		<jsp:include page="../include/footer.jsp"/>
    		
<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
<script src="./resources/js/application.js" type="text/javascript"></script>
<script src="./resources/js/apps/search.js" type="text/javascript"></script>
<script src="./resources/js/apps/notification.js" type="text/javascript"></script>
 
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
 
<script>
   $(function(){
      $('.category-sort-link').click(function(e){
         $('#category-sort-input').val($(this).data('sort'));
         $('#category-order-input').val($(this).data('order'));
         e.preventDefault();
         $('#category-filter-form')[0].submit();
      });
   });
</script>
</body>
</html>