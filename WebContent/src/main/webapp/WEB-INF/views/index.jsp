<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - Better Developer</title>
<jsp:include page="include/header.jsp"/>

         <div class="main-banner-wrapper"><%-- 위쪽 광고 --%>
               <div class="main-banner">
                    <a href="/banner/stats/389" target="_t"><img src="//file.okky.kr/banner/1626855463694.jpg"></a>
                  </div>
            </div>

         <div id="index" class="content scaffold-list clearfix" role="main">
            <div class="col-sm-6 main-block-left">
               <div class="main-block">
                  <h4 class="main-header">
                     <i class="fas fa-cloud"></i> YWHY's Choice
                  </h4>
                  <div class="panel panel-default">
                     <ul class="list-group">
                        <c:if test="${!empty plist}">
                           <c:forEach var="p" items="${plist}">
                        <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                           <div class="list-title-wrapper">
                              <h5 class="list-group-item-heading">
                                 <a href="b_cont?b_no=${p.b_no}&page=1&state=cont">${p.b_title}</a>
                                 <div class="list-group-item-author pull-right clearfix">
                                    <div class="avatar clearfix avatar-x-small ">  
                                       <div class="avatar-info">
                                          <a class="nickname" href="b_my?mem_id=${p.mem_id}" title="OKKY">${p.b_name}</a>
                                          <div class="activity">
                                             <i class="fas fa-bolt"></i> 2k
                                          </div>
                                          <div class="date-created">
                                             <span class="timeago" title="${p.b_date}">${p.b_date}</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </h5>
                           </div>
                        </li>
                        </c:forEach>
                        </c:if>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-sm-6 main-block-right">
               <div class="main-block">
                  <h4 class="main-header">
                     <i class="fas fa-sun"></i> 공지사항
                  </h4>
                  <div class="panel panel-default">
                     <ul class="list-group">
                        <c:if test="${!empty nlist}">
                           <c:forEach var="n" items="${nlist}">
                        <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                           <div class="list-title-wrapper">
                              <h5 class="list-group-item-heading">
                                 <a href="b_notice_cont?n_no=${n.n_no}&page=1&state=cont">${n.n_title}</a>
                                 <div class="list-group-item-author pull-right clearfix">
                                    <div class="avatar clearfix avatar-x-small ">                       
                                       <div class="avatar-info">
                                          <a class="nickname" href="b_my?mem_id=${n.mem_id}" title="${n.n_name}">${n.n_name}</a>
                                          <div class="activity">
                                             <i class="fas fa-bolt"></i> 2k
                                          </div>
                                          <div class="date-created">
                                             <span class="timeago" title="${n.n_date}">${n.n_date}</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </h5>
                           </div>
                        </li>
                     </c:forEach>
                     </c:if>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="col-sm-8 main-block-left">
               <div class="main-block">
                  <h4 class="main-header">
                     <i class="fas fa-laptop"></i> Q&amp;A 
                     <a href="b_questions" class="main-more-btn pull-right">
                        <i class="fas fa-ellipsis-h"></i>
                     </a>
                  </h4>
                  <div class="panel panel-default">
                     <ul class="list-group">
                        <c:if test="${!empty qlist}">
                           <c:forEach var="q" items="${qlist}">
                        <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                           <div class="list-title-wrapper">
                              <h5 class="list-group-item-heading">
                                 <a href="b_cont?b_no=${q.b_no}&page=1&state=cont">${q.b_title}</a>
                                 <div class="list-group-item-author pull-right clearfix">
                                    <div class="avatar clearfix avatar-x-small ">                                
                                       <div class="avatar-info">
                                          <a class="nickname" href="b_my?mem_id=${q.mem_id}" title="${q.b_name}">${q.b_name}</a>
                                          <div class="activity">
                                             <i class="fas fa-bolt"></i> 14
                                          </div>
                                          <div class="date-created">
                                             <span class="timeago" title="${q.b_date}">${q.b_date}</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </h5>
                           </div>
                        </li>
                        </c:forEach>
                        </c:if>
                     </ul>
                  </div>
               </div>
            </div>
            
            <div class="col-sm-8 main-block-right">
               <div class="main-block">
                  <h4 class="main-header">
                     <i class="fas fa-coins"></i> 커뮤니티 
                     <a href="b_community" class="main-more-btn pull-right">
                        <i class="fas fa-ellipsis-h"></i>
                     </a>
                  </h4>
                  <div class="panel panel-default">
                     <ul class="list-group">
                     <c:if test="${!empty blist}">
                           <c:forEach var="b" items="${blist}">
                        <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                           <div class="list-title-wrapper">
                              <h5 class="list-group-item-heading">
                                 <a href="b_cont?b_no=${b.b_no}&page=1&state=cont">${b.b_title}</a>
                                 <div class="list-group-item-author pull-right clearfix">
                                    <div class="avatar clearfix avatar-x-small ">
                                       <a href="/user/info/124563" class="avatar-photo">
                                          <img src="//www.gravatar.com/avatar/7b34a9bb58a615dd73a7d5d0dc978efb?d=identicon&amp;s=10">
                                       </a>
                                       <div class="avatar-info">
                                          <a class="nickname" href="b_my?mem_id=${b.mem_id}" title="${b.b_name}">${b.b_name}</a>
                                          <div class="activity">
                                             <i class="fas fa-bolt"></i> 14
                                          </div>
                                          <div class="date-created">
                                             <span class="timeago" title="${b.b_date}">${b.b_date}</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </h5>
                           </div>
                        </li>
                        </c:forEach>
                        </c:if>
                     </ul>
                  </div>
               </div>
            </div>
         </div>

         <div class="right-banner-wrapper"><%-- 오른쪽 광고 --%>
                <div class="google-ad">
                   <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                      <!-- okjspad_160x500 -->
                       <ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_1_expand" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"><ins id="aswift_1_anchor" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;"><iframe id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1627279039&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2F&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627279039021&amp;bpp=4&amp;bdt=500&amp;idt=144&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;prev_fmts=250x250&amp;correlator=2495855955506&amp;frm=20&amp;pv=1&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627279039&amp;ga_hid=1669324219&amp;ga_fc=0&amp;u_tz=540&amp;u_his=3&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=20&amp;biw=1265&amp;bih=937&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C20211866%2C21067496&amp;oid=3&amp;pvsid=3237660968919372&amp;pem=707&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1282%2C937&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;xpc=0P8aw9ZTPc&amp;p=https%3A//okky.kr&amp;dtd=152" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!2" data-google-query-id="COviiOmGgPICFY7IfAodvBkEEw" data-load-complete="true"></iframe></ins></ins></ins>
                   <script>
                      (adsbygoogle = window.adsbygoogle || []).push({});
                   </script>
               </div>
             </div>

