<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - ${n.n_title}</title>

<jsp:include page="../include/header.jsp"/>

	<div id="article" class="content" role="main">
		 <div class="main-banner-wrapper">
         	<div class="main-banner">
            	<a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg"></a>
            </div>
         </div>
	

   		 <div class="nav" role="navigation">
   		  <c:if test="${!empty m}">
       	    <a class="create btn btn-success btn-wide pull-right" onclick="location='b_create?page=${page}';"><i class="fa fa-pencil"></i> 새 글 쓰기</a>
          </c:if>	
        	<h4>공지사항</h4>
    	 </div>

	
    	<div class="panel panel-default clearfix fa-">
        	<div class="panel-heading clearfix">

				<div class="avatar clearfix avatar-medium pull-left">
					<a href="b_my?mem_id=${n.mem_id}" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
						<div class="avatar-info"><!-- 작성자 이름, 활동점수, 등록일 -->
							<a class="nickname" href="b_my?mem_id=${n.mem_id}" title="${n.n_name}">${n.n_name}</a>
							<div class="date-created"><span class="timeago" title="${n.n_date}">${n.n_date}</span></div>
						</div>
				</div>

           	    <div class="content-identity pull-right"><!-- 답글, 조회수 -->
           			<div class="content-identity-count"><i class="fa fa-comment"></i> - </div>
             	    <div class="content-identity-count"><i class="fa fa-eye"></i> ${n.n_hit}</div>
           	    </div>
        	</div>
        	<div class="content-container clearfix">
            	<div id="content-body" class="panel-body content-body pull-left">
                	<div class="content-tags">
                    	<span class="list-group-item-text article-id">&num;</span><span class="list-group-item-text article-id" id="n_no">${n.n_no}</span> <!-- 글번호 -->
                    	<!-- 태그 시작-->
						<a href="b_notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-database"></i> ${n.n_cate}</a>
						<c:forTokens var="tag" items="${n.n_tag}" delims=",">
							<a href="b_tag?tag=${tag}" class="list-group-item-text item-tag label label-gray ">${tag}</a>
						</c:forTokens>
						<!-- 태그 끝-->
              	    </div>
                	<h2 class="panel-title"> ${n.n_title}</h2> <!-- 제목 -->
               		<hr>
               		<article class="content-text" itemprop="articleBody"><!-- 글 내용 시작 -->
                    	${n.n_cont}
              		</article><!-- 글 내용 끝 -->

            	</div>

            <div id="content-function" class="content-function pull-right text-center">
                <div class="content-function-group">
					
					<div class="note-evaluate-wrapper">
						<!-- 추천 -->
						<a href="javascript://" role="button" data-type="dissent" data-eval="true" id="recp">
						<i class="fa fa-thumbs-o-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
						</a>
						<!-- 추천수 -->
						<div id="content-vote-count-2440348" class="content-eval-count">${n.n_rec}</div>
						
						<!-- 반대 
						<a href="javascript://" role="button" data-type="dissent" data-eval="true"  id="recm">
						<i class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
						</a> -->
					
					</div>
					
                </div>
                
            </div>
        
            <div class="content-function-cog share-btn-wrapper">
                

            </div>
           
        </div>
    	</div>

		<div class="main-banner-wrapper"><!-- 중간 구글 광고 배너 -->
			<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		    <!-- 728-90_Ressponsive -->
		    
	        <ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" 
	        data-ad-client="ca-pub-8103607814406874" data-ad-slot="8622179990" 
	        data-adsbygoogle-status="done" data-ad-status="filled">	        
	        <ins id="aswift_0_expand" style="display:inline-table;border:none;height:90px;
	        margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent;" 
	        tabindex="0" title="Advertisement" aria-label="Advertisement">
	        <ins id="aswift_0_anchor" style="display:block;border:none;height:90px;
	        margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent;">
	        <iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:728px;height:90px;"
	         sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" 
	         width="728" height="90" frameborder="0" 
	         src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;
	         h=90&amp;slotname=8622179990&amp;adk=3431456933&amp;adf=1152904402&amp;pi=t.ma~as.8622179990&amp;
	         w=728&amp;lmt=1627189752&amp;psa=1&amp;format=728x90&amp;url=https%3A%2F%2Fokky.kr%2Farticle%2F1004902&amp;
	         flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMDciLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;
	         tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;
	         dt=1627189752809&amp;bpp=4&amp;bdt=168&amp;idt=43&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;
	         cookie=ID%3D211a8af1bf1f530b-2234a71a69ca00c2%3AT%3D1626532296%3ART%3D1626532296%3AS%3DALNI_Ma3AoN67nu6cpRvWDd1rPPop8KXEg&amp;
	         correlator=5026386554244&amp;frm=20&amp;pv=2&amp;ga_vid=1490288083.1626532297&amp;ga_sid=1627189753&amp;
	         ga_hid=52732924&amp;ga_fc=0&amp;u_tz=540&amp;u_his=35&amp;u_java=0&amp;u_h=720&amp;u_w=1280&amp;u_ah=720&amp;
	         u_aw=1280&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=279&amp;ady=1919&amp;biw=1023&amp;bih=631&amp;scr_x=0&amp;
	         scr_y=0&amp;eid=42530672%2C20211866%2C21067496&amp;oid=3&amp;pvsid=953390727597564&amp;pem=36&amp;
	         ref=https%3A%2F%2Fokky.kr%2Farticles%2Ftech-qna%3Foffset%3D220%26max%3D20%26sort%3Did%26order%3Ddesc&amp;
	         eae=0&amp;fc=640&amp;brdim=0%2C0%2C0%2C0%2C1280%2C0%2C1280%2C720%2C1039%2C648&amp;vis=1&amp;rsz=%7C%7CeEbr%7C&amp;
	         abl=CS&amp;pfx=0&amp;fu=1024&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;btvi=1&amp;fsb=1&amp;xpc=oRAZYDjA1i&amp;
	         p=https%3A//okky.kr&amp;dtd=81" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true"
	          scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-google-query-id="CPLsxZm6_fECFcRBnQkdqEAFFw" 
	          data-load-complete="true"></iframe></ins></ins></ins>
	         <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
	    </div>
	
		
	</div>
	
	<form action="/article/dissent/1004902" method="post" name="note-dissent-form" id="note-dissent-form">
		<input type="hidden" name="_method" value="PUT" id="_method">
	</form>
	<form action="/article/assent/1004902" method="post" name="note-assent-form" id="note-assent-form">
		<input type="hidden" name="_method" value="PUT" id="_method">
	</form>
	<form action="/article/unvote/1004902" method="post" name="note-unvote-form" id="note-unvote-form">
		<input type="hidden" name="_method" value="PUT" id="_method">
	</form>
	<form action="/article/selectNote/1004902" method="post" name="note-select-form" id="note-select-form">
		<input type="hidden" name="_method" value="PUT" id="_method">
	</form>
	<form action="/article/deselectNote/1004902" method="post" name="note-deselect-form" id="note-deselect-form">
		<input type="hidden" name="_method" value="PUT" id="_method">
	</form>
	<form action="/article/scrap/1004902" method="post" name="article-scrap-form" id="article-scrap-form">
	</form>
	
    <div class="right-banner-wrapper"><!-- 구글 오른쪽 배너 광고 -->
		<div class="google-ad">
	    	<script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	        <!-- okjspad_160x500 -->
	        <ins class="adsbygoogle" style="display:inline-block;width:160px;height:500px" data-ad-client="ca-pub-8103607814406874"
	         data-ad-slot="6573675943" data-adsbygoogle-status="done" data-ad-status="filled">
	        <ins id="aswift_1_expand" style="display:inline-table;border:none;height:500px;margin:0;padding:0;position:relative;
	         visibility:visible;width:160px;background-color:transparent;" tabindex="0" title="Advertisement"
	         aria-label="Advertisement"><ins id="aswift_1_anchor" style="display:block;border:none;height:500px;
	         margin:0;padding:0;position:relative;visibility:visible;width:160px;background-color:transparent;">
	        <iframe id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;border:0;width:160px;height:500px;"
	         sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" 
	         width="160" height="500" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;
	         h=500&amp;slotname=6573675943&amp;adk=4104151020&amp;adf=3198278716&amp;pi=t.ma~as.6573675943&amp;w=160&amp;
	         lmt=1627189753&amp;psa=1&amp;format=160x500&amp;url=https%3A%2F%2Fokky.kr%2Farticle%2F1004902&amp;flash=0&amp;
	         wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMDciLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;
	         tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627189752817&amp;
	         bpp=1&amp;bdt=176&amp;idt=198&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;
	         cookie=ID%3D211a8af1bf1f530b-2234a71a69ca00c2%3AT%3D1626532296%3ART%3D1626532296%3AS%3DALNI_Ma3AoN67nu6cpRvWDd1rPPop8KXEg&amp;
	         prev_fmts=728x90%2C0x0&amp;nras=1&amp;correlator=5026386554244&amp;frm=20&amp;pv=1&amp;ga_vid=1490288083.1626532297&amp;
	         ga_sid=1627189753&amp;ga_hid=52732924&amp;ga_fc=0&amp;u_tz=540&amp;u_his=35&amp;u_java=0&amp;u_h=720&amp;u_w=1280&amp;
	         u_ah=720&amp;u_aw=1280&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1080&amp;ady=65&amp;biw=1023&amp;bih=631&amp;
	         scr_x=0&amp;scr_y=0&amp;eid=42530672%2C20211866%2C21067496&amp;oid=3&amp;pvsid=953390727597564&amp;pem=36&amp;
	         ref=https%3A%2F%2Fokky.kr%2Farticles%2Ftech-qna%3Foffset%3D220%26max%3D20%26sort%3Did%26order%3Ddesc&amp;eae=0&amp;
	         fc=896&amp;brdim=0%2C0%2C0%2C0%2C1280%2C0%2C1280%2C720%2C1039%2C648&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;
	         pfx=0&amp;fu=1024&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;xpc=pjglZN037x&amp;p=https%3A//okky.kr&amp;dtd=200"
	         marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true"
	         data-google-container-id="a!2" data-google-query-id="CIzwzpm6_fECFUOcwgod-EYKcg" data-load-complete="true"></iframe></ins></ins></ins>
	         <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
		</div>
	</div>
                
    	<jsp:include page="../include/footer.jsp"/>
    	
 <script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
 <script>
 	var contextPath = "";
 	var encodedURL = "%2Farticle%2F1004902";
 </script>
        
 <script src="./resources/js/application.js" type="text/javascript"></script>
 <script src="./resources/js/apps/search.js" type="text/javascript"></script>
 <script src="./resources/js/apps/notification.js" type="text/javascript"></script>
 <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
 <script src="./resources/js/libs/prism.js" type="text/javascript"></script>
 <script src="./resources/js/apps/note.js" type="text/javascript"></script>
 <script src="./resources/js/apps/vote.js" type="text/javascript"></script>
 <script src="./resources/js/apps/scrap.js" type="text/javascript"></script>
 <script src="./resources/js/apps/article.js" type="text/javascript"></script>
 <script src="./resources/js/board/reply.js" type="text/javascript"></script>
 
 <script>
