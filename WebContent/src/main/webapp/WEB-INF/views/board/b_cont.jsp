<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ko" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ko" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ko" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ko" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<html lang="ko" class="no-js">
<!--<![endif]-->
<head>

    <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
	<title>YWHY - JAVA 입문 초보질문이요</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="_csrf_parameter" content="_csrf">
	<meta name="_csrf_header" content="X-CSRF-TOKEN">
	<meta name="_csrf" content="5483808e-cec5-4b25-978e-5953710310a7">
	<link rel="shortcut icon" href="./resources/images/logo/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="/assets/images/icon_57x57.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/images/icon_114x114.png">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
	<link rel="stylesheet" href="./resources/css/application2.css">
	<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=3311e52b353d8131dec5a2c9f3e6759f" async="" crossorigin="anonymous"></script>
	<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js#xfbml=1&amp;appId=1539685662974940&amp;version=v2.0"></script>
	<script src="https://www.googletagservices.com/activeview/js/current/osd.js"></script>
	<script src="https://partner.googleadservices.com/gampad/cookie.js?domain=okky.kr&amp;callback=_gfp_s_&amp;client=ca-pub-8103607814406874&amp;cookie=ID%3D211a8af1bf1f530b-2234a71a69ca00c2%3AT%3D1626532296%3ART%3D1626532296%3AS%3DALNI_Ma3AoN67nu6cpRvWDd1rPPop8KXEg"></script>
	<script src="https://pagead2.googlesyndication.com/pagead/js/r20210720/r20190131/show_ads_impl_fy2019.js" id="google_shimpl"></script>
	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M52CW55');</script>
		<!--[if lt IE 9]>
			<script src="/js/libs/html5.js"></script>
			<script src="/assets/libs/respond.src.js"></script>
			<script src="/assets/libs/html5.js"></script>
		<![endif]-->
	<meta property="og:type" content="article">
	<meta property="og:site_name" content="OKKY">
	<meta property="og:url" content="https://okky.kr/article/1004902">
	<meta property="og:description" content=" 제가 요즘 JAVA를 배우고 있는데.. 주변에서 로또 소스 한번 만들어보라고 숙제 아닌 숙제를 주셨는데요.  제가 지금까지 배운것들을 이용해서 최선을 다해 만들었는데 곰곰히 보니깐 중복되는 소스들이 많더라고요.  그래서 반복문을 이용해서 더 간결하고 이쁘게 만들고 싶은데 지금에 제 수준으론 한계가 있어 조언을 구하고자 Q A적어 봅니다.  {    		 ">
	<meta property="og:title" content="OKKY | JAVA 입문 초보질문이요">
	<meta property="dable:item_id" content="1004902">
	<meta property="dable:author" content="쿠루루루루">
	<meta property="article:section" content="tech-qna">
	<meta property="article:published_time" content="2021-07-21T15:54:17Z">
		
	<meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
	<meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
	<meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<link rel="preload" href="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr" as="script">
	<script type="text/javascript" src="https://adservice.google.co.kr/adsid/integrator.js?domain=okky.kr"></script>
	<link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=okky.kr" as="script">
	<script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=okky.kr"></script>
	<meta http-equiv="origin-trial" content="A88otRz1Fd3Nt567e2IYshC18LL3KGVXpVJW9oTCId4RYaygt23pbb4JqrbdIO/bwZPWEmRjBIRBu/bZbDR7Pg4AAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
	<meta http-equiv="origin-trial" content="A0gCLbXCcL0R1Oc8tFPDs0G4Elz17w3zHp+Zst66+D17veE2o7fUcPsA114QtSTRqfVJLMeTSdeWOom0CcyCsgYAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A9RQ+LxFazAousxUwSCzaihJjHLO1UyjQp0teZKHl7WdbVjPDfHSKMd6D/ZI5MTjqClFycbl70EFd7cBJWXqKQEAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A6WKeWsdn1Ct+ZPqS9NCxxaiBoQ7wdTkK2/gE69Yu0gfBKJfo1gOvgkGmf5/xaIajT/RUb9AbnF1FsSZ47cCcQcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MzQwODMxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="A04ZCu7yjrHgwQJK5ISHhH1DSg0qqowEay3n70KO6wV3D2Mj+OX3Kw20aSMitzgdG1xfrN7sOJV/dZIk+RvCzA4AAAB2eyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IlRydXN0VG9rZW5zIiwiZXhwaXJ5IjoxNjM0MDgzMTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
	<meta http-equiv="origin-trial" content="A2YAd4xOntTGygIDjApOTtXOgVI3IWsd5OnOGq3RbRkIQwyqYWNl1JGRAcvtm6VOHDj4n07T/J19VqLuJn3MmQ8AAACWeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="A2c5Ux+hivdkLh/KbZUGr6f7SCR0mZrBVfPJ+/OuDVHNwiYv+Lo83b9z5qL8sod78bQl0pSLtbvRWURo+xRl7AIAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="AzNJ4sd3tVurolpdvWYZ4cmP9Po7RJhEHSqmC3pgxW9fFVZvchhtcMUgHAs97npxMD1jhXHO8s6q6Wy1MMLxKgEAAACceyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjMxNjYzOTk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlLCJ1c2FnZSI6InN1YnNldCJ9">
	<meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
	<style type="text/css"></style>
	<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
	.fb_hidden{position:absolute;top:-10000px;z-index:10001}
	.fb_reposition{overflow:hidden;position:relative}
	.fb_invisible{display:none}
	.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;
			  font-family:"lucida grande", tahoma, verdana, arial, sans-serif;
		   	  font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;
			  letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;
			  text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;
			  visibility:visible;white-space:normal;word-spacing:normal}
	.fb_reset>div{overflow:hidden}
	@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}
	.fb_animate{animation:fb_transform .3s forwards}
	.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}
	.fb_dialog_advanced{border-radius:8px;padding:10px}
	.fb_dialog_content{background:#fff;color:#373737}
	.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
						  cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}
	.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}
	.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}
	.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}
	.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}
	.fb_dialog_iframe{line-height:0}
	.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}
	.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
										  float:left;padding:5px 0 7px 26px}
	body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}
	.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
										min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}
	.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}
	.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}
	.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}
	.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}
	#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;
									 position:absolute;right:0;top:0;width:100%;z-index:10000}
	#fb-root #fb_dialog_ipad_overlay.hidden{display:none}
	.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}
	.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}
	.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));
									  border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;
									  font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;
									  vertical-align:middle;white-space:nowrap}
	.fb_dialog_content .dialog_header table{height:43px;width:100%}
	.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}
	.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}
	.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;
										 border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;
										 margin-top:3px;max-width:85px;padding:4px 12px;position:relative}
	.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;
																margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}
	.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}
	.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
										border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}
	.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}
	#fb_dialog_loader_close{float:left}
	.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}
	#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;
							  background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;
							  background-repeat:no-repeat;height:24px;width:24px}
	@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
	.fb_iframe_widget{display:inline-block;position:relative}
	.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}
	.fb_iframe_widget iframe{position:absolute}
	.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}
	.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}
	.fb_iframe_widget_lift{z-index:1}
	.fb_iframe_widget_fluid{display:inline}
	.fb_iframe_widget_fluid span{width:100%}
	.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}
	.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;
													animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}
	.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}
	.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}
	.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}
	.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}
	.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}
	.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}
	.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}
	.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}
	.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}
	.fb_new_ui_mobile_overlay_active{overflow:hidden}
	@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}
	@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}
	@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}
	@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}
	@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}
	@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}
	@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}
	@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}
	@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}
	@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}
	@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}
	@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}
	@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}
	@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}
	@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
	@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
	</style>
