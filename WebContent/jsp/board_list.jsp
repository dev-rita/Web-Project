<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/board_list_css.css" rel="stylesheet" type="text/css">
</head>
<body>
   <div><span>게시글 제목</span><a class="new_write" href="#">새 글 쓰기</a>
   </div><br>
   <div class="header">
      <ul>
         <li><a href="#">최신순</a></li>
         <li><a href="#">추천순</a></li>
         <li><a href="#">댓글순</a></li>
         <li><a href="#">스크랩순</a></li>
         <li><a href="#">조회순</a></li>
      </ul>
      <form>
         <input type="text" value="검색어">
         <input type="submit" value="검색">
      </form>
   </div><br><br>
   <div class="pickedlist">
      <ul>
         <li>첫번째 공지사항</li>
         <li>두번째 공지사항</li>
         <li>세번째 공지사항</li>
         <li>네번째 공지사항</li>
      </ul>
   </div>
   <ul>
   <li>
   <div class="container">
   <div class="board board1">
        <div>
            <span >#글번호</span>
            <a href="#" >파란색 태그</a>
            <a href="#">태그1</a>
            <a href="#">태그2</a>
            <a href="#">태그3</a>
            <a href="#">태그4</a>
        </div>
        <h5><a href="#">글 제목</a></h5>
    </div>
   <div class="board board2">
       <div>
           <ul>
               <li>댓글수</li>
                <li>좋아요수</li>
                <li>조회수</li>
            </ul>
        </div>
    </div>
   <div class="board board3">
      <div>
         <a href="#" class="avatar-photo"><img src="#" alt="작성자 사진"></a>
         <div>
            <a href="#">작성자</a>
            <div><span></span>117</div>
            <div><span>작성일</span></div>
         </div>
      </div>
    </div>
    </div></li>
    </ul>
       <ul class="board-page">
         <li class="prev disabled">
            <span>«</span>
         </li>
         <li class="active"><span>1</span>
         </li>
         <li>
         <a href="#">2</a>
         </li>
         <li>
         <a href="#">3</a>
         </li>
         <li>
         <a href="#">4</a>
         </li>
         <li>
         <a href="#">5</a>
         </li>
         <li>
         <a href="#">6</a>
         </li>
         <li>
         <a href="#">7</a>
         </li>
         <li>
         <a href="#">8</a>
         </li>
         <li>
         <a href="#">9</a>
         </li>
         <li>
         <a href="#">10</a>
         </li>
         <li class="disabled"><span>...</span></li>
         <li>
         <a href="#">마지막 페이지</a>
         </li>
         <li class="next">
         <a href="#">»</a>
         </li>
      </ul>
</body>
</html>