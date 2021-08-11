<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>YWHY manager</title>
    
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="images/logo_manager.png" rel="shortcut icon">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"><</script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"><</script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"><</script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
                        <a class="collapse-item" href="adminQuestion.jsp">Q&amp;A</a>
                        
                        <a class="collapse-item" href="adminCommunity.jsp">Community</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="usermanagement.jsp">
                    <i class="fas fa-fw fa-user"></i>
                    <span>회원관리</span></a>
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
			<div id="content">



				<!-- Begin Page Content -->
				<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">회원관리</h1>
                   <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"></h6>
                        </div>
				<button id="create" class="btn btn-danger" style="float:right;"><i class="fa fa-eraser"></i>회원탈퇴</button>
				<div class="card-body">
					<div class="table-responsive">

						<div id="dataTable_wrapper"
							class="dataTables_wrapper dt-bootstrap4 no-footer">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<div class="dataTables_length" id="dataTable_length">
										
									</div>
								</div>
								<div class="col-sm-12 col-md-6">
									<div id="dataTable_filter" class="dataTables_filter">
										
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table class="table table-bordered dataTable no-footer"
										id="dataTable" width="100%" cellspacing="0" role="grid"
										aria-describedby="dataTable_info" style="width: 100%;">
										<thead>
											<tr role="row">
												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="dataTable" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="아이디: activate to sort column descending"
													style="width: 151px;">아이디</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="계급: activate to sort column ascending"
													style="width: 232px;">계급</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="게시글수: activate to sort column ascending"
													style="width: 79px;">게시글수</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="댓글수: activate to sort column ascending"
													style="width: 60px;">댓글수</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="가입일: activate to sort column ascending"
													style="width: 100px;">가입일</th>
												<th class="sorting" tabindex="0" aria-controls="dataTable"
													rowspan="1" colspan="1"
													aria-label="회원탈퇴: activate to sort column ascending"
													style="width: 79px;">회원탈퇴</th>
											</tr>
										</thead>
										<tfoot>

										</tfoot>
										<tbody>
										








											<tr class="odd">
												<td class="sorting_1">Airi Satou</td>
												<td>Accountant</td>
												<td>123</td>
												<td>33</td>
												<td>2008/11/28</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											<tr class="even">
												<td class="sorting_1">Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>42</td>
												<td>66</td>
												<td>2009/01/12</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											<tr class="odd">
												<td class="sorting_1">Brielle Williamson</td>
												<td>Integration Specialist</td>
												<td>55</td>
												<td>61</td>
												<td>2012/12/02</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											<tr class="even">
												<td class="sorting_1">Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>231</td>
												<td>12</td>
												<td>2012/03/29</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											<tr class="odd">
												<td class="sorting_1">Garrett Winters</td>
												<td>Accountant</td>
												<td>22</td>
												<td>63</td>
												<td>2011/07/25</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											<tr class="even">
												<td class="sorting_1">Tiger Nixon</td>
												<td>System Architect</td>
												<td>21</td>
												<td>61</td>
												<td>2011/04/25</td>
												<td><input type="checkbox" id="chkall"></td>
											</tr>
											
										</tbody>
										
									</table>
									
								</div>
								
							</div>
							
							<div class="row">
								<div class="col-sm-12 col-md-5">
									
								</div>
								
								<div class="col-sm-12 col-md-7">
									<div class="dataTables_paginate paging_simple_numbers"
										id="dataTable_paginate">
										<ul class="pagination">
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
            <!-- End of Main Content -->

           <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>&copy; YWHY 2021</span>
                    </div>
                </div>
            </footer>
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
    

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>