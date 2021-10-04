<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YWHY - 비밀번호 변경</title>
<jsp:include page="../../include/header.jsp" />

         <div id="create-user" class="content" role="main">
            <h3 class="content-header">비밀번호 변경</h3>
            <form action="passwordChange_ok" method="post" onsubmit="return passwordChange();">
               <%--<input type="hidden" name="_csrf" value="bbaaed77-5b82-4221-a5c2-7159c658c83c"> --%>
               <div class="col-sm-8 col-sm-offset-2">
                  <div class="panel panel-default panel-margin-10">
                     <div class="panel-body panel-body-content text-center">
                        <p class="lead">변경하실 비밀번호를 입력해 주세요.</p>
                        <div class="form-group">
                           <input type="password" name="changepwd" id="newPassword" class="form-control form-control-inline text-center" placeholder="새 비밀번호">
                           <span id="newPassword_check"></span>
                        </div>
                        <div class="form-group">
                           <input type="password" name="changepwdcheck" id="newPasswordConfirm" class="form-control form-control-inline text-center" placeholder="새 비밀번호 확인">
                           <span id="newPasswordConfirm_check"></span>
                        </div>
                        <button type="submit" class="btn btn-primary" style="color:#773209">비밀번호 변경</button>
                        <a href="." class="btn btn-default">취소</a>
                     </div>
                  </div>
               </div>
            </form>
         </div>

         <div class="right-banner-wrapper"></div>
         
<jsp:include page="../../include/footer.jsp" />

   <script>
      var contextPath = "";
      var encodedURL = "%2Fuser%2FpasswordChange";
   </script>
   
   <script src="https://kit.fontawesome.com/4f7c74d082.js" crossorigin="anonymous"></script>
   <script src="./resources/js/application.js" type="text/javascript"></script>
   <%--<script src="../../js/apps/search.js" type="text/javascript"></script> --%>
   <script src="./resources/js/apps/notification.js" type="text/javascript"></script>
   <script src="./resources/js/apps/member.js" type="text/javascript"></script>

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
</body>
</html>