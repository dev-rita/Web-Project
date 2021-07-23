<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>YWHY - Better Developer</title>
<link rel="shortcut icon" href="../img/logo/favicon.ico" type="image/x-icon"><%-- 화면 위 사이트이름 부분에 아이콘 삽입 --%>
<link href="../css/index.css" rel="stylesheet">
<meta name="description" content="계속 발전하는, 지금보다 더 나은 개발자"><%-- 구글에 검색하면 사이트 밑에 설명부분 --%>

</head>
<body>
	<div class="layout">
		<div class="layout_index">
			<div class="index_sidebar">
				<div class="sidebar_logo">
					<a href="manager_index.jsp">
						<img src="../img/logo.png" style="width:60px; height:60px;">
						<span>로고텍스트 (WHY)</span>
						<%-- 텍스트 생각 (찾아보기) --%>
					</a>
				</div>
				<div class="sidebar_search">
					<form class="search_form" action="https://www.google.com/search?q=<%=request.getParameter("q")%>" target="_blank">
					
						<input type="text" name="q" class="search_google" placeholder="Google Search">
						<span class="search_btn">
							<button class="search_btn_btn" type="submit">
								<i class="fas fa-search"></i>
							</button>
						</span>
						
					</form>
				</div>
				<div class="sidebar_info">내 정보</div>
				<ul class="sidebar_menu">
					<li class="menu_in">
						<a class="menu_in_a" href="#">
							<i class="fas fa-laptop menu_icon"></i>
							<span>Q&A</span>
						</a>
					</li>
					<li class="menu_in">
						<a class="menu_in_a" href="#">
							<i class="fas fa-coins menu_icon"></i>
							<span>Community</span>
						</a>
					</li>
					<li class="menu_in">
						<a class="menu_in_a" href="#">
							<i class="fas fa-user menu_icon"></i>
							<span>Manager</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="index_top_banner_wrapper"></div><!--광고-->
			<div id="index" class="content scaffold-list clearfix" role="main">
  <div class="col-sm-6 main-block-left">
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-flag"></i> Editor's Choice</h4>
<div class="panel panel-default">
    <ul class="list-group">
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1005955">[OKKY Jobs] 2차, 3차 업데이트 안내</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/45597" title="OKKY">OKKY</a>
					<div class="activity"><span class="fa fa-flash"></span> 2k</div>
					<div class="date-created"><span class="timeago" title="2021-07-22 15:19:04">1일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1002041">신입개발자, 당신이 회사에서 고통받는 이유</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/114326" class="avatar-photo"><img src="//www.gravatar.com/avatar/dbe801506bda475154d7b73ec7e3a6e8?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/114326" title="kane0721">kane0721</a>
					<div class="activity"><span class="fa fa-flash"></span> 472</div>
					<div class="date-created"><span class="timeago" title="2021-07-17 20:09:42">6일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/890592">신입 개발자를 위한 간단한 포트폴리오 작성 팁</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/5322" class="avatar-photo"><img src="//www.gravatar.com/avatar/307d31079ac2364a12f843e2634b23ef?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/5322" title="fender">fender</a>
					<div class="activity"><span class="fa fa-flash"></span> 22k</div>
					<div class="date-created"><span class="timeago" title="2021-03-18 12:00:37">4달 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/863051">국비출신 첫 출근하고왔습니다 ㅎㅎ</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/109035" class="avatar-photo"><img src="//file.okky.kr/profile/2021/1614597352600.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/109035" title="Ormus">Ormus</a>
					<div class="activity"><span class="fa fa-flash"></span> 1k</div>
					<div class="date-created"><span class="timeago" title="2021-02-01 19:58:06">6달 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/861866">2년차 개발자가 이직을 하면서 배우고 느낀점</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/74578" class="avatar-photo"><img src="//www.gravatar.com/avatar/9c98c9bdd79e83d114b61d4a85d089a7?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/74578" title="salsal">salsal</a>
					<div class="activity"><span class="fa fa-flash"></span> 829</div>
					<div class="date-created"><span class="timeago" title="2021-01-30 01:52:15">6달 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
    </ul>
