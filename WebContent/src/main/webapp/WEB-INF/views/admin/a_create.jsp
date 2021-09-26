<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지 - Q&amp;A</title>
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
   </style>
   <!-- 추가한 스타일 -->
   
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../ywhy_loginafter_manager_index.jsp"><%-- 로고 누르면 관리자 메인화면으로 넘어간다. --%>
               <div class="sidebar-brand-icon">
                    <img src="img/logo_manager.png" style="width:45px; height:45px;">
                </div>
                <div class="sidebar-brand-text mx-3">YWHY</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="manager_index.jsp">
                    <i class="fas fa-fw fa-hat-wizard"></i>
                    <span>Manager</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                management
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bulletin Board</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminQuestion.jsp">Q&amp;A</a>
                        <a class="collapse-item" href="adminCommunity.jsp">Community</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="usermanagement.jsp">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User Management</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

                

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800" >새 글 쓰기</h1>
                    
                    <!-- DataTales Example -->
                    <div id="article-create" class="content" role="main">
				<div class="content-header">
				</div>
				<div class="panel panel-default clearfix">
					<div class="panel-heading clearfix">
						<div class="avatar clearfix avatar-medium pull-left">
							<a href="/user/info/124651" class='avatar-photo'>
								<img src="//www.gravatar.com/avatar/8a9fd42ec1c99aeb1b1ba542521de04e?d=identicon&s=40" /></a>
							<div class="avatar-info">
								<a class="nickname" href="/user/info/124651" title="${m.mem_nick}" id="nickname">${m.mem_nick}</a>
								<div class="activity block">
									<span class="fa fa-flash"></span> 0
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form action="a_create_ok" method="post" enctype="multipart/form-data"
						id="article-form" class="article-form" role="form" onsubmit="return postForm()">
							<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
								<input type="hidden" name="b_name" id="b_name" value="">
								<script>
								document.getElementById('b_name').value=document.getElementById('nickname').textContent;
								
								</script>
								<div class="form-group has-feedback">
									<div>
										
										<select id="category" name="b_cate" class="form-control" required="">
											<option value="">게시판을 선택해 주세요.</option>
											<option value="Q&A" data-external="false"
												data-anonymity="false">Q&amp;A</option>
											<option value="커뮤니티" data-external="false"
												data-anonymity="false">커뮤니티</option>
										</select>
										
									</div>
								</div>
								<div class="form-group has-feedback">
									<div>
										<input type="text" name="b_title" required="" value=""
											placeholder="제목을 입력해 주세요." class="form-control" id="title">
									</div>
								</div>
								<div class="form-group has-feedback">
									<div>
										<input type="text" name="b_tag" value=""
											placeholder="Tags," class="form-control" id="tagString">
									</div>
								</div>
								<div class="form-group has-feedback">
									<textarea name="b_cont" id="summernote" rows="20"
										class="form-control input-block-level"></textarea>
									<input type="hidden" name="textType" value="HTML" id="textType">									
									<div class="nav" role="navigation">
										<fieldset class="buttons">
											<a href="javascript:window.history.back();" class="btn btn-default btn-wide" 
											onclick="return confirm('정말로 취소하시겠습니까?')">취소</a> 
											<input type="submit" name="create" class="create btn btn-success btn-wide pull-right"
											action="create" value="등록" id="create">
										</fieldset>
									</div>
								</div>
							</fieldset>
						</form>
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
    
    
    
    
    
    <div id="modDiv" style="display:none;">
    <div class="layout-container">
      <div class="main ">
         
         <div id="article-create" class="content" role="main">
            <div class="content-header">
               <h3>새 글 쓰기</h3>
            </div>
            <div class="panel panel-default clearfix">
               <div class="panel-heading clearfix">
               
               </div>
               <div class="panel-body">
                  <form action="b_create_ok" method="post" 
                  id="article-form" class="article-form" role="form" onsubmit="return postForm()">
                     <fieldset class="form">
                        <input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
                        <div class="form-group has-feedback">
                           <div>
                              <select id="category" name="categoryCode" class="form-control" required="">
                                 <option value="">게시판을 선택해 주세요.</option>
                                 <option value="tech-qna" data-external="false"
                                    data-anonymity="false">Q&amp;A</option>
                                 <option value="blockchain-qna" data-external="false"
                                    data-anonymity="false">커뮤니티</option>
                              </select>
                           </div>
                        </div>
                        <div class="form-group has-feedback">
                           <div>
                              <input type="text" name="title" required="" value=""
                                 placeholder="제목을 입력해 주세요." class="form-control" id="title">
                           </div>
                        </div>
                        <div class="form-group has-feedback">
                           <div>
                              <input type="text" name="tagString" value=""
                                 placeholder="Tags," class="form-control" id="tagString">
                           </div>
                        </div>
                        <div class="form-group has-feedback">
                           <textarea name="text" id="summernote" rows="15"
                              class="form-control input-block-level"></textarea>
                           <input type="hidden" name="textType" value="HTML" id="textType">                           
                           
                              <fieldset class="buttons">
                                          <button class="modNo btn btn-danger" 
                                          onclick="modDivClose();">취소</button> 
                                          <input type="submit" name="create" class="modYes btn btn-success"
                                          action="create" value="등록" id="create">
                                       </fieldset>
                        
                     </fieldset>
                  </form>
               </div>
            </div>
         </div>      
      </div>
   </div>
   </div>
    

    <script src="./resources/admin/js/jquery.js"></script>
   

    <!-- Bootstrap core JavaScript-->
    <script src="./resouces/admin/vendor/jquery/jquery.min.js"></script>
    <script src="./resouces/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="./resouces/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="./resouces/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

    <!-- Page level custom scripts -->
    <script src="./resouces/admin/js/demo/datatables-demo.js"></script>

<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>

</body>

</html>