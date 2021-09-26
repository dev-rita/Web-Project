<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<title>YWHY - Q&amp;A</title>

<jsp:include page="../include/header.jsp"/>

     <div id="list-article" class="content scaffold-list life-list" role="main">
        <div class="nav" role="navigation">
         <c:if test="${!empty m}">
           <a class="create btn btn-success btn-wide pull-right" onclick="location='b_create?page=${page}';" ><i class="fa fa-pencil"></i> 새 글 쓰기</a>
         </c:if>
            <h4>Q&amp;A</h4>
            <form id="category-filter-form" name="category-filter-form" method="get" action="b_questions">
               <div class="category-filter-wrapper">
                  <div class="category-filter-query pull-right">
                     <div class="input-group input-group-sm">
                        <select name="find_field" class="form-control" id="find_field">
                     <option value="b_title" <c:if test="${find_field == 'b_title'}" > ${'selected'} </c:if>> 제목 </option>
                     <option value="b_cont" <c:if test="${find_field == 'b_cont'}" > ${'selected'} </c:if>> 내용 </option>
                  </select>
                        <input type="search" name="find_name" id="search-field" class="form-control" placeholder="검색어" value="${find_name}">
                        <span class="input-group-btn">
                           <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                       <c:if test="${!empty find_name}" ><a href="b_questions" class="btn btn-warning"><i class="fa fa-times-circle"></i>clear</a></c:if>
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
         
         <div class="why-choice">
            <div class="panel panel-default">
               <ul class="list-group">
                  <li class="list-group-item list-group-item-question list-group-has-note clearfix">
                     <div class="list-title-wrapper clearfix">
                        <div class="list-tag clearfix">
                           <span class="list-group-item-text article-id">#1005955</span>
                           <a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 공지사항</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">3차 업데이트 미리보기</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">2차</a>
                           <a href="/articles/tagged/" class="list-group-item-text item-tag label label-gray">업데이트</a>
                           <a href="/articles/tagged/okkyjobs" class="list-group-item-text item-tag label label-gray">YWHYjobs</a>
                        </div>
                        <h5 class="list-group-item-heading list-group-item-evaluate">
                           <a href="/article/1005955">[YWHY JOBs] 2차, 3차 업데이트 안내</a>
                        </h5>
                     </div>
                        <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                              <div class="list-summary-wrapper clearfix">
                             <div class="item-evaluate-wrapper pull-right clearfix">
                                 <div class="item-evaluate">
                                   <div class="item-evaluate-icon">
                                       <i class="item-icon fa fa-thumbs-o-up" aria-hidden="true"></i>
                                   </div>
                                   <div class="item-evaluate-count">68</div>
                               </div>
                               <div class="item-evaluate item-evaluate-has-note">
                                   <div class="item-evaluate-icon">
                                       <i class="item-icon fa fa-exclamation-circle" aria-hidden="true"></i>
                                   </div>
                                   <div class="item-evaluate-count">26</div>
                               </div>
                        </div>        
                     </div>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                           <div class="avatar clearfix avatar-list">
                              <a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&amp;s=30"></a>
                              <div class="avatar-info">
                                 <a class="nickname" href="/user/infor/45597" title="OKKY">OKKY</a>
                                 <div class="activity"><span class="fa fa-flash"></span>2k
                                 </div>
                                 <div class="date-created"><span class="timeago" title="2021-07-22T15:19:04">2021-07-22 15:19:04</span></div>
                              </div>
                           </div>
                     </div>
                     </li>
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
                  <c:if test="${!empty blist}">
                  <c:forEach var="b" items="${blist}">
                     <li class="list-group-item list-group-item-question <c:if test="${b.b_replycnt==0}">list-group-no-note</c:if><c:if test="${b.b_replycnt!=0}">list-group-has-note</c:if> clearfix">
                        <div class="list-title-wrapper clearrfix">
                           <div class="list-tag clearfix">
                                 <span class="list-group-item-text article-id">&num;${b.b_ref}<c:if test="${b.b_step != 0}">답변글</c:if></span><!-- 번호 -->
                               <a href="<c:if test="${b.b_cate==\"community\"}">b_community</c:if><c:if test="${b.b_cate==\"Q&A\"}">b_questions</c:if>" 
                               class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> ${b.b_cate}</a><!-- 태그 -->
                               <c:forTokens var="tag" items="${b.b_tag}" delims=",">
                           <a href="b_tag?tag=${tag}" class="list-group-item-text item-tag label label-gray">${tag}</a>
                        </c:forTokens>
                           </div>
                           <h5 class="list-group-item-heading list-group-item-evaluate">
                                <c:if test="${b.b_step != 0}"><%--답변글일때만 실행--%>
								<c:forEach begin="1" end="${b.b_step}" step="1">
   								&nbsp;<%--답변글 들여쓰기 --%>
								</c:forEach>
								<img src="./resources/images/AnswerLine.gif" alt="화살표" />
								<%--답변글 이미지 출력부분 --%>
								</c:if> 
                                 <a href="b_cont?b_no=${b.b_no}&page=${page}&state=cont">${b.b_title}</a><!-- 제목 -->
                            </h5>
                        </div>
                         <div class="list-summary-wrapper clearfix">
                           <div class="list-group-item-summary clearfix">
                                 <div class="item-evaluate-wrapper pull-right clearfix">
                            <div class="item-evaluate">
                                <div class="item-evaluate-icon"><!-- b.b_rec가 0보다 작을때를 설정해줘야함 -->
                                    <i class="
                                    <c:if test="${b.b_rec>=0}">item-icon fa fa-thumbs-o-up</c:if>
                                    <c:if test="${b.b_rec<0}">item-icon fa fa-thumbs-o-down</c:if>" aria-hidden="true"></i>
                                </div>
                                   <div class="item-evaluate-count">${b.b_rec}</div>
                            </div>
                            <div class="item-evaluate <c:if test="${b.b_replycnt==0}">item-evaluate-no-note</c:if><c:if test="${b.b_replycnt!=0}">item-evaluate-has-note</c:if>">
                                <div class="item-evaluate-icon">
                                     <i class="<c:if test="${b.b_replycnt>0}">item-icon fa fa-exclamation-circle</c:if>
                                             <c:if test="${b.b_replycnt==0}">item-icon fa fa-question-circle</c:if>" aria-hidden="true"></i>
                                </div>
                                <div class="item-evaluate-count">${b.b_replycnt}</div>
                            </div>
                     </div>
                           </div>
                        </div>
                        <div class="list-group-item-author clearfix">
                             <div class="avatar clearfix avtar-list">
                                   <a href="/user/info/106884" class="avatar-photo"><img src="//www.gravatar.com/avatar/8b4ddad17ec0dd8ad9a309757d8f63ab?d=identicon&amp;s=30"></a>
                                 <div class="avatar-info">
                                    <a class="nickname" href="/user/info/106884" title="${b.b_name} ">${b.b_name}</a><!-- 작성자  -->
                                    <div class="activity"><span class="fa fa-flash"></span>32</div><!-- 활동점수  -->
                                       <div class="date-created"><span class="timeago" title="${b.b_date}">${b.b_date}</span></div><!-- 작성날짜 -->
                              </div>
                          </div>
                        </div>
                     </li>
                      </c:forEach>
                </c:if>
                
                <c:if test="${(empty blist)}">  
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
             <c:if test="${(!empty blist)&&(empty find_field)&&(empty find_name)}">
              <div class="text-center">
            <ul class="pagination pagination-sm">
              
                  <c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
                   <li class="prev disabled">
                  <span>«&nbsp;</span>
                  </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
            <a href="b_questions?page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
            </li>
            </c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="b_questions?page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_questions?page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
              
                  <c:if test="${page >= maxpage }">
                  <li class="next disabled">
                     <span>»&nbsp;</span>
                  </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="b_questions?page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
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
            <a href="b_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
            </li>
            </c:if>

               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="b_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
               
                  <c:if test="${page >= maxpage }">
                   <li class="next disabled">
                     <span>»&nbsp;</span>
                   </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="b_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
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
          <footer class="index_footer">
            <div class="footer_box">
               <div class="footer_logo">
                  <img src="./resources/images/logo_gray.png" style="width:55px; height:55px;">
               </div>
               <div class="footer_content">
                  <strong>상호명</strong>: 김이이정 | 
                  <strong>대표명</strong>: 김태완 | 
                  <strong>팀원명</strong>: 이의수 이승연 정희선 | 
                  <strong>사업자번호</strong>: 404-99-12536 
                  <br>
                  <strong>주소</strong>: 서울시 동작구 꿈의길로 82 가요빌딩 1004호 (20000) |
                  <strong>문의</strong>: info@ywhy.kr
                  <hr style="margin:8px 0px; border:0px; border-top:1px solid #eee;">
                  <a href="../intro/loginbefore_about.jsp">About YWHY</a> | <a href="../user/privacy.jsp" data-toggle="modal" data-target="#userPrivacy">개인 정보 보호</a>
                  <a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
               </div>
            </div>
         </footer>
   </div>
</div>
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