</div>
      </div>
  </div>
  <div class="col-sm-6 main-block-right">
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-star"></i> Weekly Best</h4>
<div class="panel panel-default">
    <ul class="list-group">
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1002318">6년차 개발자의 후기 ( SI, 솔루션, 스타트업후기 )</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/86071" class="avatar-photo"><img src="//www.gravatar.com/avatar/a9c072e32cc89d6584f2cbeac20f3d5d?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/86071" title="팩트폭행범">팩트폭행범</a>
					<div class="activity"><span class="fa fa-flash"></span> 2k</div>
					<div class="date-created"><span class="timeago" title="2021-07-19 00:13:31">5일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1002278">여기 늙은 신입개발자 없나요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124251" class="avatar-photo"><img src="//www.gravatar.com/avatar/14b038b1e95e06bccecfd44b88243df0?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124251" title="cat coffee">cat coffee</a>
					<div class="activity"><span class="fa fa-flash"></span> 50</div>
					<div class="date-created"><span class="timeago" title="2021-07-18 22:45:15">5일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1005807">꼰대가 말하는 노력이 구체적으로 뭔지 궁금합니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/121890" class="avatar-photo"><img src="//www.gravatar.com/avatar/8fcbe67e59411b29834ca0a9323cfe9f?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/121890" title="인셍힘들다">인셍힘들다</a>
					<div class="activity"><span class="fa fa-flash"></span> 85</div>
					<div class="date-created"><span class="timeago" title="2021-07-22 13:21:36">1일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1002553">iOS 개발 공부를 시작하고 첫 앱으로 고양이 클리커 게임을 출시하게 되었습니다!</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/87322" class="avatar-photo"><img src="//www.gravatar.com/avatar/0e9f64f708948dc86926a5485b076d9d?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/87322" title="Profit!">Profit!</a>
					<div class="activity"><span class="fa fa-flash"></span> 119</div>
					<div class="date-created"><span class="timeago" title="2021-07-19 11:05:36">4일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1003542">초등학교 6학년 개발자입니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/58880" class="avatar-photo"><img src="//www.gravatar.com/avatar/87cad5979bc24102602856fac64df0fa?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/58880" title="Oscar">Oscar</a>
					<div class="activity"><span class="fa fa-flash"></span> 510</div>
					<div class="date-created"><span class="timeago" title="2021-07-20 11:05:52">3일 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
    </ul>
</div>
      </div>
  </div>

  <div class="col-sm-8 main-block-left">
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-database"></i> Q&amp;A <a href="/articles/questions" class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a></h4>
<div class="panel panel-default">
    <ul class="list-group">
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006996">SSR 방식일 때 스프링부트 Rest 컨트롤러 메서드는 뭘 반환해야 하나요..?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/115591" class="avatar-photo"><img src="https://lh3.googleusercontent.com/-qeDGJn3N4a0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnwQSTjc48vSc9PK_IkQTYJi3EnkQ/s96-c/photo.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/115591" title="bootchobo">bootchobo</a>
					<div class="activity"><span class="fa fa-flash"></span> 139</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 16:06:00">14분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006993">스프링 연습하는데요,, 캐시에 대해서 잘 모르겠어요 ㅠ</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/115801" class="avatar-photo"><img src="//www.gravatar.com/avatar/3e00cf67f8c736da9abab96dab3658e9?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/115801" title="디디딩">디디딩</a>
					<div class="activity"><span class="fa fa-flash"></span> 40</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 16:05:17">14분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006984">자바스크립트 $(document).on(evt) 질문</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/104333" class="avatar-photo"><img src="//www.gravatar.com/avatar/26649c16811b218683de95b8d361e3f2?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/104333" title="블루벨스">블루벨스</a>
					<div class="activity"><span class="fa fa-flash"></span> 220</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:58:57">21분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006981">파이썬 서버 안드로이드 클라이언트 질문드립니다!</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/83754" class="avatar-photo"><img src="//www.gravatar.com/avatar/55cd89baf458a4b432e1c50403c332d4?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/83754" title="o3om3m">o3om3m</a>
					<div class="activity"><span class="fa fa-flash"></span> 440</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:53:47">26분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006974">about:flags (개발자 설정) 진입 방법 (크롬,엣지)</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/44493" class="avatar-photo"><img src="//www.gravatar.com/avatar/3d5ad69b5c7743a73cf554754c3c3198?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/44493" title="느린손">느린손</a>
					<div class="activity"><span class="fa fa-flash"></span> 170</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:49:52">30분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006960">mongodb 메모리 낮추는 법</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/96908" class="avatar-photo"><img src="//www.gravatar.com/avatar/1933fd98bf18e34fc0aba120fb324fb7?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/96908" title="징징이희수">징징이희수</a>
					<div class="activity"><span class="fa fa-flash"></span> 392</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:37:12">43분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006958">sts , jdk 설정 관련 질문입니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/76265" class="avatar-photo"><img src="//graph.facebook.com/2492571587436393/picture?width=10&amp;height=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/76265" title="함마">함마</a>
					<div class="activity"><span class="fa fa-flash"></span> 351</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:36:42">43분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-success clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006930">if( ==null)로 잡으려고 할 때 NPE 발생</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/94334" class="avatar-photo"><img src="//www.gravatar.com/avatar/c91996397b960fc3f7bf4d0a18b231b1?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/94334" title="뚝섬">뚝섬</a>
					<div class="activity"><span class="fa fa-flash"></span> 354</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:06:15">1시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006912">오라클 파라미터에 상수값 파라미터로 햇을때 속도 가 많이 차이 납니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/7920" class="avatar-photo"><img src="//www.gravatar.com/avatar/90db983c91190440ac5713177eb2f4da?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/7920" title="crnmst">crnmst</a>
					<div class="activity"><span class="fa fa-flash"></span> 3k</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 14:50:49">1시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006874">javascript 에서 video 제어할 때, currentTime이 정상동작하지 않습니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/30692" class="avatar-photo"><img src="//www.gravatar.com/avatar/70bb3b51f88771f86834c9340fc55cbb?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/30692" title="pousees">pousees</a>
					<div class="activity"><span class="fa fa-flash"></span> 369</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 14:32:49">2시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
    </ul>