<jsp:include page="include/footer.jsp"/>

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
            var contextPath = "";
            var encodedURL = "%2F";
    </script>
    
   <script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
   <%-- fontawsome이란 웹 아이콘 폰트를 모아놓은 라이브러리 사용 --%>
   <script src="./resources/js/application.js" type="text/javascript"></script>
   <script src="./resources/js/apps/notification.js" type="text/javascript"></script>
   <%--<script src="./resources/js/apps/search.js" type="text/javascript"></script> --%>
   <script>
        $(function () {
          $('.timeago').timeago();
        });
    </script>

   <ins class="adsbygoogle adsbygoogle-noablate"
      data-adsbygoogle-status="done" style="display: none !important;"
      data-ad-status="unfilled">
      <ins id="aswift_2_expand" tabindex="0" title="Advertisement"
         aria-label="Advertisement"
         style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;">
         <ins id="aswift_2_anchor"
            style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;">
            <iframe id="aswift_2" name="aswift_2"
               style="left: 0; position: absolute; top: 0; border: 0; width: undefinedpx; height: undefinedpx;"
               sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
               frameborder="0"
               src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1627036842&amp;plat=1%3A16777224%2C2%3A16777224%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1048576%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2F&amp;ea=0&amp;flash=0&amp;pra=7&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627036842891&amp;bpp=2&amp;bdt=131&amp;idt=2&amp;shv=r20210720&amp;mjsv=m202107220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;prev_fmts=151x250&amp;nras=1&amp;correlator=6838673989473&amp;frm=20&amp;pv=1&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627036843&amp;ga_hid=2142981167&amp;ga_fc=0&amp;u_tz=540&amp;u_his=5&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=943&amp;bih=919&amp;scr_x=0&amp;scr_y=0&amp;eid=44743418%2C31060957%2C31061979%2C20211866%2C21067496&amp;oid=3&amp;pvsid=1804935848237523&amp;pem=707&amp;ref=https%3A%2F%2Fokky.kr%2Flogin%2Fauth%3Flogout&amp;eae=2&amp;fc=896&amp;brdim=-8%2C-8%2C-8%2C-8%2C1920%2C0%2C976%2C1056%2C960%2C936&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=33792&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;fsb=1&amp;dtd=9"
               marginwidth="0" marginheight="0" vspace="0" hspace="0"
               allowtransparency="true" scrolling="no" allowfullscreen="true"
               data-google-container-id="a!3" data-load-complete="true"></iframe>
         </ins>
      </ins>
   </ins>
   <iframe id="google_osd_static_frame_6871337382217"
      name="google_osd_static_frame"
      style="display: none; width: 0px; height: 0px;"></iframe>
   <iframe src="https://www.google.com/recaptcha/api2/aframe" width="0"
      height="0" style="display: none;"></iframe>
</body>
</html>