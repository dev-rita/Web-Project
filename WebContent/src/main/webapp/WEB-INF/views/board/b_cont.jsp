<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - ${b.b_title}</title>

<jsp:include page="../include/header.jsp"/>

	<div id="article" class="content" role="main">
		 <div class="main-banner-wrapper">
         	<div class="main-banner">
            	<a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg"></a>
            </div>
         </div>
	

   		 <div class="nav" role="navigation">
   		  <c:if test="${!empty m}">
   		  <a class="create btn btn-info btn-wide pull-right" style="margin-left:5px;"onclick="location='b_cont?b_no=${b.b_no}&page=${page}&state=reply';"><i class="fa fa-pencil"></i> 답변 글 쓰기</a>
       	    <a class="create btn btn-success btn-wide pull-right" onclick="location='b_create?page=${page}';"><i class="fa fa-pencil"></i> 새 글 쓰기</a>
          </c:if>	
        	<h4>${b.b_cate == '커뮤니티' ? '커뮤니티' : 'Q&amp;A'}</h4>
    	 </div>

	
    	<div class="panel panel-default clearfix fa-">
        	<div class="panel-heading clearfix">

				<div class="avatar clearfix avatar-medium pull-left">
					<a href="/user/info/124433" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
						<div class="avatar-info"><!-- 작성자 이름, 활동점수, 등록일 -->
							<a class="nickname" href="/user/info/124433" title="${b.b_name}">${b.b_name}</a>
							<div class="activity"><span class="fa fa-flash"></span> 12</div>
							<div class="date-created"><span class="timeago" title="${b.b_date}">${b.b_date}</span></div>
						</div>
				</div>

           	    <div class="content-identity pull-right"><!-- 답글, 조회수 -->
           			<div class="content-identity-count"><i class="fa fa-comment"></i> ${b.b_replycnt}</div>
             	    <div class="content-identity-count"><i class="fa fa-eye"></i> ${b.b_hit}</div>
           	    </div>
        	</div>
        	<div class="content-container clearfix">
            	<div id="content-body" class="panel-body content-body pull-left">
                	<div class="content-tags">
                    	<span class="list-group-item-text article-id">&num;</span><span class="list-group-item-text article-id" id="b_no">${b.b_no}</span> <!-- 글번호 -->
                    	<!-- 태그 시작-->
						<a href="${b.b_cate == '커뮤니티' ? 'b_community' : 'b_questions'}" class="list-group-item-text item-tag label label-info"><i class="fa fa-database"></i> ${b.b_cate}</a>
						<c:forTokens var="tag" items="${b.b_tag}" delims=",">
							<a href="b_tag?tag=${tag}" class="list-group-item-text item-tag label label-gray ">${tag}</a>
						</c:forTokens>
						<!-- 태그 끝-->
              	    </div>
                	<h2 class="panel-title"> ${b.b_title}</h2> <!-- 제목 -->
               		<hr>
               		<article class="content-text" itemprop="articleBody"><!-- 글 내용 시작 -->
                    	${b.b_cont}
              		</article><!-- 글 내용 끝 -->

            	</div>

            <div id="content-function" class="content-function pull-right text-center">
                <div class="content-function-group">
					
					<div class="note-evaluate-wrapper">
						<!-- 추천 -->
						<a href="javascript://" role="button" data-type="dissent" data-eval="true" id="rec">
						<i class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
						</a>
						<!-- 추천수 -->
						<div id="content-vote-count-2440348" class="content-eval-count">${b.b_rec}</div>
						
						<!-- 반대 -->
						<a href="b_recommend?b_no=${b.b_no}&page=${page}&state=recm" role="button" data-type="dissent" data-eval="true" data-id="2440348">
						<i class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
						</a>
					
					</div>
					
                </div>
                <div class="content-function-group article-scrap-wrapper"><!-- 스크랩 -->
                    <a href="javascript://" id="article-scrap-btn" data-type="scrap"><i class="fa fa-bookmark " data-toggle="tooltip" data-placement="left" title="" data-original-title="스크랩"></i></a>
                    <div id="article-scrap-count" class="content-count">0</div>
                </div>
            </div>
        
            <div class="content-function-cog share-btn-wrapper">
                <div class="dropdown"><!-- 페이스북 공유 -->
                    <a href="http://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fokky.kr%2Farticle%2F1007659" class="btn-facebook-share"><i class="fa fa-facebook-square fa-fw" data-toggle="tooltip" data-placement="left" title="" data-original-title="페이스북 공유"></i></a>
                </div>

                <div class="dropdown">
                	<form action="b_del_ok?b_no=${b.b_no}&page=${page}" method="post" name="article-delete-form" id="article-delete-form">
							<input type="hidden" name="_csrf" value="f95d23e8-1c25-47c1-bc9d-1cf6568f3229">
               			<input type="hidden" name="_method" value="DELETE" id="_method">
                        <c:if test="${m.mem_id.equals(b.mem_id)}">
                        <div class="dropdown">
                            <a href="javascript://" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog" data-toggle="tooltip" data-placement="left" title="" data-original-title="게시물 설정"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="b_cont?b_no=${b.b_no}&page=${page}&state=edit" class=edit><i class="fa fa-edit fa-fw"></i> 수정 </a></li>
                                    <li><a href="javascript://" id="article-delete-btn"><i class="fa fa-trash-o fa-fw"></i> 삭제 </a></li>   
                            </ul>
                        </div>
                        </c:if>
                    </form>
                </div>
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
	
		<div class="panel panel-default clearfix"> <!-- 답변 그룹 -->
       
        <!-- List group -->
          <ul class="list-group">
            <%-- <li id="note-title" class="list-group-item note-title">
                <h3 class="panel-title">답변 <span id="note-count">4</span></h3>
            </li>
            
            <li class="list-group-item note-item clearfix" id="note-2440396"><!-- 답변 1 시작 -->
            	<form action="/content/update/2440396" method="post" data-id="2440396" class="note-update-form">
            		<input type="hidden" name="_method" value="PUT" id="_method">
                    <div class="content-body panel-body pull-left">
                        <div class="note-select-indicator note-deselected">
                        	<i class="fa fa-comment"></i>
                        </div>

						<div class="avatar clearfix avatar-medium "><!-- 답변작성자 정보 -->
							<a href="/user/info/97440" class="avatar-photo"><img src="//www.gravatar.com/avatar/11cea1d9b7f8916b454e3325e9ac3ad9?d=identicon&amp;s=40"></a>
								<div class="avatar-info">
									<a class="nickname" href="/user/info/97440" title="유니파">유니파</a>
									<div class="activity"><span class="fa fa-flash"></span> 352</div>
									<div class="date-created"><span class="timeago" title="2021-07-21T16:10:39">2021-07-21 16:10:39</span></div>
								</div>
						</div>
                        <fieldset class="form"><!-- 답변내용, pre태그로 인해 수정 불가 -->
                        	<article id="note-text-2440396" class="list-group-item-text note-text">
				                    	<p><br></p><pre class="  language-java"><code class=" language-java"><span class="token keyword">do</span><span class="token punctuation">{</span>
</code>&nbsp;&nbsp;<code class=" language-java"><span class="token keyword">int</span> arr <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token keyword">int</span><span class="token punctuation">)</span>Math<span class="token punctuation">.</span><span class="token function">floor<span class="token punctuation">(</span></span>math<span class="token punctuation">.</span><span class="token function">random<span class="token punctuation">(</span></span><span class="token punctuation">)</span><span class="token number">*45</span><span class="token punctuation">)</span>
<span class="token punctuation">}</span>

