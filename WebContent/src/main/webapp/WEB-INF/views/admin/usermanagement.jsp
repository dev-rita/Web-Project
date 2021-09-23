<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>괸리자페이지-회원관리</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="img/logo_manager.png" rel="shortcut icon">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">




</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../ywhy_loginafter_manager_index.jsp">
				<div class="sidebar-brand-icon">
					<img src="img/logo_manager.png" style="width: 45px; height: 45px;">
				</div>
				<div class="sidebar-brand-text mx-3">YWHY</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="manager_index.jsp"> <i class="fas fa-fw fa-hat-wizard"
					aria-hidden="true"></i> <span>Manager</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">management</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-table" aria-hidden="true"></i> <span>Bulletin
						Board</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminQuestion.jsp">Q&amp;A</a> <a
							class="collapse-item" href="adminCommunity.jsp">Community</a>
					</div>
				</div></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="usermanagement.jsp"> <i class="fas fa-fw fa-user"
					aria-hidden="true"></i> <span>User Management</span>
			</a></li>

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




				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">User Management</h1>
					<p class="mb-4"></p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">User
								Management</h6>
							<button class="btn btn-danger"
								style="float: right; margin-left: 5px;">회원탈퇴</button>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="아이디: activate to sort column descending" style="width: 180px;">아이디</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="계급: activate to sort column ascending" style="width: 200px;">계급</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="게시글 수: activate to sort column ascending" style="width: 94px;">게시글 수</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="댓글 수: activate to sort column ascending" style="width: 110px;">댓글 수</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="가입일: activate to sort column ascending" style="width: 130px;">가입일</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="등업: activate to sort column ascending" style="width: 85px;">등업</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="회원탈퇴: activate to sort column ascending" style="width: 100px;">회원탈퇴</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>아이디</th>
											<th>계급</th>
											<th>게시글 수</th>
											<th>댓글 수</th>
											<th>가입일</th>
											<th>등업</th>
											<th>회원탈퇴</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>41</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Garsett Win</td>
											<td>Accountant</td>
											<td>42</td>
											<td>13</td>
											<td>2011/08/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>don lee</td>
											<td>Accountant</td>
											<td>12</td>
											<td>3</td>
											<td>2011/07/26</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>google</td>
											<td>Accountant</td>
											<td>32</td>
											<td>6</td>
											<td>2011/02/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Gaters</td>
											<td>Accountant</td>
											<td>4</td>
											<td>632</td>
											<td>2011/02/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>deers</td>
											<td>Accountant</td>
											<td>42</td>
											<td>61</td>
											<td>2010/02/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Gars</td>
											<td>Accountant</td>
											<td>42</td>
											<td>12</td>
											<td>2011/02/20</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>soul</td>
											<td>Accountant</td>
											<td>33</td>
											<td>13</td>
											<td>2013/07/25</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>12</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>42</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>12</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>22</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td style="text-align:center;">
                                            	<a class="btn btn-warning btn-sm" href="#">등업</a></button>
											<td><input type="checkbox" id="chkall"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
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
		
	<!-- End of Main Content -->	
	</div>
	
	<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

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

</body>

</html>