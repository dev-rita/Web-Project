<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지 - ${b.n_title}</title>
   <link href="img/logo_manager.png" rel="icon"><!-- title 옆에 아이콘 -->
   
    <!-- Custom fonts for this template -->
    <link href="./resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resources/admin/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page 
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">-->
    
    <!-- 추가한 스타일 -->
   <style>
      #modDiv{
         width:800px; background-color:lightgray;
         position:absolute; top:20%; left:50%;
         margin-top:-50px; margin-left:-150px;
         padding:10px; border-radius:10px;
         z-index:1000;
      }
      .modYes{
         margin-top: 10px;   
         float:right;   
      }
      .modNo{
         margin-top: 10px;
         margin-left: 5px;
      }
      
      #search-field:focus{
         color:#6e707e;
         backgound-color:#fff;
         border-color:#bac8f3;
         outline:0;
         box-shadow: 0 0 0 0.2rem rgb(78 115 223 / 25%)
      }
      
      #search-field{
         width:300px;
         padding:.375rem .75rem;
         color:#6e707e;
         border:1px solid #d1d3e2;
         border-radius:.35rem;
      }
      
      #search-span{
         float:right;
         margin-top:-10px;
         margin-bottom:7px;
      }
      
      .pagination {
         float:right;
          display: inline-block;
          padding-left: 0;
          margin-top: 20px;
          border-radius: 4px;
      }
      .pagination > li {
          display: inline;
      }
      .pagination > li > a,
      .pagination > li > span {
          position: relative;
          float: left;
          padding: 6px 12px;
          margin-left: -1px;
          line-height: 1.42857143;
          color: #337ab7;
          text-decoration: none;
          background-color: #fff;
          border: 1px solid #ddd;
      }
      .pagination > li:first-child > a,
      .pagination > li:first-child > span {
          margin-left: 0;
          border-top-left-radius: 4px;
          border-bottom-left-radius: 4px;
      }
      .pagination > li:last-child > a,
      .pagination > li:last-child > span {
          border-top-right-radius: 4px;
          border-bottom-right-radius: 4px;
      }
      .pagination > li > a:hover,
      .pagination > li > span:hover,
      .pagination > li > a:focus,
      .pagination > li > span:focus {
          color: #23527c;
          background-color: #eee;
          border-color: #ddd;
      }
      .pagination > .active > a,
      .pagination > .active > span,
      .pagination > .active > a:hover,
      .pagination > .active > span:hover,
      .pagination > .active > a:focus,
      .pagination > .active > span:focus {
          z-index: 2;
          color: #fff;
          cursor: default;
          background-color: #4e73ef;
          border-color: #4e73ef;
      }
      .pagination > .disabled > span,
      .pagination > .disabled > span:hover,
      .pagination > .disabled > span:focus,
      .pagination > .disabled > a,
      .pagination > .disabled > a:hover,
      .pagination > .disabled > a:focus {
          color: #777;
          cursor: not-allowed;
          background-color: #fff;
          border-color: #ddd;
      }
      
      #show{
         float:left;
         margin-top:20px;
         line-height: 1.42857143;
         
      }
      
      .avatar,.panel-title,.content-tags{
      	padding: 0.2em 0.6em 0.3em;
      	margin-bottom:15px;
      	border:1px solid #d1d3e2;
      	border-radius: .35rem;
      	background-color:#fff;
      }
      
      .content-text{
      	padding: 0.6em;
      	border:1px solid #d1d3e2;
      	border-radius: .35rem;
      	background-color:#fff;
      	min-height: 500px;
      	margin-bottom:15px;
      }
      
      .tag{
      	padding: 0.2em 0.6em 0.3em;
      	color:#fff;
      	border:1px solid #fff;
      	border-radius: .35rem;
      	font-size:75%;
      }
      
      .tag-info{
      	background-color: #5bc0de;
      	margin-left: 2px;
      }
      
      .tag-gray{
      	background-color: #B2B2B2;
      }
      
      .listbtn {
      	float : right;
      	margin: 10px;
      }
   </style>
   <!-- 추가한 스타일 -->
   <script src="./resources/js/jquery.js"></script>
   
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

         <!-- Sidebar -->
        <jsp:include page="a_sidebar.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

                

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800" >${b.n_cate}</h1>
                    
                    <!-- DataTales Example -->
                    <div id="article-create" class="content" role="main">
            <div class="content-header">
            </div>
            <div class="panel panel-default clearfix">
               <div class="panel-heading clearfix">
                  <div class="avatar">
                     <a href="/user/info/124651" class='avatar-photo'>
                        <img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40" /></a>
                    
                        <a class="nickname" href="/user/info/124651" title="${b.n_name}" id="nickname">${b.n_name}</a>
                        
                           <span class="fa fa-flash"></span> 0
                       <div><span title="${b.n_date}">${b.n_date}</span></div>
                    
                  </div>
               </div>
               <div class="panel-body">
                  
              
                        <div class="form-group has-feedback">
                          <div class="content-tags">
	                    	<span class="list-group-item-text article-id">&num;</span><span class="list-group-item-text article-id" id="n_no">${b.n_no}</span> <!-- 글번호 -->
	                    	<!-- 태그 시작-->
							<a href="b_notice" class="tag tag-info"><i class="fa fa-database"></i> ${b.n_cate}</a>
							<c:forTokens var="tag" items="${b.n_tag}" delims=",">
								<a href="b_tag?tag=${tag}" class="tag tag-gray ">${tag}</a>
							</c:forTokens>
							<!-- 태그 끝-->
              	   		 </div>
                        </div>
                        <div class="form-group has-feedback">
                           
                        </div>
                        <div class="form-group has-feedback">
                           <div>
                             <article class="content-text">
                               <h2>${b.n_title}</h2>
                             <hr/>
                             	${b.n_cont}
                             </article>
                        </div>
                      
                        <div class="form-group has-feedback">
                                        
                          <a class="listbtn btn btn-info"  onclick="location='a_notice?page=${page}';" > 목록</a>
                        </div>
                     
               </div>
            </div>
         </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>&copy; YWHY 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    

    <script src="./resources/admin/js/jquery.js"></script>
   

    <!-- Bootstrap core JavaScript-->
    <script src="./resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="./resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="./resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="./resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

    <!-- Page level custom scripts -->
    <script src="./resouces/admin/js/demo/datatables-demo.js"></script>

<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
       
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
    (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=1539685662974940&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
 </script>

</body>

</html>