</div>
      </div>
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-comment"></i> 커뮤니티 <a href="/articles/community" class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a></h4>
<div class="panel panel-default">
    <ul class="list-group">
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006999">개발자 분들 3대 몇이세요</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124180" class="avatar-photo"><img src="//www.gravatar.com/avatar/8777e85e6b66ed136948a9ea5dca8861?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124180" title="깡수수">깡수수</a>
					<div class="activity"><span class="fa fa-flash"></span> 85</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 16:10:55">9분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006989">작년 CTO 모집 글 이후 근황</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/110293" class="avatar-photo"><img src="//graph.facebook.com/3791031460930180/picture?width=10&amp;height=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/110293" title="모니">모니</a>
					<div class="activity"><span class="fa fa-flash"></span> 30</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 16:02:31">17분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006988">개발용 노트북.. 갤럭시북 어떤가요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/40120" class="avatar-photo"><img src="//www.gravatar.com/avatar/238339bde18570623af5320b49343960?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/40120" title="비비빜">비비빜</a>
					<div class="activity"><span class="fa fa-flash"></span> 285</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 16:01:17">18분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006983">패캠 프론트엔드 강의 결제직전인데 커리큘럼한번 봐주실 수 있을까요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/123138" class="avatar-photo"><img src="//www.gravatar.com/avatar/bf0ad55210eb6fa26acf22efed23696e?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123138" title="하늘나는고래">하늘나는고래</a>
					<div class="activity"><span class="fa fa-flash"></span> 20</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:57:27">22분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006971">보충역 산업요원을 뽑는회사 질문 있습니다</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124426" class="avatar-photo"><img src="//www.gravatar.com/avatar/19b27a95021c828bbb1d0090b6d615d4?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124426" title="테스터21">테스터21</a>
					<div class="activity"><span class="fa fa-flash"></span> 39</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 15:49:07">31분 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006787">알레르기가 진짜 무서운거네요 ㅠㅠ</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/121629" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/121629" title="마하카스">마하카스</a>
					<div class="activity"><span class="fa fa-flash"></span> 535</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 13:56:42">2시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006778">웹 개발 노트북으로 그램 괜찮나요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/123037" class="avatar-photo"><img src="//file.okky.kr/profile/2021/1624848027683.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123037" title="꾸믈">꾸믈</a>
					<div class="activity"><span class="fa fa-flash"></span> 14</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 13:37:43">3시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006765">선배개발자님들은 몇년정도 되서야</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/121354" class="avatar-photo"><img src="https://phinf.pstatic.net/contact/20201130_246/1606735265929CENvk_JPEG/%B0%EE%BC%D2%B8%AE%BA%B8%BC%D2.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/121354" title="먹고살자">먹고살자</a>
					<div class="activity"><span class="fa fa-flash"></span> 662</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 13:20:13">3시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006760">UX UI 디자이너인데 코딩 배워보려고 합니다</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124559" class="avatar-photo"><img src="//www.gravatar.com/avatar/e08f6a841ec7a4e18fa92652871c7ab8?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124559" title="산토끼s">산토끼s</a>
					<div class="activity"><span class="fa fa-flash"></span> 10</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 13:16:17">3시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006751">오늘의 삽질(feat. 정렬)</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/24311" class="avatar-photo"><img src="//www.gravatar.com/avatar/e4534ca46b31f6127c44d440173569ad?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/24311" title="74794C6565">74794C6565</a>
					<div class="activity"><span class="fa fa-flash"></span> 8k</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 13:14:28">3시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006719">젊은 프리랜서 개발자들은 별로 없는 추세인가요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/60731" class="avatar-photo"><img src="//www.gravatar.com/avatar/b8018dce7290fe877ce493320b4d8d7b?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/60731" title="뀨뀨:D">뀨뀨:D</a>
					<div class="activity"><span class="fa fa-flash"></span> 90</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 12:30:43">4시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006716">국비교육 마친 시점에서 취업 고민좀 들어주세요.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/122954" class="avatar-photo"><img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/122954" title="코딩처음하는사람">코딩처음하는사람</a>
					<div class="activity"><span class="fa fa-flash"></span> 10</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 12:28:43">4시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006672">국비 커리큘럼은 많이 상관없을까요?(feat.쌍용)</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124550" class="avatar-photo"><img src="//www.gravatar.com/avatar/b4a806089e4a9960a0f6809f2988570a?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124550" title="starBfly">starBfly</a>
					<div class="activity"><span class="fa fa-flash"></span> 10</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:39:11">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006652">스타트업과 대기업 비전차이 많이나나요?</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124228" class="avatar-photo"><img src="//www.gravatar.com/avatar/43b532efdd367e659c6109c6d85ef8f6?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124228" title="디귿43">디귿43</a>
					<div class="activity"><span class="fa fa-flash"></span> 18</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:30:17">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006651">프리처음인데 위임계약서 쓰는가요?ㅜㅜ</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/24907" class="avatar-photo"><img src="//www.gravatar.com/avatar/915673c092c5b590e833f193170b2a8c?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/24907" title="토리토토">토리토토</a>
					<div class="activity"><span class="fa fa-flash"></span> 29</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:29:35">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006618">트위터 API를 이용한 토이프로젝트를 만들어 보았습니다</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/91000" class="avatar-photo"><img src="//www.gravatar.com/avatar/910fa041becf6d19e5d561e1ffcf5bc7?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/91000" title="sleepyjun">sleepyjun</a>
					<div class="activity"><span class="fa fa-flash"></span> 84</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:09:07">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006616">중소 / 벤처기업은 원래 프론트/백 구분이 없나여</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124180" class="avatar-photo"><img src="//www.gravatar.com/avatar/8777e85e6b66ed136948a9ea5dca8861?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124180" title="깡수수">깡수수</a>
					<div class="activity"><span class="fa fa-flash"></span> 85</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:05:18">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006614">데이콘 자연어처리 대회 팀원 모집</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/100785" class="avatar-photo"><img src="//www.gravatar.com/avatar/88249241854554bcc12c76249d4ad8f3?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/100785" title="봇버">봇버</a>
					<div class="activity"><span class="fa fa-flash"></span> 38</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 10:59:24">5시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006599">일은 그렇게 힘든것이 아니다. 그런데... 말이 문제.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/122236" class="avatar-photo"><img src="https://phinf.pstatic.net/contact/20210601_186/1622512039205qnJL4_JPEG/blog_pic.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/122236" title="최현일">최현일</a>
					<div class="activity"><span class="fa fa-flash"></span> 160</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 10:43:48">6시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006589">[서울/Spring/신입] 취업용 프로젝트 같이하실 분 모집합니다.</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/123642" class="avatar-photo"><img src="https://phinf.pstatic.net/contact/20181010_199/1539138981031OohPm_JPEG/maxresdefault.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123642" title="당근로케트">당근로케트</a>
					<div class="activity"><span class="fa fa-flash"></span> 10</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 10:35:55">6시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
    </ul>
