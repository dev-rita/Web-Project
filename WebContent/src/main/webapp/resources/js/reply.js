
getAllList();//댓글목록함수
function getAllList(){
	var b_no=$('#b_no').text();//게시판 번호, 자바스크립트에서 jsp 문법인 jstl or el을 사용 가능하다. var b_no=${b.b_no}; js파일에서 에러
	$.getJSON("/controller/all/"+b_no,function(data){
		//비동기식으로 받아오는 것이 성공시 받아온 데이터는 data매개변수에 저장
		var str="";
		$(data).each(function(){//each()함수로 반복
			str+= "<li class='list-group-item note-item clearfix' id='r_no"+this.r_no+"'>"
			+"<div class='content-body panel-body pull-left'>"
		    +"<div class='note-select-indicator note-deselected'>"
		    +"<i class='fa fa-comment'></i></div>"
		    +"<div class='avatar clearfix avatar-medium '>"
		    +"<a href='/user/info/97440' class='avatar-photo'>"
		    +"<img src='//www.gravatar.com/avatar/11cea1d9b7f8916b454e3325e9ac3ad9?d=identicon&amp;s=40'></a>"
		    +"<div class='avatar-info'>"
		    +"<a class='nickname' href='/user/info/97440' title='"+this.replyer+"'>"+this.replyer+"</a>"
		    +"<div class='activity'><span class='fa fa-flash'></span> 352</div>"+"<div class='replyLi' data-r_no='"+this.r_no+"' style='display:none;'>"+this.r_no+"</div>"
		    +"<div class='date-created'><span class='timeago' title='"+this.regdate+"'>"+this.regdate+"</span></div></div>"
		    +"</div><fieldset class='form'><article id='note-text-"+this.r_no+"' class='list-group-item-text note-text'>"
			+this.replytext+"</article></fieldset></div>"
			+"<div class='content-function pull-right text-center'><div class='content-function-group'><div class='note-evaluate-wrapper'>"
			+"<a href='javascript://' class='note-vote-btn' role='button' data-type='assent' data-eval='true' data-id='"+this.r_no+"'>"
			+"<i id='note-evaluate-assent-"+this.r_no+"' class='fa fa-angle-up note-evaluate-assent-assent' data-placement='left' data-toggle='tooltip' title='' data-original-title='추천'></i></a>"					
			
			+"<div id='content-vote-count-"+this.r_no+"' class='content-eval-count'>"+this.r_hit+"</div>"
			+"<a href='javascript://' class='note-vote-btn' role='button' data-type='dissent' data-eval='true' data-id='"+this.r_no+"'>"
			+"<i id='note-evaluate-dissent-"+this.r_no+"' class='fa fa-angle-down note-evaluate-dissent-dissent' data-placement='left' data-toggle='tooltip' title='' data-original-title='반대'></i>"
			+"</a>"
			
			+"<div class='dropdown'><a href='javascript://' data-toggle='dropdown' aria-expanded='false'><i class='fa fa-cog' data-toggle='tooltip' data-placement='left' title='' data-original-title='게시물 설정'></i></a>"
			+"<ul class='dropdown-menu' role='menu'>"
            +"<li><a href='javascript://' class='note-edit-btn' onclick='replyupdateview("+this.r_no+")'><i class='fa fa-edit fa-fw'></i> 수정 </a></li>"
            +"<li><a href='javascript://' class='note-delete-btn' onclick='replydelete("+this.r_no+")' ><i class='fa fa-trash-o fa-fw'></i> 삭제 </a></li>   </ul></div>"
			
			+"</div></div></div></li>"
			
			
			"<li class='list-group-item note-item clearfix' id='note-"+this.r_no+"'><div class='content-body panel-body pull-left'>"
            +"<div class='note-select-indicator note-deselected'><i class='fa fa-comment'></i></div>"
			 +"	<div class='avatar clearfix avatar-medium'> <a href='/user/info/124433' class='avatar-photo'>"
			 +"<img src='//www.gravatar.com/avatar/11cea1d9b7f8916b454e3325e9ac3ad9?d=identicon&amp;s=40'></a>"
			 +"<div class='avatar-info'><a class='nickname' href='/user/info/97440' title='"+this.replyer+"'>"+this.replyer+"</a>"
			+"<div class='activity'><span class='fa fa-flash'></span> 352</div>"
			+"<div class='date-created'><span class='timeago' title='"+this.regdate+"'>"+this.regdate+"</span></div></div></div>"
			+"<fieldset class='form'><article id='note-text-"+this.r_no+"' class='list-group-item-text note-text'>"
			+this.replytext+"</article></fieldset></div>"
		});
		$('#replies').html(str);//해당영역에 태그와 문자를 함께 변경 적용
	});//댓글목록
}//getAllList()

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
     