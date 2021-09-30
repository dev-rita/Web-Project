
//댓글 작성	
	$('#btn-create-btn').on("click",function(){
		var b_no=$('#b_no').text();
        var replyer = $('#replyWriter').val();//댓글 작성자
        var replytext = $('#note-create').val();//댓글 내용
       
        $.ajax({
           type:'post',
           url:'/controller/replies',
           headers:{
              "Content-Type" : "application/json",
              "X-HTTP-Method-Override" : "POST"
           },
           dataType:'text',
           data:JSON.stringify({
              b_no:b_no,
              replyer:replyer,
              replytext:replytext
           }),
           success:function(result){//받아오는 것이 성공시 호출됨
              if(result == 'SUCCESS'){
                 alert('등록 되었습니다!');
                 location.reload();//새로 고침->단축키는 f5
                 getAllList();
              }
           }
        });
      });//댓글작성
	
   
    //댓글 삭제
    function replydelete(r_no){   	
      	$.ajax({
      		type:'delete',
      		url:'/controller/replies/'+r_no,
      		headers:{
      			"Content-Type" : "application/json",
      			"X-HTTP-Method-Override":"DELETE"
      		},
      		dataType:'text',
      		success:function(result){
      			if(result =="SUCCESS"){
      				alert('댓글이 삭제 되었습니다!');
      				location.reload();//새로 고침->단축키는 f5
      				getAllList();
      			}
      		}
      	});
     }
     
//댓글 수정화면
function replyupdateview(r_no){
	 		
	 var replyer = $('#replyWriter').val();//댓글 작성자
     var replytext = $('#note-text-'+r_no).text();//댓글 내용
     
    
	var view="";
	
	view +="<li class='list-group-item note-form clearfix'>"      
   +"<input type='hidden' name='_csrf' value='2a6e37c5-aeda-4ae0-9dab-2a7651232fc1'>"
     +"<input type='hidden' name='lastNoteId' value='2502162 ' id='lastNoteId'>"
     +" <div class='content-body panel-body pull-left'>"
     +"<div style='margin-left: 5px;'>"
     +" <div class='avatar clearfix avatar-medium '>"
     +"<a href='/user/info/123566' class='avatar-photo'>"
     +" <img src='https://ssl.pstatic.net/static/pwe/address/img_profile.png'></a>"
   	  +"<div class='avatar-info'>"
   	  +"  <a class='nickname' href='/user/info/123566' title='${b.b_name}' id='nickname'>"+replyer+"</a>"
   	  +" <input type='hidden' name='replyer' id='replyWriter' value='{b.b_name}'/>"                    
   	  +"   <div class='activity block'><span class='fa fa-flash'></span> 0</div>"
   	  +" </div>"
   	  +" </div>"
   	  +"  </div>"
   	  +" <fieldset class='form'>"
   	  +"     <input type='hidden' name='textType' value='HTML' id='note.textType'>"
   	  +"     <textarea name='note.text' id='note-edit-"+r_no+"' name='replytext' placeholder='댓글 쓰기' class='form-control' style='display: block;'>"+replytext+"</textarea>"
   	  +" </fieldset>"
   	  +"</div>"
   	  +"<div class='content-function-cog note-submit-buttons clearfix'>"
   	  +" <p><a href='javascript://' id='note-create-cancel-btn' class='btn btn-default btn-wide'>취소</a></p>"
   		  +" <button name='edit' id='btn-edit-btn' class='btn btn-success btn-wide' onclick='replyupdate("+r_no+")'>수정</button>"
   		  +" </div></li>"
	  
	  $('#r_no'+r_no).replaceWith(view);   	
   	  $('#note-edit-'+r_no).focus();//원래 create
   	
 };

//댓글 수정 완료
function replyupdate(r_no){
 	var replytext=$('#note-edit-'+r_no).val();//수정할 댓글 내용

 	$.ajax({
 		type:'put',
 		url:'/controller/replies/'+r_no,
 		headers:{
 			"Content-Type":"application/json",
 			"X-HTTP-Method-Override":"PUT"
 		},
 		data:JSON.stringify({replytext:replytext}),
 		dataType:'text',
 		success:function(result){
 			if(result == 'SUCCESS'){
 				alert('댓글이 수정 되었습니다!');
 				getAllList();//댓글목록 호출
 			}
 		}
 	});
 }; 
     