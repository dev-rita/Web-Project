$('#rec_btn_p').on("click",function(){
	var b_no=$('#b_no').text();
       
    $.ajax({
       type:'post',
       url:'/controller/recommendp',
       headers:{
          "Content-Type" : "application/json",
          "X-HTTP-Method-Override" : "POST"
       },
       dataType:'text',
       data:JSON.stringify({
          b_no:b_no,
       }),
       success:function(result){//받아오는 것이 성공시 호출됨
          if(result == 'SUCCESS'){
             alert('추천 되었습니다!');
             location.reload();//새로 고침->단축키는 f5
          }
       }
    });
  });
//게시글 반대
$('#rec_btn_m').on("click",function(){
	var b_no=$('#b_no').text();
       
    $.ajax({
       type:'post',
       url:'/controller/recommendm',
       headers:{
          "Content-Type" : "application/json",
          "X-HTTP-Method-Override" : "POST"
       },
       dataType:'text',
       data:JSON.stringify({
          b_no:b_no,
       }),
       success:function(result){//받아오는 것이 성공시 호출됨
          if(result == 'SUCCESS'){
             alert('반대 되었습니다!');
             location.reload();//새로 고침->단축키는 f5
          }
       }
    });
  });