<span class="token keyword">while</span><span class="token punctuation">(</span>Lotto<span class="token punctuation">[</span>index<span class="token punctuation">]</span> <span class="token operator">==</span> Num<span class="token punctuation">[</span>arr<span class="token punctuation">]</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

Lotto<span class="token punctuation">[</span>X<span class="token punctuation">]</span> <span class="token operator">=</span> Num<span class="token punctuation">[</span>arr<span class="token punctuation">]</span></code></pre>
										<p>이 부분이 반복 되고 있으니 X를 변수로 해서 함수로 따로 빼면 코드양을 확줄일수 있겠네요~</p>
                            </article>
                        </fieldset>
                    </div>

                    <div class="content-function pull-right text-center"><!-- 추천/반대 -->
                    	<div class="content-function-group">
							<div class="note-evaluate-wrapper">
								<a href="javascript://" class="note-vote-btn" role="button" data-type="assent" data-eval="true" data-id="2440396">
									<i id="note-evaluate-assent-2440396" class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
								</a>
								<div id="content-vote-count-2440396" class="content-eval-count">1</div>
								<a href="javascript://" class="note-vote-btn" role="button" data-type="dissent" data-eval="true" data-id="2440396">
									<i id="note-evaluate-dissent-2440396" class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
								</a>
							</div>
                    	</div>
                    </div>
                </form>
                
                
				<form action="/content/delete/2440396" method="post" id="note-delete-form-2440396">
					<input type="hidden" name="_csrf" value="5483808e-cec5-4b25-978e-5953710310a7">
					<input type="hidden" name="_method" value="DELETE" id="_method">
                </form>
            </li><!-- 답변 1 끝 -->
            
            <li class="list-group-item note-item clearfix" id="note-2440404"><!-- 답변 2 시작 -->
            	<form action="/content/update/2440404" method="post" data-id="2440404" class="note-update-form">
            		<input type="hidden" name="_method" value="PUT" id="_method">
                    <div class="content-body panel-body pull-left">
                    	<div class="note-select-indicator note-selected"><!-- 답변 선택(체크)됨 -->
                    	<i class="fa fa-check"></i>
                        </div>

						<div class="avatar clearfix avatar-medium "><!-- 답변작성자 정보 -->
						<a href="/user/info/97440" class="avatar-photo"><img src="//www.gravatar.com/avatar/11cea1d9b7f8916b454e3325e9ac3ad9?d=identicon&amp;s=40"></a>
							<div class="avatar-info">
								<a class="nickname" href="/user/info/97440" title="유니파">유니파</a>
								<div class="activity"><span class="fa fa-flash"></span> 352</div>
								<div class="date-created"><span class="timeago" title="2021-07-21T16:16:33">2021-07-21 16:16:33</span> 작성
									<span class="date-saperate">∙</span> <a href="/changes/2440404"><span class="timeago" title="2021-07-21 16:19:36">2021-07-21 16:19:36</span> 수정됨 </a>
								</div>
							</div>
						</div>
                        <fieldset class="form"><!-- 답변내용 -->
                        	<article id="note-text-2440404" class="list-group-item-text note-text">
				                    	<p>그리고 while문에서 하나씩 조건이 추가되면서 판단하면... </p>
				                    	<p>내부적으로 만족하는 값이 나올때까지 계속 반복문을 돌겠죠?</p>
				                    	<p>저가 만약 짠다면 반복문 하나로 로또숫자 배열에 값을 1부터45까지 세팅해주고~&nbsp;</p>
				                    	<p>함수 돌때마다 배열 길이범위의 Random 값 구해서..&nbsp;</p>
				                    	<p>해당 값의 index자리 값을 배열에서 빼주는 식으로 하면 중복검사 반복문도 필요없을듯하네용</p>
				                    	<p><br></p>
                            </article>
                        </fieldset>
                    </div>

                    <div class="content-function pull-right text-center"> <!-- 추천/반대 -->
                    	<div class="content-function-group">	
							<div class="note-evaluate-wrapper">
								<a href="javascript://" class="note-vote-btn" role="button" data-type="assent" data-eval="true" data-id="2440404">
									<i id="note-evaluate-assent-2440404" class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
								</a>
			
								<div id="content-vote-count-2440404" class="content-eval-count">1</div>
			
								<a href="javascript://" class="note-vote-btn" role="button" data-type="dissent" data-eval="true" data-id="2440404">
									<i id="note-evaluate-dissent-2440404" class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
								</a>
							</div>
                    	</div>
                    </div>
                </form>
				<form action="/content/delete/2440404" method="post" id="note-delete-form-2440404">
					<input type="hidden" name="_csrf" value="5483808e-cec5-4b25-978e-5953710310a7">
					<input type="hidden" name="_method" value="DELETE" id="_method">
                </form>
                </li><!-- 댓글 2 끝 -->            
                
            	            	
            	<li class="list-group-item note-item clearfix" id="note-2442806"><!-- 댓글 3 시작 -->
            		<form action="/content/update/2442806" method="post" data-id="2442806" class="note-update-form">
            			<input type="hidden" name="_method" value="PUT" id="_method">
                        <div class="content-body panel-body pull-left">
                        	<div class="note-select-indicator note-deselected">
                        		<i class="fa fa-comment"></i>
                            </div>

							<div class="avatar clearfix avatar-medium "><!-- 답변작성자 정보 -->
								<a href="/user/info/93886" class="avatar-photo"><img src="//www.gravatar.com/avatar/eace89152359d1deec1a569de702c35d?d=identicon&amp;s=40"></a>
								<div class="avatar-info">
									<a class="nickname" href="/user/info/93886" title="퀘이사123">퀘이사123</a>
									<div class="activity"><span class="fa fa-flash"></span> 647</div>
									<div class="date-created"><span class="timeago" title="2021-07-23T09:30:02">2021-07-23 09:30:02</span></div>
								</div>
							</div>
                            <fieldset class="form"><!-- 답변내용 -->
                                <article id="note-text-2442806" class="list-group-item-text note-text">
				                	<p>Math.floor는 버리는 함수이기 때문에 저렇게 하면 0~44까지 나옵니다</p>
				                	<p>floor가 아니라 ceil을 쓰셔야 되구요.</p>
				                	<p>보통은 Math.random*45+1로 들 많이하죠.</p>
				                	<p><br></p><p>순수 배열로는 짜본적이 없지만 제가 그냥 짜본거 올려드릴게요. 참고해보세요.</p>
				                	<pre style="background-color:#2b2b2b;color:#a9b7c6;font-family:'jetbrains mono' , monospace;font-size:9.8pt"><span style="color:#cc7832">int </span>Lotto[] = <span style="color:#cc7832">new int</span>[<span style="color:#6897bb">6</span>]<span style="color:#cc7832">;<br></span><span style="color:#cc7832">int </span>value<span style="color:#cc7832">;<br></span><span style="color:#cc7832">int </span>index = <span style="color:#6897bb">0</span><span style="color:#cc7832">;<br></span><span style="color:#cc7832">while </span>(index&lt;<span style="color:#6897bb">6</span>){<!-- --><br>    value = (<span style="color:#cc7832">int</span>) (Math.<span style="font-style:italic">random</span>()*<span style="color:#6897bb">45</span>+<span style="color:#6897bb">1</span>)<span style="color:#cc7832">;<br></span><span style="color:#cc7832">    for </span>(<span style="color:#cc7832">int </span>i = <span style="color:#6897bb">0</span><span style="color:#cc7832">; </span>i&lt;index+<span style="color:#6897bb">1</span><span style="color:#cc7832">; </span>i++){<!-- --><br>        <span style="color:#cc7832">if</span>(Lotto[i] == value){<!-- --><br>            <span style="color:#cc7832">break;<br></span><span style="color:#cc7832">        </span>}<br>        <span style="color:#cc7832">if </span>(i==index){<!-- --><br>            Lotto[i] = value<span style="color:#cc7832">;<br></span><span style="color:#cc7832">            </span>index++<span style="color:#cc7832">;<br></span><span style="color:#cc7832">            break;<br></span><span style="color:#cc7832">        </span>}<br>    }<br>} 여기에 정렬까지 추가하면 완벽할꺼같습니다. 정렬하면 해보세요.</pre>
                                </article>
                            </fieldset>
                        </div>

                        <div class="content-function pull-right text-center"><!-- 추천/반대 -->
                            <div class="content-function-group">	
								<div class="note-evaluate-wrapper">
									<a href="javascript://" class="note-vote-btn" role="button" data-type="assent" data-eval="true" data-id="2442806">
										<i id="note-evaluate-assent-2442806" class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
									</a>
			
									<div id="content-vote-count-2442806" class="content-eval-count">1</div>
			
									<a href="javascript://" class="note-vote-btn" role="button" data-type="dissent" data-eval="true" data-id="2442806">
										<i id="note-evaluate-dissent-2442806" class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
									</a>
								</div>
                            </div>
                        </div>
                    </form>
					<form action="/content/delete/2442806" method="post" id="note-delete-form-2442806">
						<input type="hidden" name="_csrf" value="5483808e-cec5-4b25-978e-5953710310a7">
						<input type="hidden" name="_method" value="DELETE" id="_method">
                    </form>
                </li><!-- 답변3 끝 -->
                
            	<li class="list-group-item note-item clearfix" id="note-2443418"><!-- 답변4 시작 -->
            		<form action="/content/update/2443418" method="post" data-id="2443418" class="note-update-form">
            			<input type="hidden" name="_method" value="PUT" id="_method">
                        <div class="content-body panel-body pull-left">
                        	<div class="note-select-indicator note-deselected">
                            <i class="fa fa-comment"></i>
                            </div>

							<div class="avatar clearfix avatar-medium "><!-- 답변작성자 정보 -->
								<a href="/user/info/124433" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
								<div class="avatar-info">
									<a class="nickname" href="/user/info/124433" title="쿠루루루루">쿠루루루루</a>
									<div class="activity"><span class="fa fa-flash"></span> 12</div>
									<div class="date-created"><span class="timeago" title="2021-07-23T14:40:53">2021-07-23 14:40:53</span></div>
								</div>
							</div>
                            <fieldset class="form"><!-- 답변 내용 -->
                                <article id="note-text-2443418" class="list-group-item-text note-text">
				                    <p>감사합니다. 한번 도전해 보겠습니다.</p>
                                </article>
                            </fieldset>
                        </div>

                        <div class="content-function pull-right text-center"><!-- 추천/반대 -->
                            <div class="content-function-group">
								<div class="note-evaluate-wrapper">
									<a href="javascript://" class="note-vote-btn" role="button" data-type="assent" data-eval="true" data-id="2443418">
										<i id="note-evaluate-assent-2443418" class="fa fa-angle-up note-evaluate-assent-assent" data-placement="left" data-toggle="tooltip" title="" data-original-title="추천"></i>
									</a>
			
									<div id="content-vote-count-2443418" class="content-eval-count">0</div>
			
									<a href="javascript://" class="note-vote-btn" role="button" data-type="dissent" data-eval="true" data-id="2443418">
										<i id="note-evaluate-dissent-2443418" class="fa fa-angle-down note-evaluate-dissent-dissent" data-placement="left" data-toggle="tooltip" title="" data-original-title="반대"></i>
									</a>
								</div>
                            </div>
                        </div>
                    </form>
                    
					<form action="/content/delete/2443418" method="post" id="note-delete-form-2443418">
						<input type="hidden" name="_csrf" value="5483808e-cec5-4b25-978e-5953710310a7">
						<input type="hidden" name="_method" value="DELETE" id="_method">
                    </form>
                </li><!-- 답변4 끝 -->
               --%>
            	
            	<li id="note-title" class="list-group-item note-title">
            	<h3 class="panel-title">답변 <span id="note-count">${b.b_replycnt}</span></h3>
            	</li>
            	<!-- 답변 목록 시작-->
            	<li id="replies" style="list-style-type: none;"><div id="replies"></div></li>
            	
            	               <!-- 답변 등록 시작-->
            	 <c:if test="${empty m}">
                 <li class="list-group-item note-form clearfix">
                    <div class="panel-body">
                       <h5 class="text-center" style="background-color:#FFEB3B;padding:0.5em;font-weight: bold;"><a href="login" class="link">로그인</a>을 하시면 댓글을 등록할 수 있습니다.</h5>
                    </div>

               	</li>
               </c:if>
                             
            	 <c:if test="${!empty m}">
                 <li class="list-group-item note-form clearfix">
                     
                        <input type="hidden" name="_csrf" value="2a6e37c5-aeda-4ae0-9dab-2a7651232fc1">
                           <input type="hidden" name="lastNoteId" value="2502162 " id="lastNoteId">   
                           <div class="content-body panel-body pull-left">
                                  <div style="margin-left: 5px;">
                                     <div class="avatar clearfix avatar-medium ">
                                 <a href="/user/info/123566" class="avatar-photo">
                                    <img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
                                 <div class="avatar-info">
                                    <a class="nickname" href="/user/info/123566" title="${b.b_name}" id="nickname">${b.b_name}</a>
                                   <input type="hidden" name="replyer" id="replyWriter" value="{b.b_name}"/>                                  
                                    <div class="activity block"><span class="fa fa-flash"></span> 0</div>
                                 </div>
                              </div>
                                  </div>
                                  <fieldset class="form">
                                      <input type="hidden" name="textType" value="HTML" id="note.textType">
                                      <textarea name="note.text" id="note-create" name="replytext" placeholder="댓글 쓰기" class="form-control" style="display: block;"></textarea>
                                  </fieldset>
                              </div>
                              <div class="content-function-cog note-submit-buttons clearfix">
                               <p><a href="javascript://" id="note-create-cancel-btn" class="btn btn-default btn-wide" style="display: none;">취소</a></p>
                               <input type="submit" name="create" id="btn-create-btn" class="btn btn-success btn-wide" value="등록" disabled="">
                              </div>
                       
               </li>
               </c:if>
               
            <!-- 답변 등록 끝 -->
            
            	
            	<%-- 이메일 등록해야 답변 가능
           		<li class="list-group-item note-form clearfix">
                	<div class="panel-body">
                    	<div style="margin-left: 5px;">
                        	<div class="note-select-indicator note-deselected">
                            	<i class="fa fa-edit"></i>
                            </div>

							<div class="avatar clearfix avatar-medium ">
								<a href="/user/info/124651" class="avatar-photo"><img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&amp;s=40"></a>
								<div class="avatar-info">
									<a class="nickname" href="/user/info/124651" title="rita_dev">rita_dev</a>
									<div class="activity block"><span class="fa fa-flash"></span> 0</div>
								</div>
							</div>
                        </div>
	                    <h5 class="text-center" style="background-color:#FFEB3B;padding:0.5em;font-weight: bold;">
	                   		<a href="/user/edit" class="link">이메일 인증</a>을 완료하여야 답변을 등록할 수 있습니다.
	                    </h5>
	                 </div>
           		 </li> --%> 
         </ul>
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
 	//게시글 추천
	$('#rec').on("click",function(){

		var b_no=$('#b_no').text();

        $.ajax({
           type:'post',
           url:'/controller/recommend/'+b_no,
           headers:{
              "Content-Type" : "application/json",
              "X-HTTP-Method-Override" : "POST"
           },
           dataType:'text',
           success:function(result){//받아오는 것이 성공시 호출됨
              if(result == 'SUCCESS'){
                 alert('추천 되었습니다!');
                 location.reload();//새로 고침->단축키는 f5               
              }
           }
        });
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
<script>
getAllList();//댓글목록함수
function getAllList(){
	var b_no=$('#b_no').text();//게시판 번호, 자바스크립트에서 jsp 문법인 jstl or el을 사용 가능하다. var b_no=${b.b_no}; js파일에서 에러
	$.getJSON("/controller/all/"+b_no,function(data){
		//비동기식으로 받아오는 것이 성공시 받아온 데이터는 data매개변수에 저장
		var str="";
		$(data).each(function(){//each()함수로 반복
			str+= "<li class='list-group-item note-item clearfix' id='r_no"+this.r_no+"'>"
			+"<div class='content-body panel-body pull-left'>"
		    +"<div class='note-select-indicator note-deselected'>"
		    +"<i class='fa fa-comment'></i></div>"
		    +"<div class='avatar clearfix avatar-medium '>"
		    +"<a href='/user/info/97440' class='avatar-photo'>"
		    +"<img src='//www.gravatar.com/avatar/11cea1d9b7f8916b454e3325e9ac3ad9?d=identicon&amp;s=40'></a>"
		    +"<div class='avatar-info'>"
		    +"<a class='nickname' href='/user/info/97440' title='"+this.replyer+"'>"+this.replyer+"</a>"
		    +"<div class='activity'><span class='fa fa-flash'></span> 352</div>"+"<div class='replyLi' data-r_no='"+this.r_no+"' style='display:none;'>"+this.r_no+"</div>"
		    +"<div class='date-created'><span class='timeago' title='"+this.regdate+"'>"+this.regdate+"</span></div></div>"
		    +"</div><fieldset class='form'><article id='note-text-"+this.r_no+"' class='list-group-item-text note-text'>"
			+this.replytext+"</article></fieldset></div>"
			+"<div class='content-function pull-right text-center'><div class='content-function-group'><div class='note-evaluate-wrapper'>"
			+"<a href='javascript://' class='note-vote-btn' role='button' data-type='assent' data-eval='true' data-id='"+this.r_no+"'>"
			+"<i id='note-evaluate-assent-"+this.r_no+"' class='fa fa-angle-up note-evaluate-assent-assent' data-placement='left' data-toggle='tooltip' title='' data-original-title='추천'></i></a>"					
			
			+"<div id='content-vote-count-"+this.r_no+"' class='content-eval-count'>"+this.r_hit+"</div>"
			+"<a href='javascript://' class='note-vote-btn' role='button' data-type='dissent' data-eval='true' data-id='"+this.r_no+"'>"
			+"<i id='note-evaluate-dissent-"+this.r_no+"' class='fa fa-angle-down note-evaluate-dissent-dissent' data-placement='left' data-toggle='tooltip' title='' data-original-title='반대'></i>"
			+"</a>"
			
			+"<c:if test='${!empty m}'>"
			+"<div class='dropdown'><a href='javascript://' data-toggle='dropdown' aria-expanded='false'><i class='fa fa-cog' data-toggle='tooltip' data-placement='left' title='' data-original-title='게시물 설정'></i></a>"
			+"<ul class='dropdown-menu' role='menu'>"
            +"<li><a href='javascript://' class='note-edit-btn' onclick='replyupdateview("+this.r_no+")'><i class='fa fa-edit fa-fw'></i> 수정 </a></li>"
            +"<li><a href='javascript://' class='note-delete-btn' onclick='replydelete("+this.r_no+")' ><i class='fa fa-trash-o fa-fw'></i> 삭제 </a></li>   </ul></div>"
			+"</c:if>"
			
			+"</div></div></div></li>"
			
		});
		$('#replies').html(str);//해당영역에 태그와 문자를 함께 변경 적용
	});//댓글목록
}//getAllList()
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
