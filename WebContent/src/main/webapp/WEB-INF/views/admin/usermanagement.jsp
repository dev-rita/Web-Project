<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>관리자페이지-회원관리</title>

<!-- Custom fonts for this template-->
<link href="./resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">
<link href="./resources/admin/img/logo_manager.png" rel="shortcut icon">

<!-- Custom styles for this template-->
<link href="./resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
<style>
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




            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

               <!-- Page Heading -->
               <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
               <p class="mb-4"></p>

               <!-- DataTales Example -->
               <div class="card shadow mb-4">
                  <form>
                  <div class="card-header py-3">
                     <h6 class="m-0 font-weight-bold text-primary" style="display: inline;">User Management</h6>

                     <button class="btn btn-primary" onclick="downgrade();" style="float: right; margin-left: 5px; height:35px; line-height: 0px;">일반 전환</button>
                     <button class="btn btn-primary" onclick="upgrade();" style="float: right; margin-left: 5px; height:35px; line-height: 0px;">관리자 전환</button>
                  </div>
                  
                  <div class="card-body">
                     
                     <div>
                        
                           <span><b>회원 수 : ${allListcount} 명</b></span>
                           <button type="submit" class="btn" style="float:right; margin-left: 5px; margin-bottom: 5px; border: solid 1px gray; height:30px; line-height: 0px;" value="검색" >검색</button>
                           <input type="text" name="find_name" id="find_name" style="float:right; margin-left: 5px; margin-bottom: 5px;" size="14" value="${find_name}" />
                           <select name="find_field" style="float:right; margin-left: 5px; margin-bottom: 5px; height:30px;">
                              <option value="mem_id"
                                 <c:if test="${find_field=='mem_id'}">
                                       ${'selected'}
                                    </c:if>
                                 >아이디</option>
                              <option value="mem_name"
                                 <c:if test="${find_field=='mem_name'}">
                                       ${'selected'}
                                    </c:if>
                                 >이름</option>
                                 <option value="mem_nick"
                                 <c:if test="${find_field=='mem_nick'}">
                                       ${'selected'}
                                    </c:if>
                                 >별명</option>
                                 <option value="mem_class"
                                 <c:if test="${find_field=='mem_class'}">
                                       ${'selected'}
                                    </c:if>
                                 >권한</option>
                           </select> 
                        
                        
                        <%--
                              <form style="float:right; margin-left: 5px;">
                                 <span id="search-span">
                                 <input type="search" name="query" id="search-field" placeholder="검색어" value="">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                 </span>
                                 
                              </form>
                              --%>
                           </div>
                  
                     <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                           <thead>
                              <tr>                                       
                                            <th style="text-align: center;">아이디</th>
                                            <th style="text-align: center;">이름</th>
                                            <th style="text-align: center;">별명</th>
                                            <th style="text-align: center;">가입 날짜</th>
                                            <th style="text-align: center;">이메일 인증</th>
                                            <th style="text-align: center;">권한</th>
                                            <th style="text-align: center;">회원탈퇴</th>
                                            <th style="text-align: center;">선택</th>
                                        </tr>
                           <%--
                              <tr>
                                 <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="아이디: activate to sort column descending" style="width: 180px;">아이디</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="계급: activate to sort column ascending" style="width: 200px;">계급</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="게시글 수: activate to sort column ascending" style="width: 94px;">게시글 수</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="댓글 수: activate to sort column ascending" style="width: 110px;">댓글 수</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="가입일: activate to sort column ascending" style="width: 130px;">가입일</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="등업: activate to sort column ascending" style="width: 85px;">등업</th>
                                 <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="회원탈퇴: activate to sort column ascending" style="width: 100px;">회원탈퇴</th>
                              </tr>
                            --%>
                           </thead>
                           <c:if test="${(!empty blist)&&(m.mem_id=='ywhyadmin')}">
                              <c:forEach var="m" items="${blist}">
                                 <tr>
                                    <td align="center">
                                       <a href="#">
                                          ${m.mem_id}
                                       </a>
                                    </td>
                                    <td align="center">
                                       ${m.mem_name}
                                    </td>
                                    <td align="center">
                                       ${m.mem_nick}
                                    </td>
                                    <td align="center">
                                       ${fn:substring(m.mem_signupdate,0,10)}
                                    </td>
                                    <td align="center">
                                       <c:if test="${m.mem_key == 'Y'}">인증확인</c:if>
                                       <c:if test="${m.mem_key != 'Y'}">X</c:if>
                                    </td>
                                    <td align="center">
                                       <c:if test="${m.mem_class == '일반'}">일반</c:if>
                                       <c:if test="${m.mem_class == '관리자'}">관리자</c:if>
                                    </td>
                                    <td align="center" style="width: 13%;">
                                       <input type="button" value="탈퇴" class="btn btn-dark" style="height: 25px; line-height: 0px;"
                                          onclick="if(confirm('정말 탈퇴 시키시겠습니까?') == true){ location='admin_member_del?mem_id=${m.mem_id}&page=${page}';
                                          }else{return;}"/>
                                    </td>
                                    <td align="center" style="width: 5%;"><%-- 메일 인증 안된사람(=로그인인 안되는 사람)은 권한 변경을 할 수 없다. --%>
                                       <c:if test="${m.mem_key == 'Y'}">
                                          <input style='zoom:1.5;' type="checkbox" name="RowCheck" value="${m.mem_id}">
                                       </c:if>
                                    </td>
                                 </tr>
                              </c:forEach>
                           </c:if>
                           <c:if test="${(!empty blist)&&(m.mem_id!='ywhyadmin')}">
                              <c:forEach var="m" items="${blist}">
                                 <tr>
                                    <td align="center">
                                       <a href="#">
                                          ${m.mem_id}
                                       </a>
                                    </td>
                                    <td align="center">
                                       ${m.mem_name}
                                    </td>
                                    <td align="center">
                                       ${m.mem_nick}
                                    </td>
                                    <td align="center">
                                       ${fn:substring(m.mem_signupdate,0,10)}
                                    </td>
                                    <td align="center">
                                       <c:if test="${m.mem_key == 'Y'}">인증확인</c:if>
                                       <c:if test="${m.mem_key != 'Y'}">X</c:if>
                                    </td>
                                    <td align="center">
                                       <c:if test="${m.mem_class == '일반'}">일반</c:if>
                                       <c:if test="${m.mem_class == '관리자'}">관리자</c:if>
                                    </td>
                                    <td align="center" style="width: 13%;">
                                    </td>
                                    <td align="center" style="width: 5%;"><%-- 메일 인증 안된사람(=로그인인 안되는 사람)은 권한 변경을 할 수 없다. --%>
                                    </td>
                                 </tr>
                              </c:forEach>
                           </c:if>
                           <c:if test="${empty blist}">
                              <tr>
                                 <th colspan="8" style="text-align: center;">회원목록이 없습니다.</th>
                              <tr>
                           </c:if>
                        </table>
                        
                        <%-- 페이징 쪽나누기 --%>
                        <div class="text-center">
                       <span id="show"> showing ${page} of ${maxpage} </span>
                           <%--검색 전 페이징 --%>
                            <c:if test="${(empty find_field)&&(empty find_name)}">
                             <div class="text-center">
                           <ul class="pagination pagination-sm">
              
                              <c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
                   <li class="prev disabled">
                  <span>«&nbsp;</span>
                  </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
            <a href="admin_usermanagement?page=${page-1}"> <span>«</span></a>&nbsp;
            </li>
            </c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="admin_usermanagement?page=${a}"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="admin_usermanagement?page=${maxpage}">${maxpage}</a>   
               </li>
              
                  <c:if test="${page >= maxpage }">
                  <li class="next disabled">
                     <span>»&nbsp;</span>
                  </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="admin_usermanagement?page=${page+1}"><span>»</span></a>&nbsp;
             </li>
            </c:if>
              
               </ul>
               </div>
             </c:if>      
             <%--검색 후 페이징 --%>
            
             <c:if test="${(!empty find_field)&&(!empty blist)}">
              <div class="text-center">
             <ul class="pagination pagination-sm">

              
                  <c:if test="${page <= 1}"><!-- 1페이지면 이동X -->
                  <li class="prev disabled">
                  <span>«&nbsp;</span>
                </li>
                 </c:if>
                 <c:if test="${page > 1 }">
                 <li class="prev">
            <a href="admin_usermanagement?find_field=${find_field}&find_name=${find_name}&page=${page-1}"> <span>«</span></a>&nbsp;
            </li>
            </c:if>

               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="admin_usermanagement?find_field=${find_field}&find_name=${find_name}&page=${a}"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="admin_usermanagement?find_field=${find_field}&find_name=${find_name}&page=${maxpage}">${maxpage}</a>   
               </li>
               
                  <c:if test="${page >= maxpage }">
                   <li class="next disabled">
                     <span>»&nbsp;</span>
                   </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="admin_usermanagement?find_field=${find_field}&find_name=${find_name}&page=${page+1}"><span>»</span></a>&nbsp;
             </li>
            </c:if>
              
                </ul>
                </div>
             </c:if>
                        </div>
                        
                        <div style="display: inline;">
                           <c:if test="${(!empty find_field) && (!empty find_name)}">
                              <input type="button" class="btn" style="float: right; border: solid 1px gray; height: 30px; line-height: 0px;" value="전체회원" onclick="location='admin_usermanagement?page=${page}';" />
                           </c:if>
                        </div>
                        
                     </div>
                  </div>
                  </form>
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
   <a class="scroll-to-top rounded" href="#page-top"> 
      <i class="fas fa-angle-up"></i>
   </a>

   <!-- Logout Modal-->
   <a class="scroll-to-top rounded" href="#page-top"> 
      <i class="fas fa-angle-up"></i>
   </a>

   <!-- Logout Modal
   <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
   </div>-->

   <!-- Bootstrap core JavaScript-->
   <script src="./resources/admin/vendor/jquery/jquery.min.js"></script>
   <script src="./resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Core plugin JavaScript-->
   <script src="./resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

   <!-- Custom scripts for all pages-->
   <script src="./resources/admin/js/sb-admin-2.min.js"></script>

   <!-- Page level plugins
   <script src="./resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
   <script src="./resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    -->

   <!-- Page level custom scripts -->
   <script src="./resources/admin/js/demo/datatables-demo.js"></script>
<script>   
     function upgrade(){
         var url="upgrade";
         var valueArr =new Array();
         var list=$("input[name='RowCheck']");
         for(var i=0;i<list.length;i++){
            if(list[i].checked){
               valueArr.push(list[i].value);
            }
            
         }   
         if(valueArr.length==0){
            alert('선택된 회원이 없습니다.');
         }else{
            $.ajax({
               url:url,
               type:'POST',
               traditional:true,
               data:{
                  valueArr:valueArr
               }
            });
         }
      }
     function downgrade(){
         var url="downgrade";
         var valueArr =new Array();
         var list=$("input[name='RowCheck']");
         for(var i=0;i<list.length;i++){
            if(list[i].checked){
               valueArr.push(list[i].value);
            }
            
         }   
         if(valueArr.length==0){
            alert('선택된 회원이 없습니다.');
         }else{
            $.ajax({
               url:url,
               type:'POST',
               traditional:true,
               data:{
                  valueArr:valueArr
               }  
            });
         }
      }
</script>
</body>

</html>