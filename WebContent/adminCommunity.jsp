<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지 - 커뮤니티</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <!-- 추가한 스타일 -->
	<style>
		#modDiv{
		width:600px; height:800px; background-color:lightgray;
		position:absolute; top:20%; left:50%;
		matgin-top:-50px; margin-left:-150px;
		padding:10px;
		z-index:1000;
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
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="ywhy_loginafter_manager_index.jsp"><%-- 로고 누르면 관리자 메인화면으로 넘어간다. --%>
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
                        <a class="collapse-item" href="#">Q&amp;A</a>
                        <a class="collapse-item" href="#">Community</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User Management</span></a>
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
                    <h1 class="h3 mb-2 text-gray-800" >커뮤니티 관리</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 style="display:inline;" class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                            
                            
                            <button class="btn btn-danger" style="float:right; margin-left : 5px;">삭제</button>
                            <button class="btn btn-primary" style="float:right; margin-left : 5px;">Editor Pick</button>                            
                            <button id="create" class="btn btn-info" style="float:right;"><i class="fa fa-pencil"></i>새 글 쓰기</button>
                            
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox"></th>                                       
                                            <th>No</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>등록일</th>
                                            <th>조회</th>
                                            <th>게시물 관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        	<th><input type="checkbox"></th>
                                            <th>No</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>등록일</th>
                                            <th>조회</th>
                                            <th>게시물 관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>1</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>                                            	
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>2</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>3</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>4</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012/03/29</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>5</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>6</td>
                                            <td>Integration Specialist</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2012/12/02</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>7</td>
                                            <td>Sales Assistant</td>
                                            <td>San Francisco</td>
                                            <td>59</td>
                                            <td>2012/08/06</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>8</td>
                                            <td>Integration Specialist</td>
                                            <td>Tokyo</td>
                                            <td>55</td>
                                            <td>2010/10/14</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>9</td>
                                            <td>Javascript Developer</td>
                                            <td>San Francisco</td>
                                            <td>39</td>
                                            <td>2009/09/15</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<td><input type="checkbox"></td>
                                            <td>10</td>
                                            <td>Software Engineer</td>
                                            <td>Edinburgh</td>
                                            <td>23</td>
                                            <td>2008/12/13</td>
                                            <td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">수정</a></button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
             
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
						<form action="/articles/questions/save" method="post" 
						id="article-form" class="article-form" role="form" onsubmit="return postForm()">
							<fieldset class="form">
								<input type="hidden" name="_csrf" value="d63a7b3b-13a3-49d5-9a01-a116f355ec55">
								<div class="form-group has-feedback">
									<div>
										<select id="category" name="categoryCode" class="form-control" required="">
											<option value="">게시판을 선택해 주세요.</option>
											<option value="tech-qna" data-external="false"
												data-anonymity="false">Tech Q&A</option>
											<option value="blockchain-qna" data-external="false"
												data-anonymity="false">Blockchain Q&A</option>
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
									<textarea name="text" id="summernote" rows="20"
										class="form-control input-block-level"></textarea>
									<input type="hidden" name="textType" value="HTML" id="textType">
									
									<div class="nav" role="navigation">
										<fieldset class="buttons">
											<button class="btn btn-default btn-sm" 
											onclick="modDivClose();">취소</button> 
											<input type="submit" name="create" class="create btn btn-success btn-sm pull-right"
											action="create" value="등록" id="create">
										</fieldset>
									</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="right-banner-wrapper">
				<div class="google-ad">
					<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- okjspad_160x500 -->
					<ins class="adsbygoogle" style="display: inline-block; width: 160px; height: 500px"
						data-ad-client="ca-pub-8103607814406874" data-ad-slot="6573675943"></ins>
					<script>
	                        (adsbygoogle = window.adsbygoogle || []).push({});
	                </script>
				</div>
			</div>
    		
			
		</div>
	</div>
	</div>
    

    <script src="./js/jquery.js"></script>
    <script>
    $(document).ready(function(){
    	$('#create').click(function(){
    		$('#modDiv').show('slow');	
    	});
    });
    
    function modDivClose(){
    	$('#modDiv').hide('slow');
    }
    //댓글 수정화면 닫기
    function modDivClose(){
       $('#modDiv').hide('slow');
    }
    </script>
    
    

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>

</body>

</html>