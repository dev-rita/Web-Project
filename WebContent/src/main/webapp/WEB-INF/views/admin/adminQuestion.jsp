<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지 - Q&amp;A</title>
      <link href="./resources/admin/img/logo_manager.png" rel="icon"><!-- title 옆에 아이콘 -->
   
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
      <%--#modDiv{
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
      --%>
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
        <jsp:include page="a_sidebar.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

                

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800" >Q&amp;A 관리</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 style="display:inline;" class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                            
                            
                            <input type="button" value="삭제" class="btn btn-danger" onclick="deleteValue();" style="float:right; margin-left : 5px;">
                            <button class="btn btn-primary" onclick="pick();" style="float:right; margin-left : 5px;"><i class="fas fa-check-circle"></i>&nbsp;Editor Pick</button>                            
                            <a class="btn btn-info" style="float:right;" onclick="location='a_create?page=${page}';" ><i class="fa fa-pencil"></i> 새 글 쓰기</a>
                            
                        </div>
                        <div class="card-body">
                           <div>
                              <form>
                                 <span><b>게시물 수 : ${totalCount} 개</b></span>
                                 <c:if test="${!empty find_name}"><a href="a_questions" class="btn btn-warning btn-sm" style="float:right; margin-left:5px;"><i class="fa fa-times-circle" aria-hidden="true"></i>clear</a></c:if>
                                 <button type="submit" class="btn" style="float:right; margin-left: 5px; margin-bottom: 5px; border: solid 1px gray; height:30px; line-height: 0px;" value="검색" >검색</button>
                           <input type="text" name="find_name" id="find_name" style="float:right; margin-left: 5px; margin-bottom: 5px;" size="14" value="${find_name}" />
                           <select name="find_field" style="float:right; margin-left: 5px; margin-bottom: 5px; height:30px;">
                              <option value="b_title"
                                 <c:if test="${find_field=='b_title'}">
                                       ${'selected'}
                                    </c:if>
                                 >제목</option>
                                 <option value="b_cont"
                                 <c:if test="${find_field=='b_cont'}">
                                       ${'selected'}
                                    </c:if>
                                 >내용</option>
                                 <option value="b_name"
                                 <c:if test="${find_field=='b_name'}">
                                       ${'selected'}
                                    </c:if>
                                 >작성자</option>                                 
                           </select> 
                              </form>
                           </div>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                           <th><input type="checkbox" name="allCheck" id="allCheck">전체선택</th>                                       
                                            <th>No</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>등록일</th>
                                            <th>조회</th>
                                            <th>게시물 관리</th>
                                        </tr>
                                    </thead>
                                 
                                    <tbody>
                                    <c:if test="${!empty blist}">
                                    <c:forEach var="b" items="${blist}">
                                        <tr>
                                           <td><input type="checkbox" name="RowCheck" value="${b.b_no}"></td>
                                            <td>${b.b_ref}<c:if test="${b.b_step != 0}">.Re</c:if></td>
                                            <td><c:if test="${b.b_pick==1}"><i class="fas fa-check-circle"></i>&nbsp;</c:if><a href="a_cont?b_no=${b.b_no}&page=${page}&state=cont">${b.b_title}</a></td>
                                            <td><a href="user_privacy" data-toggle="modal" data-target="#userPrivacy">${b.b_name}</a></td>
                                            <td>${fn:substring(b.b_date,0,10)}</td>
                                            <td>${b.b_hit}</td>
                                            <td style="text-align:center;">
                                               <a class="btn btn-warning btn-sm" href="a_cont?b_no=${b.b_no}&page=${page}&state=edit">수정</a>                                           
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        </c:if>
                                        <c:if test="${empty blist}">
                              <tr>
                                 <th colspan="7" style="text-align: center;">게시글 목록이 없습니다.</th>
                              <tr>
                           </c:if>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-center">
                       <span id="show">  showing ${page} of ${maxpage} </span>
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
            <a href="a_questions?page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
            </li>
            </c:if>
            
               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="a_questions?page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="a_questions?page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
              
                  <c:if test="${page >= maxpage }">
                  <li class="next disabled">
                     <span>»&nbsp;</span>
                  </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="a_questions?page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
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
            <a href="a_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${page-1}&sort=${sort}&order=desc"> <span>«</span></a>&nbsp;
            </li>
            </c:if>

               
                <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
               <c:if test="${a == page}"><%--현재 쪽 번호가 선택되었다면 --%>
                  <li class="active"><span>${a}</span></li>
               </c:if>
               <c:if test="${a != page}"><%--현재 쪽 번호가 선택 안된 경우 --%>
                  <li><a href="a_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${a}&sort=${sort}&order=desc"><span>${a}</span></a>&nbsp;</li>
               </c:if>
            </c:forEach>
               
 
               <li class="disabled">
                  <span>...</span>
               </li>
               <li>
                  <a href="a_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${maxpage}&sort=${sort}&order=desc">${maxpage}</a>   
               </li>
               
                  <c:if test="${page >= maxpage }">
                   <li class="next disabled">
                     <span>»&nbsp;</span>
                   </li>
                  </c:if>
            <c:if test="${page < maxpage }">
             <li class="next">
               <a href="a_questions?find_field=${find_field}&find_name=${blank_find_name}&page=${page+1}&sort=${sort}&order=desc"><span>»</span></a>&nbsp;
             </li>
            </c:if>
              
                </ul>
                </div>
             </c:if>                  
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
    <script src="./resources/admin/js/demo/datatables-demo.js"></script>

<script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
<script>
   $(function(){
      var chkObj = document.getElementsByName("RowCheck");
      var rowCnt=chkObj.length;
      
      $("input[name='allCheck']").click(function(){
         var chk_listArr=$("input[name='RowCheck']");
         for (var i=0;i<chk_listArr.length; i++){
            chk_listArr[i].checked=this.checked;
         }
      });
      $("input[name='RowCheck']").click(function(){
         if($("input[name='RowCheck']:checked").length == rowCnt){
            $("input[name='allCheck']")[0].checked=true;
         }else{
            $("input[name='allCheck']")[0].checked=false;
         }
      });
   });
   function deleteValue(){
      var url="delete";
      var valueArr =new Array();
      var list=$("input[name='RowCheck']");
      for(var i=0;i<list.length;i++){
         if(list[i].checked){
            valueArr.push(list[i].value);
         }
         
      }   
      if(valueArr.length==0){
         alert('선택된 글이 없습니다.');
      }else{
         var chk=confirm("정말 삭제하시겠습니까?");
         $.ajax({
            url:url,
            type:'POST',
            traditional:true,
            data:{
               valueArr:valueArr
            },
            success:function(jdata){
               if(jdata=1){
                  alert('삭제 성공');
                  location.reload();
               }else{
                  alert("삭제 실패");
               }
            }
         
         });
      }
   }
   function pick(){
      var url="pick";
      var valueArr =new Array();
      var list=$("input[name='RowCheck']");
      for(var i=0;i<list.length;i++){
         if(list[i].checked){
            valueArr.push(list[i].value);
         }
         
      }   
      if(valueArr.length==0){
         alert('선택된 글이 없습니다.');
      }else{
         var chk=confirm("정말 추천하시겠습니까?");
         $.ajax({
            url:url,
            type:'POST',
            traditional:true,
            data:{
               valueArr:valueArr
            },
            success:function(jdata){
               if(jdata=1){
                  alert('추천 성공');
                  location.reload();
               }else{
                  alert("추천 실패");
               }
            }
         
         });
      }
   }
</script>
</body>

</html>