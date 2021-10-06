<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>YWHY - About us</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="dd8c1368-62db-4f14-bb93-9c6f60e926d9">
<link rel="shortcut icon" href="./resources/images/logo/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="./resources/images/logo/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114" href="./resources/images/logo/apple-icon-144x144.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta property="og:image" content="https://okky.kr/assets/images/okky_logo_fb.png">
<link rel="stylesheet" href="./resources/css/application2.css">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-M52CW55"></script>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-M52CW55');
</script>
<!--[if lt IE 9]>
			<script src="/js/libs/html5.js"></script>
		<![endif]-->
<style type="text/css"></style>
<jsp:include page="../include/header.jsp"/>

			<div id="about" class="content clearfix" role="main">
				<div class="about-wrapper about-history">
					<h3 class="content-header">History</h3>
					<c:if test="${!empty hlist}">
					<c:forEach var="h" items="${hlist}">
					<div class="about-hlist clearfix">
						<div class="about-hlist-head">
							<div class="about-hlist-head-y">${fn:substring(h.h_date,0,7)}</div>
						</div>
						<div class="about-hlist-body">
							<p>&nbsp;&nbsp;&nbsp;${h.h_cont}</p>							
						</div>
					</div>
					</c:forEach>
					</c:if>					
					<c:if test="${empty hlist}">
					<div class="about-hlist clearfix">
						
						<div class="about-hlist-body">
						<p>역사가 시작되지 않았습니다.</p>
						</div>
					</div>
					</c:if>
				</div>
			</div>
			<div class="right-banner-wrapper"></div>
			
			<jsp:include page="../include/footer.jsp"/>
	<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
	<%-- fontawsome이란 웹 아이콘 폰트를 모아놓은 라이브러리 사용 --%>
	<script>
            var contextPath = "";
            var encodedURL = "%2Fintro%2Fabout";
        </script>

	<script src="./resources/js/application.js" type="text/javascript"></script>
	<script src="./resources/js/apps/search.js" type="text/javascript"></script>
	<script src="./resources/js/apps/notification.js" type="text/javascript"></script>

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
</body>
</html>