</head>
<body>
 <div class="layout-container">
   <div class="main ">

	<div id="article" class="content" role="main">

			<div class="sidebar"><!-- 메뉴시작 -->
           	 <a href="javascript://" class="sidebar-header"><%-- 반응형 창 좁아질 때 좌측 상단 메뉴 (누르면 펴지고 좁혀지고 함) --%>
               <i class="fas fa-bars fa-lg" style="color:#773209"></i>
             </a>

            <h1>
               <div class="logo">
                  <a href="../ywhy_loginbefore_index.jsp"><b>YWHY</b></a>
               </div>
            </h1>

			<%--
            <ul id="search-google-icon" class="nav nav-sidebar nav-sidebar-search-wrapper">
               <li class="nav-sidebar-search"><a href="javascript://"
                  class="link" id="search-google" data-toggle="popover"
                  data-trigger="click" data-original-title="" title=""><i
                     class="fa fa-search"></i></a></li>
            </ul>
 			--%>

            <form id="search-google-form" name="searchMain" class="nav-sidebar-form" action="https://www.google.com/search?q=<%=request.getParameter("q")%>" target="_blank">
            <%-- 내가 만들었던 창은 검색이 되는데 여기는 안된다..왜지 css에서 -webkit뭐시기 삭제했더니 검색이 됐다..?!--%>
               <div class="input-group">
                  <input type="text" name="q" class="form-control input-sm" placeholder="Google 검색"> 
                  <span class="input-group-btn">
                     <button class="btn btn-default btn-sm" type="submit">
                        <i class="fas fa-search"></i>
                     </button>
                  </span>
               </div>
            </form>

            <div class="nav-user nav-sidebar">
               <ul class="nav nav-sidebar">
                  <li>
                     <a href="../signup/login.jsp" class="link">
                        <i class="fas fa-sign-in-alt"></i>
                        <span class="nav-sidebar-label">로그인</span>
                     </a>
                  </li>
                  <li>
                     <a href="../signup/signup.jsp" class="link">
                        <i class="fas fa-users"></i>
                        <span class="nav-sidebar-label">회원가입</span>
                     </a>
                  </li>
               </ul>
            </div>

            <ul class="nav nav-sidebar nav-main">
               <li>
                  <a href="questions.jsp" class="link">
                     <i class="nav-icon fas fa-laptop"></i>
                     <span class="nav-sidebar-label">Q&amp;A</span>
                  </a>
               </li>
               <li>
                  <a href="community.jsp" class="link">
                     <i class="nav-icon fas fa-coins"></i>
                     <span class="nav-sidebar-label">커뮤니티</span>
                  </a>
               </li>
            </ul>
         </div><!-- 메뉴끝 -->

		 <div class="main-banner-wrapper">
         	<div class="main-banner">
            	<a href="/banner/stats/387" target="_j"><img src="//file.okky.kr/banner/1626398549990.jpg"></a>
            </div>
         </div>
	

   		 <div class="nav" role="navigation">
       	    <a class="create btn btn-success btn-wide pull-right" onclick="location='b_create?page=${page}';"><i class="fa fa-pencil"></i> 새 글 쓰기</a>
        	<h4>Tech Q&amp;A</h4>
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
						<a href="/articles/tech-qna" class="list-group-item-text item-tag label label-info"><i class="fa fa-database"></i> Tech Q&amp;A</a>
						<a href="/articles/tagged/java" class="list-group-item-text item-tag label label-gray ">java</a>
						<a href="/articles/tagged/%EC%B6%94%EA%B0%80%EC%A7%88%EB%AC%B8" class="list-group-item-text item-tag label label-gray ">추가질문</a>
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
						<a href="b_recommend?b_no=${b.b_no}&page=${page}&state=recp" role="button" data-type="dissent" data-eval="true">
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
                        <div class="dropdown">
                            <a href="javascript://" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog" data-toggle="tooltip" data-placement="left" title="" data-original-title="게시물 설정"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="b_cont?b_no=${b.b_no}&page=${page}&state=edit" class=edit><i class="fa fa-edit fa-fw"></i> 수정 </a></li>
                                    <li><a href="javascript://" id="article-delete-btn"><i class="fa fa-trash-o fa-fw"></i> 삭제 </a></li>   
                            </ul>
                        </div>
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
 <script src="./resources/js/reply.js" type="text/javascript"></script>

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