</div>
      </div>
  </div>
  <div class="col-sm-4 main-block-right">


	       		<div class="main-block">
                <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- okkyad_250x250 -->
                <ins class="adsbygoogle" style="display:inline-block;width:250px;height:250px" data-ad-client="ca-pub-8103607814406874" data-ad-slot="4095178752" data-adsbygoogle-status="done" data-ad-status="filled"><ins id="aswift_0_expand" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 250px; width: 250px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-table;"><ins id="aswift_0_anchor" style="border: none; height: 250px; width: 250px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: block;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:250px;height:250px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="250" height="250" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;h=250&amp;slotname=4095178752&amp;adk=3988854209&amp;adf=1900951953&amp;pi=t.ma~as.4095178752&amp;w=250&amp;lmt=1627024366&amp;psa=1&amp;format=250x250&amp;url=https%3A%2F%2Fokky.kr%2F&amp;flash=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi4xNjQiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1627024366182&amp;bpp=5&amp;bdt=461&amp;idt=121&amp;shv=r20210720&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc065772af97af219-2235fec14fc90065%3AT%3D1623304828%3ART%3D1623304828%3AS%3DALNI_MbD2wvdOePYY-_jnLm2XGMihyO95g&amp;correlator=5876541701541&amp;frm=20&amp;pv=2&amp;ga_vid=231577856.1623304828&amp;ga_sid=1627024366&amp;ga_hid=1911388673&amp;ga_fc=1&amp;u_tz=540&amp;u_his=3&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=792&amp;ady=426&amp;biw=1311&amp;bih=937&amp;scr_x=0&amp;scr_y=0&amp;eid=42530672%2C44743418%2C31060957%2C20211866%2C44740386%2C21067496&amp;oid=3&amp;pvsid=1438535636454526&amp;pem=707&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1328%2C937&amp;vis=1&amp;rsz=%7C%7CeE%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;xpc=gbbWzYSGvS&amp;p=https%3A//okky.kr&amp;dtd=137" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-google-query-id="CO6IkYvS-PECFY1BwgUdaZ0Jrg" data-load-complete="true"></iframe></ins></ins></ins>
                <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
                </div>
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-code"></i> Tech <a href="/articles/tech" class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a></h4>
              <div class="panel panel-default">
                  <div class="panel-body">
                  	  <div class="article-middle-block clearfix">
                          <div class="list-tag clearfix" style="">
	<a href="/articles/tips" class="list-group-item-text item-tag label label-info"><i class="fa fa-code"></i> Tips &amp; 강좌</a>

		
			<a href="/articles/tagged/%EA%B3%B5%EC%9E%A5%EC%9E%90%EB%8F%99%ED%99%94" class="list-group-item-text item-tag label label-gray ">공장자동화</a>
			<a href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%EA%B3%B5%EC%9E%A5" class="list-group-item-text item-tag label label-gray ">스마트공장</a>
			<a href="/articles/tagged/%EC%84%BC%EC%84%9C%EB%8D%B0%EC%9D%B4%ED%84%B0" class="list-group-item-text item-tag label label-gray ">센서데이터</a>
			<a href="/articles/tagged/%EB%A7%88%ED%81%AC%EB%B2%A0%EC%9D%B4%EC%8A%A4" class="list-group-item-text item-tag label label-gray ">마크베이스</a>
			<a href="/articles/tagged/%EC%9D%B4%EC%83%81%ED%83%90%EC%A7%80" class="list-group-item-text item-tag label label-gray ">이상탐지</a>
			<a href="/articles/tagged/%EC%8B%9C%EA%B3%84%EC%97%B4db" class="list-group-item-text item-tag label label-gray ">시계열db</a>
			<a href="/articles/tagged/mes" class="list-group-item-text item-tag label label-gray ">mes</a>
			<a href="/articles/tagged/%EC%98%88%EC%A7%80%EB%B3%B4%EC%A0%84" class="list-group-item-text item-tag label label-gray ">예지보전</a>
			<a href="/articles/tagged/%EC%83%9D%EC%82%B0%EA%B4%80%EB%A6%AC%EC%8B%9C%EC%8A%A4%ED%85%9C" class="list-group-item-text item-tag label label-gray ">생산관리시스템</a>
                          </div>
                          <h5>
                          	<a href="/article/1006631">Raspberry pi 4를 이용해서 온습도 감시 시스템을 구축해 보자</a>
                          </h5>
                          <div class="list-group-item-author clearfix">

	
	

