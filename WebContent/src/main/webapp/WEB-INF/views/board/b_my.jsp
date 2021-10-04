<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 회원 정보 보기 </title>

<jsp:include page="../include/header.jsp"/>

<div id="user" class="content clearfix" role="main">
  <div class="panel panel-default">
      <div class="panel-body">

   
   

<div class="avatar clearfix avatar-big col-sm-3 text-center">
      <a href="#" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
</div>
          <div class="user-info col-sm-9">
              <div class="clearfix">
                  <h4 class="pull-left">아이디 : ${mlist.mem_id} &nbsp;&nbsp;&nbsp;닉네임: ${mlist.mem_nick}</h4>
              </div>
              <div class="user-points">
                  <div class="user-point">
                      <div class="user-point-label"><i class="fa fa-flash"></i> 활동점수</div>
                      <div class="user-point-num"><a href="#">${mlist.mem_point}</a></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="col-sm-2 user-info-nav pull-right">
      <ul class="nav">
          <li class="active"><a href="#">최근 활동</a> </li>
          <li class=""><a href="#">게시물 <span class="badge">${totalCount}</span></a></li>
      </ul>
  </div>
  <div class="col-sm-10 main-block-left pull-left">
      <ul class="list-group">

         <c:if test="${!empty blist}">
         <c:forEach var="b" items="${blist}">
              <li class="list-group-item list-group-item-small list-group-no-note clearfix">
                  <div class="list-icon-wrapper pull-left">               
                     <i class="fa fa-pencil"></i>
                  </div>
                  <div class="list-title-wrapper list-activity">
                      <div class="list-activity-desc">
                          <span class="list-activity-desc-text">
                             ${b.b_no} 게시물을 작성하였습니다.
                          </span>
                          <span class="timeago" >${b.b_date}</span>
                      </div>
                      <h5 class="list-group-item-heading">
                           <a href="b_cont?b_no=${b.b_no}&page=${page}&state=cont">${b.b_title}</a>
                          <div class="list-group-item-author pull-right clearfix">
                     <div class="avatar clearfix avatar-x-small ">
                           <div class="avatar-info">
                              <a class="nickname" href="#" title="rita_dev">${b.b_name}</a>
                           </div>
                     </div>
                          </div>
                      </h5>
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
      <div class="text-center">

   <%-- 페이징 --%>
             <c:if test="${(!empty blist)}">
              <div class="text-center">
               <ul class="pagination pagination-sm">
              
                  <c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
                   <li class="prev disabled">
                  <span>«&nbsp;</span>
                  </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
            <a href="b_my?page=${page-1}&mem_id=${mlist.mem_id}"> <span>«</span></a>&nbsp;
            </li>
            </c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="b_my?page=${a}&mem_id=${mlist.mem_id}"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="b_my?page=${maxpage}&mem_id=${mlist.mem_id}">${maxpage}</a>   
               </li>
              
                  <c:if test="${page >= maxpage }">
                  <li class="next disabled">
                     <span>»&nbsp;</span>
                  </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="b_my?page=${page+1}&mem_id=${mlist.mem_id}"><span>»</span></a>&nbsp;
             </li>
            </c:if>
              
               </ul>
               </div>
             </c:if>      
             
        </div>
    </div>