//공지사항 좋아요
$('#recp').on("click",function(){

   var n_no=$('#n_no').text();
   var id = '<%=session.getAttribute("id")%>';
   
   if(id=="null"){
      alert("로그인이 필요합니다.");
      location.replace("login");
   }else{
     $.ajax({
        type:'post',
        url:'/controller/notice_rcm/'+n_no,
        headers:{
           "Content-Type" : "application/json",
           "X-HTTP-Method-Override" : "POST"
        },
        dataType:'text',
        success:function(result){//받아오는 것이 성공시 호출됨
           if(result == 'SUCCESS'){
              alert('추천 되었습니다!');
              location.reload();//새로 고침->단축키는 f5               
           }else{
              alert('이미 추천하셨습니다!');
           }
        }
     });
    }
   });	
</script>

 <script>
    (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=1539685662974940&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
 </script>

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

 <ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><ins id="aswift_2_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_2_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe id="aswift_2" name="aswift_2" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1627189752&amp;plat=1%3A16778240%2C2%3A16778240%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1048576%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2Farticle%2F1004902&amp;ea=0&amp;flash=0&amp;pra=7&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMDciLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627189752937&amp;bpp=1&amp;bdt=296&amp;idt=1&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D211a8af1bf1f530b-2234a71a69ca00c2%3AT%3D1626532296%3ART%3D1626532296%3AS%3DALNI_Ma3AoN67nu6cpRvWDd1rPPop8KXEg&amp;prev_fmts=728x90&amp;nras=1&amp;correlator=5026386554244&amp;frm=20&amp;pv=1&amp;ga_vid=1490288083.1626532297&amp;ga_sid=1627189753&amp;ga_hid=52732924&amp;ga_fc=0&amp;u_tz=540&amp;u_his=35&amp;u_java=0&amp;u_h=720&amp;u_w=1280&amp;u_ah=720&amp;u_aw=1280&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1023&amp;bih=631&amp;scr_x=0&amp;scr_y=0&amp;eid=42530672%2C20211866%2C21067496&amp;oid=3&amp;pvsid=953390727597564&amp;pem=36&amp;ref=https%3A%2F%2Fokky.kr%2Farticles%2Ftech-qna%3Foffset%3D220%26max%3D20%26sort%3Did%26order%3Ddesc&amp;eae=2&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1280%2C0%2C1280%2C720%2C1039%2C648&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=33792&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;fsb=1&amp;dtd=11" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!3" data-load-complete="true"></iframe></ins></ins></ins><iframe id="google_osd_static_frame_1477252979274" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;"></iframe><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe>
</body>
 <iframe id="google_esf" name="google_esf" src="https://googleads.g.doubleclick.net/pagead/html/r20210720/r20190131/zrt_lookup.html" style="display: none;"></iframe>
</html>