<div class="avatar clearfix avatar-x-small pull-right">
		<a href="/user/info/122667" class="avatar-photo"><img src="//www.gravatar.com/avatar/594aed2d64326e4e1efd611614d3cab9?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/122667" title="friendsmachbase">friendsmachbase</a>
					<div class="activity"><span class="fa fa-flash"></span> 60</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 11:17:45">5시간 전</span></div>
		</div>
</div>
                          </div>
                      </div>
                  	  <div class="article-middle-block clearfix">
                          <div class="list-tag clearfix" style="">
	<a href="/articles/tips" class="list-group-item-text item-tag label label-info"><i class="fa fa-code"></i> Tips &amp; 강좌</a>

		
			<a href="/articles/tagged/parent" class="list-group-item-text item-tag label label-gray ">parent</a>
			<a href="/articles/tagged/%EC%A0%9C%EC%9D%B4%EC%BF%BC%EB%A6%AC" class="list-group-item-text item-tag label label-gray ">제이쿼리</a>
			<a href="/articles/tagged/children" class="list-group-item-text item-tag label label-gray ">children</a>
			<a href="/articles/tagged/traversing" class="list-group-item-text item-tag label label-gray ">traversing</a>
			<a href="/articles/tagged/jquery" class="list-group-item-text item-tag label label-gray ">jquery</a>
			<a href="/articles/tagged/eq" class="list-group-item-text item-tag label label-gray ">eq</a>
                          </div>
                          <h5>
                          	<a href="/article/1005953">JQuery, Traversing. 제이쿼리... 위치찾기. eq, parent.</a>
                          </h5>
                          <div class="list-group-item-author clearfix">

	
	

