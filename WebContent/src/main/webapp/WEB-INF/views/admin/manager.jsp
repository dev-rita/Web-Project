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
    <link href="./resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="./resources/admin/img/logo_manager.png" rel="shortcut icon">

    <!-- Custom styles for this template-->
    <link href="./resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
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
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">관리자 메뉴화면</h1>
                    </div>
 
                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Q&amp;A</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${qnaListCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-table fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Community</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${boardListCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-table fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Notice</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${noticeListCount}</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-exclamation fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Member</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${memberListCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-user fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">one-day visitors</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                     
                    <div class="row">
                     
                        <!-- To Do List -->
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">To Do List</h6>
                                    <form id="todo-form">
											<input type="text" placeholder="Write To Do" size="20" required />
									</form>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body bottom-body scroll">
                                    <div>
										<ul id="todo-list"></ul>
									</div>
                                </div>
                            </div>
                        </div>
                     
                        <!-- Weather -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4 box">
                                <!-- Card Body -->
                                <div id="weather" class="card-body"><%--weather 구현 --%>
                                	<p></p><%-- 현재 위치 --%>
                                	<p></p><%-- 오늘 날짜 --%>
                                	<p><img id="icon"/></p><%-- 아이콘 --%>
                                	<p></p><%-- 현재온도 --%>
                                	<p>
                                		<span>최고 :&nbsp;&nbsp;</span>
                                		<span>&nbsp;&nbsp;&nbsp;최저 :&nbsp;&nbsp;</span>
                                		<span>&nbsp;&nbsp;&nbsp;체감 :&nbsp;&nbsp;</span>
                                	</p>
                                	<%-- p나 span은 js에서 +=가 적용되지만 div에서는 안된다.. --%>
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

	<!-- 희선 js파일 추가 -->
	<script src="./resources/admin/js/todo.js" type="text/javascript"></script>
	<script src="./resources/admin/js/weather.js" type="text/javascript"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="./resources/admin/vendor/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="./resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>

    <!-- Core plugin JavaScript-->
    <script src="./resources/admin/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>

    <!-- Custom scripts for all pages-->
    <script src="./resources/admin/js/sb-admin-2.min.js" type="text/javascript"></script>

    <!-- Page level plugins -->
    <script src="./resources/admin/vendor/chart.js/Chart.min.js" type="text/javascript"></script>

    <!-- Page level custom scripts -->
    <script src="./resources/admin/js/demo/chart-area-demo.js" type="text/javascript"></script>
    <script src="./resources/admin/js/demo/chart-pie-demo.js" type="text/javascript"></script>

</body>

</html>