</div>
                <div class="right-banner-wrapper">




                <div class="google-ad">
                      <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                      <!-- okjspad_160x500 -->
                      <ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_0_expand" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"><ins id="aswift_0_anchor" style="border: none; height: 500px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=1468885513&amp;pi=t.ma~as.6573675943&amp;w=160&amp;lmt=1633000836&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2Fuser%2Finfo%2F124651&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiOTQuMC45OTIuMzEiLFtdLG51bGwsbnVsbCwiNjQiXQ..&amp;dt=1633000836636&amp;bpp=2&amp;bdt=186&amp;idt=15&amp;shv=r20210927&amp;mjsv=m202109220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D2b7f7fd45f7b6cd2-22e731fc2dc80057%3AT%3D1620806292%3ART%3D1620806292%3AS%3DALNI_Mb64_Oj_6UjEQlN4WTSbL_aWR-jDA&amp;correlator=5929061421256&amp;frm=20&amp;pv=2&amp;ga_vid=582379394.1620806294&amp;ga_sid=1633000837&amp;ga_hid=1405594636&amp;ga_fc=1&amp;u_tz=540&amp;u_his=12&amp;u_h=720&amp;u_w=1280&amp;u_ah=720&amp;u_aw=1280&amp;u_cd=24&amp;u_java=0&amp;u_nplug=5&amp;u_nmime=2&amp;adx=1080&amp;ady=65&amp;biw=1551&amp;bih=656&amp;scr_x=0&amp;scr_y=0&amp;eid=21066435&amp;oid=3&amp;pvsid=2346843281480959&amp;pem=758&amp;wsm=1&amp;ref=https%3A%2F%2Fokky.kr%2Farticles%2Fquestions&amp;eae=0&amp;fc=896&amp;brdim=54%2C1%2C54%2C1%2C1280%2C0%2C1194%2C580%2C1573%2C656&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=6TLcv0Xr2W&amp;p=https%3A//okky.kr&amp;dtd=22" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-google-query-id="CJCF85XKpvMCFUrPfAodhA0KzA" data-load-complete="true"></iframe></ins></ins></ins>
                      <script>
                           (adsbygoogle = window.adsbygoogle || []).push({});
                      </script>
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
            var encodedURL = "%2Fuser%2Finfo%2F124651";
        </script>
        
        <script src="./resources/js/application.js" type="text/javascript"></script>
        <script src="./resources/js/apps/search.js" type="text/javascript"></script>
        <script src="./resources/js/apps/notification.js" type="text/javascript"></script>

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

    

<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><ins id="aswift_1_expand" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"><ins id="aswift_1_anchor" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;"><iframe id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1633000836&amp;plat=1%3A16777216%2C2%3A16777216%2C3%3A32%2C4%3A32%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2Fuser%2Finfo%2F124651&amp;ea=0&amp;flash=0&amp;pra=7&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiOTQuMC45OTIuMzEiLFtdLG51bGwsbnVsbCwiNjQiXQ..&amp;dt=1633000836639&amp;bpp=1&amp;bdt=190&amp;idt=30&amp;shv=r20210927&amp;mjsv=m202109220101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D2b7f7fd45f7b6cd2-22e731fc2dc80057%3AT%3D1620806292%3ART%3D1620806292%3AS%3DALNI_Mb64_Oj_6UjEQlN4WTSbL_aWR-jDA&amp;prev_fmts=160x500&amp;nras=1&amp;correlator=5929061421256&amp;frm=20&amp;pv=1&amp;ga_vid=582379394.1620806294&amp;ga_sid=1633000837&amp;ga_hid=1405594636&amp;ga_fc=0&amp;u_tz=540&amp;u_his=12&amp;u_h=720&amp;u_w=1280&amp;u_ah=720&amp;u_aw=1280&amp;u_cd=24&amp;u_java=0&amp;u_nplug=5&amp;u_nmime=2&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1551&amp;bih=656&amp;scr_x=0&amp;scr_y=0&amp;eid=21066435&amp;oid=3&amp;pvsid=2346843281480959&amp;pem=758&amp;wsm=1&amp;ref=https%3A%2F%2Fokky.kr%2Farticles%2Fquestions&amp;eae=2&amp;fc=896&amp;brdim=54%2C1%2C54%2C1%2C1280%2C0%2C1194%2C580%2C1573%2C656&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;dtd=36" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!2" data-load-complete="true"></iframe></ins></ins></ins><iframe id="google_osd_static_frame_8746501334562" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;"></iframe><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe>
</body>
<iframe id="google_esf" name="google_esf" src="https://googleads.g.doubleclick.net/pagead/html/r20210927/r20190131/zrt_lookup.html" style="display: none;"></iframe>
</html>