<div class="avatar clearfix avatar-x-small pull-right">
		<a href="/user/info/122236" class="avatar-photo"><img src="https://phinf.pstatic.net/contact/20210601_186/1622512039205qnJL4_JPEG/blog_pic.jpg"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/122236" title="최현일">최현일</a>
					<div class="activity"><span class="fa fa-flash"></span> 160</div>
					<div class="date-created"><span class="timeago" title="2021-07-22 15:17:50">1일 전</span></div>
		</div>
</div>
                          </div>
                      </div>
                  	  <div class="article-middle-block clearfix">
                          <div class="list-tag clearfix" style="">
	<a href="/articles/tips" class="list-group-item-text item-tag label label-info"><i class="fa fa-code"></i> Tips &amp; 강좌</a>

		
			<a href="/articles/tagged/machbase" class="list-group-item-text item-tag label label-gray ">machbase</a>
			<a href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%EA%B3%B5%EC%9E%A5" class="list-group-item-text item-tag label label-gray ">스마트공장</a>
			<a href="/articles/tagged/anomalydetection" class="list-group-item-text item-tag label label-gray ">anomalydetection</a>
			<a href="/articles/tagged/%EB%A7%88%ED%81%AC%EB%B2%A0%EC%9D%B4%EC%8A%A4" class="list-group-item-text item-tag label label-gray ">마크베이스</a>
			<a href="/articles/tagged/%EC%9D%B4%EC%83%81%ED%83%90%EC%A7%80" class="list-group-item-text item-tag label label-gray ">이상탐지</a>
			<a href="/articles/tagged/ai" class="list-group-item-text item-tag label label-gray ">ai</a>
			<a href="/articles/tagged/%EC%98%88%EC%A7%80%EB%B3%B4%EC%A0%84" class="list-group-item-text item-tag label label-gray ">예지보전</a>
			<a href="/articles/tagged/%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5" class="list-group-item-text item-tag label label-gray ">인공지능</a>
			<a href="/articles/tagged/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8C%A9%ED%86%A0%EB%A6%AC" class="list-group-item-text item-tag label label-gray ">스마트팩토리</a>
                          </div>
                          <h5>
                          	<a href="/article/1003746">DAD(Deep Anomaly Detection, 이상 탐지)란?</a>
                          </h5>
                          <div class="list-group-item-author clearfix">

	
	

<div class="avatar clearfix avatar-x-small pull-right">
		<a href="/user/info/122667" class="avatar-photo"><img src="//www.gravatar.com/avatar/594aed2d64326e4e1efd611614d3cab9?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/122667" title="friendsmachbase">friendsmachbase</a>
					<div class="activity"><span class="fa fa-flash"></span> 60</div>
					<div class="date-created"><span class="timeago" title="2021-07-20 13:52:50">3일 전</span></div>
		</div>
</div>
                          </div>
                      </div>
                  </div>
              </div>
      </div>

      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-quote-left"></i> 칼럼 <a href="/articles/columns" class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a></h4>
              <div class="panel panel-default">
                  <div class="panel-body">

		
			<a href="/articles/tagged/%ED%81%B4%EB%A6%B0%EC%BD%94%EB%93%9C" class="list-group-item-text item-tag label label-gray ">클린코드</a>
			<a href="/articles/tagged/%EC%95%A0%EC%9E%90%EC%9D%BC" class="list-group-item-text item-tag label label-gray ">애자일</a>
                      <h5><a href="/article/991371">번역) 애자일의 몰락과 소프트웨어 장인정신의 비극</a></h5>
                      <p class="main-block-desc">&nbsp;<a href="/article/991371">  안녕하세요.    다시 클린 코드의 저자로 유명한 엉클 밥, 로버트 C. 마틴의 블로그 글 번역으로 돌아왔습니다.         이번 글은 상당히 격한 어조의 독백 형식 글인데...</a></p>
                  </div>
              </div>
      </div>
      <div class="main-block">
          <h4 class="main-header"><i class="fa fa-book"></i> 학원/홍보 <a href="/articles/promote" class="main-more-btn pull-right"><i class="fa fa-ellipsis-h"></i></a></h4>
<div class="panel panel-default">
    <ul class="list-group">
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006893">[7년차 베테랑선생님] 배방 초등 영어과외 용화동 권곡동 중학생 고등 수학과외 국어과외</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/124566" class="avatar-photo"><img src="//www.gravatar.com/avatar/df474c52a66d6b82bb5ce5502bf59563?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/124566" title="779774">779774</a>
					<div class="activity"><span class="fa fa-flash"></span> 20</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 14:43:06">2시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006857">{5년인증 최우수기관} JAVA 웹개발자 전문가 양성과정(8/30)</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/83183" class="avatar-photo"><img src="//www.gravatar.com/avatar/825dab4c9f406eeedca6021312ef964b?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/83183" title="중앙일보HTA">중앙일보HTA</a>
					<div class="activity"><span class="fa fa-flash"></span> 7k</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 14:27:33">2시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
            <li class="list-group-item list-group-item-small list-group-item-question list-group-no-note clearfix">
                <div class="list-title-wrapper">
                    <h5 class="list-group-item-heading">
                        <a href="/article/1006860">﻿백현동 중학생 영어과외 고등 초등 수학과외 개인 국어 과학 수업</a>
                        <div class="list-group-item-author pull-right clearfix">

	
	

<div class="avatar clearfix avatar-x-small ">
		<a href="/user/info/123175" class="avatar-photo"><img src="//www.gravatar.com/avatar/770c0bd96228963d216cea85dd49984e?d=identicon&amp;s=10"></a>
		<div class="avatar-info">
				<a class="nickname" href="/user/info/123175" title="랄리랄라">랄리랄라</a>
					<div class="activity"><span class="fa fa-flash"></span> 410</div>
					<div class="date-created"><span class="timeago" title="2021-07-23 14:28:51">2시간 전</span></div>
		</div>
</div>
                        </div>
                    </h5>
                </div>
            </li>
    </ul>
</div>
        </div>
    </div>
</div>
			<div class="index_right_banner_wrapper"></div><!--광고-->
			<footer class="index_footer">
				<div class="footer_box">
					<div class="footer_logo">
						<img src="../img/logo_gray.png" style="width:55px; height:55px;">
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
						<a href="#">About YWHY</a> | <a href="#">개인 정보 보호</a>
						<a href="https://github.com/dev-rita/Web-Project.git" target=_blank; class="content_github"><i class="fab fa-github fa-3x"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<%-- fontawsome이란 웹 아이콘 폰트를 모아놓은 라이브러리 사용 --%>
</body>
</html>