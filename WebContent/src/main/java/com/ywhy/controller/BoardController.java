package com.ywhy.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.ywhy.service.BoardService;
import com.ywhy.service.MemberService;
import com.ywhy.service.NoticeService;
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

@Controller
public class BoardController {
   
   @Autowired
   private BoardService boardService;
   
   @Autowired
   private MemberService memberService;
   
   @Autowired
   private NoticeService noticeService;
   
   //자료실 목록
      @RequestMapping("/b_community")//get or post로 접근하는 매핑주소를 처리
      public String b_community(Model listM, HttpServletRequest request, HttpSession session, BoardVO b , NoticeVO n, String sort) {
         
         String login=(String)session.getAttribute("id");       
         
         /* 페이징 관련 소스 추가 */
         int page=1;//현재 페이지 번호
         int limit=10;//한페이지에 보여지는 목록 개수
         
         if(request.getParameter("page") != null) {//get으로 전달된 쪽번호가 있는 경우 실행
            page=Integer.parseInt(request.getParameter("page"));//페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
         }
         
         //검색기능
         String find_field = request.getParameter("find_field");//검색 필드
         String find_name = request.getParameter("find_name");//검색어
         b.setFind_field(find_field);
         
         b.setFind_name("%"+find_name+"%");//%는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.
         
         String blank_find_name=b.getFind_name().replace("%", "").replace(" ", "+");
         
         b.setStartrow((page-1)*10+1);//시작행 번호 1, 11 ,21 
         b.setEndrow(b.getStartrow()+limit-1);//끝행 번호
         
         int totalCount=this.boardService.getListCount(b);//총 레코드 개수
         
         
         //총페이지
         int maxpage=(int)((double)totalCount/limit+0.95);
         //현재 페이지에 보여질 시작페이지
         int startpage=(((int)((double)page/10+0.9))-1)*10+1;
         //현재 페이지에 보여질 마지막 페이지
         int endpage=maxpage;
         if(endpage>startpage+10-1) endpage=startpage+10-1;
         
         List<BoardVO> blist=null;
         List<NoticeVO> nlist=this.noticeService.getNoticePickList(n);

         
         if((sort==null)||(sort.equals("id"))) {
            blist=this.boardService.getBoardList(b);//목록보기
            sort="id";
         }else if(sort.equals("voteCount")) {
            blist=this.boardService.getBoardListVote(b);//추천순으로 정렬
         }else if(sort.equals("noteCount")) {
            blist=this.boardService.getBoardListNote(b);//댓글순으로 정렬
         }else if(sort.equals("scrapCount")) {
            blist=this.boardService.getBoardListScrap(b);//스크랩순으로 정렬
         }else if(sort.equals("viewCount")) {
            blist=this.boardService.getBoardListView(b);//조회순으로 정렬
         }
         
         listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
         listM.addAttribute("nlist", nlist);
         listM.addAttribute("totalCount",totalCount);
         listM.addAttribute("startpage",startpage);
         listM.addAttribute("endpage",endpage);
         listM.addAttribute("maxpage",maxpage);
         listM.addAttribute("page",page);
         listM.addAttribute("find_field", find_field);//검색필드
         listM.addAttribute("find_name",find_name);//검색어
         listM.addAttribute("blank_find_name",blank_find_name);//공백 포함 검색어
         listM.addAttribute("sort",sort);//정렬
         if(login!=null) {
         MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
         listM.addAttribute("m", m);
         }
         
         return "board/b_community";
      }//b_community
      
      
         @RequestMapping("/b_questions")//get or post로 접근하는 매핑주소를 처리
         public String b_questions(Model listM, HttpServletRequest request, HttpSession session, BoardVO b ,NoticeVO n,String sort) {
            
           String login=(String)session.getAttribute("id");
            
            /* 페이징 관련 소스 추가 */
            int page=1;//현재 페이지 번호
            int limit=10;//한페이지에 보여지는 목록 개수
            if(request.getParameter("page") != null) {//get으로 전달된 쪽번호가 있는 경우 실행
               page=Integer.parseInt(request.getParameter("page"));//페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
            }
            
            //검색기능
            String find_field = request.getParameter("find_field");//검색 필드
            String find_name = request.getParameter("find_name");//검색어
            b.setFind_field(find_field);
            
            b.setFind_name("%"+find_name+"%");//%는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.
            
            String blank_find_name=b.getFind_name().replace("%", "").replace(" ", "+");
            
            b.setStartrow((page-1)*10+1);//시작행 번호 1, 11 ,21 
            b.setEndrow(b.getStartrow()+limit-1);//끝행 번호
            
            int totalCount=this.boardService.getQnaListCount(b);//총 레코드 개수
            
            //총페이지
            int maxpage=(int)((double)totalCount/limit+0.95);
            //현재 페이지에 보여질 시작페이지
            int startpage=(((int)((double)page/10+0.9))-1)*10+1;
            //현재 페이지에 보여질 마지막 페이지
            int endpage=maxpage;
            if(endpage>startpage+10-1) endpage=startpage+10-1;
            
            List<BoardVO> blist=null;
            List<NoticeVO> nlist=this.noticeService.getNoticePickList(n);
            
            if((sort==null)||(sort.equals("id"))) {
               blist=this.boardService.getBoardQList(b);//목록보기
               sort="id";
            }else if(sort.equals("voteCount")) {
               blist=this.boardService.getBoardQListVote(b);//추천순으로 정렬
            }else if(sort.equals("noteCount")) {
               blist=this.boardService.getBoardQListNote(b);//댓글순으로 정렬
            }else if(sort.equals("scrapCount")) {
               blist=this.boardService.getBoardQListScrap(b);//스크랩순으로 정렬
            }else if(sort.equals("viewCount")) {
               blist=this.boardService.getBoardQListView(b);//조회순으로 정렬
            }
            
            listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
            listM.addAttribute("nlist", nlist);
            listM.addAttribute("totalCount",totalCount);
            listM.addAttribute("startpage",startpage);
            listM.addAttribute("endpage",endpage);
            listM.addAttribute("maxpage",maxpage);
            listM.addAttribute("page",page);
            listM.addAttribute("find_field", find_field);//검색필드
            listM.addAttribute("find_name",find_name);//검색어
            listM.addAttribute("blank_find_name",blank_find_name);//공백 포함 검색어
            listM.addAttribute("sort",sort);//정렬
          if(login!=null) {
             MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
             listM.addAttribute("m", m);
             }
            
            return "board/b_questions";
         }//b_questions
      
      //글쓰기
      @GetMapping("/b_create")//get으로 접근하는 매핑주소 처리 스프링 4.3에서 추가, bbs_write라는 매핑주소 등록
      public ModelAndView b_create(HttpServletResponse response,HttpServletRequest request, HttpSession session) 
      throws Exception{
    	 response.setContentType("text/html;charset=UTF-8");
    	 PrintWriter out=response.getWriter();
         String login=(String)session.getAttribute("id");
         
         if(login==null) {
        	 out.println("<script>");
             out.println("alert('로그인이 필요합니다.');");
             out.println("location='login';");
             out.println("</script>");
         }else if(login !=null) {
         MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
         
         int page=1;
         if(request.getParameter("page")!=null) {
            page=Integer.parseInt(request.getParameter("page"));//쪽번호를 정수 숫자로 변경해서 저장시킴.
         }
         ModelAndView bc=new ModelAndView();
         bc.addObject("page",page);//page 속성 키이름에 페이지 번호 저장 ->페이징에서 책갈피 기능 구현 목적
         bc.addObject("m", m);
         bc.setViewName("board/b_create"); // 뷰 리졸브 경로 > /WEB-INF/views/bbs/bbs_write.jsp
         
         return bc;
         }
         return null;
      }//bbs_write()
      
      //게시판 저장
      @RequestMapping(value="/b_create_ok",method=RequestMethod.POST)
      public String b_create_ok(BoardVO b,HttpServletRequest request, HttpServletResponse response, 
            HttpSession session)throws Exception{
    	 response.setContentType("text/html;charset=UTF-8");
         PrintWriter out=response.getWriter();
         
         String login=(String)session.getAttribute("id");
         
         if(login == null) {
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("location='login';");
            out.println("</script>");
         }else {
        	
            b.setMem_id(login);
            this.boardService.insertBoard(b);//게시판 저장
             
               if(b.getB_cate().equals("커뮤니티")) {
               return    "redirect:/b_community";
               }else {
                  return "redirect:/b_questions";
               }
         }        
         return null;
      }//b_create_ok
      
      @RequestMapping("/b_edit_ok")//get or post로 접근하는 매핑주소를 처리
      public String b_edit_ok(@ModelAttribute BoardVO eb,HttpServletResponse response,
      HttpServletRequest request,HttpSession session) throws Exception{
         response.setContentType("text/html;charset=UTF-8");
         //웹브라우저로 출력되는 파일형태와 언어코딩 타입을 설정
         
         PrintWriter out=response.getWriter();
         
         String login=(String)session.getAttribute("id");
         
         int page=1;
         if(request.getParameter("page") != null) {
            page=Integer.parseInt(request.getParameter("page"));         
         }
         
         if(login == null) {
            out.println("<script>");
            out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요!');");
            out.println("location='login';");
            out.println("</script>");
         }else {
            this.boardService.editBoard(eb);//게시물 수정            
            return    "redirect:/b_cont?b_no="+eb.getB_no()+"&page="+page+"&state=cont";//?뒤에 3개의 인자값이 get방식으로
         }
         
         return null;
      }//b_edit
      
      @RequestMapping("/b_cont")//get or post로 접근하는 매핑주소를 처리
      public ModelAndView b_cont(@RequestParam("b_no") int b_no,int page,String state,@ModelAttribute BoardVO b,
            HttpServletResponse response,HttpSession session) {
         //@RequestParam("bno")는 request.getParameter("bno")와 같다.즉 bno피라미터이름에 담겨져서 전달된 번호값을 구함. int page도 get으로 전달된 페이지번호를
         //구함
         response.setContentType("text/html;charset=UTF-8");
         String login=(String)session.getAttribute("id");//세션 가져오기
         
         
         if(state.equals("cont")) {//게시판 목록 제목에서 클릭한 내용보기일때만 조회수 증가
        	 b=this.boardService.getBoardCont(b_no);//번호에 해당하는 레코드값을 가져오고,조회수 증가
         }else {//게시판 목록 제목에서 클릭한 내용보기가 아닌경우는 조회수 증가 안됨
        	 b=this.boardService.getBoardCont2(b_no);   
         }
         
         ModelAndView cm=new ModelAndView();
         cm.addObject("b",b);//b키이름에 b객체를 저장
         cm.addObject("page",page);//책갈피 기능을 구현하기 위해서 쪽번호를 저장
         if(login!=null) {
         MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
         cm.addObject("m", m);         
         }
         
         if(state.equals("cont")) {
            cm.setViewName("board/b_cont");// /WEB-INF/views/board/b_cont.jsp
         }else if(state.contentEquals("reply")){//관리자 답변폼
            cm.setViewName("board/b_reply");
         }else if(state.contentEquals("edit")){//수정폼
            cm.setViewName("board/b_edit");
         }
         
         return cm;
      }//b_cont
      
      @RequestMapping("/b_reply_ok")
      public String b_reply_ok(@ModelAttribute BoardVO rb,HttpServletRequest request,
            HttpServletResponse response, HttpSession session) throws Exception{
         PrintWriter out=response.getWriter();
         /* @ModelAttribute BoardVO rb라고 하면 네임피라미터 이름과
          * 빈클래스 변수명이 일치하면 rb객체에 값이 저장되어져 있다.       
          */
         String login=(String)session.getAttribute("id");//세션 가져오기
         
         int page=1;
         if(request.getParameter("page") != null) {
            page=Integer.parseInt(request.getParameter("page"));         
         }
         
         
         if(login == null) {
            out.println("<script>");
            out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요!');");
            out.println("location='login';");
            out.println("</script>");
         }else {
            rb.setMem_id(login);
            this.boardService.replyBoard(rb);//답변저장+레벨증가            
             if(rb.getB_cate().equals("커뮤니티")) {
                  return "redirect:/b_community";
              }else {
                  return "redirect:/b_questions";
              }
         }
         return null;
      }
      
      @RequestMapping("/b_del_ok")//get or post로 접근하는 매핑주소를 처리
      public String b_del_ok(int b_no,HttpServletResponse response,
      HttpServletRequest request, HttpSession session) throws Exception {
         response.setContentType("text/html;charset=UTF-8");
         //웹브라우저로 출력되는 파일형태와 언어코딩 타입을 설정
         PrintWriter out=response.getWriter();
         
         String login=(String)session.getAttribute("id");//세션 가져오기
         
         int page=1;
         if(request.getParameter("page") != null) {
            page=Integer.parseInt(request.getParameter("page"));         
         }
         
         if(login == null) {
            out.println("<script>");
            out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요!');");
            out.println("location='login';");
            out.println("</script>");
         }else {
            this.boardService.delBoard(b_no);//게시물 삭제
            return "redirect:/b_community?page="+page;
         }
         return null;
         
      }//b_del_ok
      
      @RequestMapping("/b_tag")//get or post로 접근하는 매핑주소를 처리
        public String b_tag(Model listM, HttpServletRequest request, BoardVO b ,String sort,String tag,HttpSession session) {
                     
         String login=(String)session.getAttribute("id");//세션 가져오기
         
           /* 페이징 관련 소스 추가 */
           int page=1;//현재 페이지 번호
           int limit=10;//한페이지에 보여지는 목록 개수
           
           if(request.getParameter("page") != null) {//get으로 전달된 쪽번호가 있는 경우 실행
              page=Integer.parseInt(request.getParameter("page"));//페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
           }
           //태그기능
           String find_tag=tag;
           b.setFind_tag(find_tag);
           
           //검색기능
           String find_field = request.getParameter("find_field");//검색 필드
           String find_name = request.getParameter("find_name");//검색어
           b.setFind_field(find_field);
           
           b.setFind_name("%"+find_name+"%");//%는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.       
           
           String blank_find_name=b.getFind_name().replace("%", "").replace(" ", "+");
           
           b.setStartrow((page-1)*10+1);//시작행 번호 1, 11 ,21 
           b.setEndrow(b.getStartrow()+limit-1);//끝행 번호
           
           int totalCount=this.boardService.getTagListCount(b);//총 레코드 개수
           
           //총페이지
           int maxpage=(int)((double)totalCount/limit+0.95);
           //현재 페이지에 보여질 시작페이지
           int startpage=(((int)((double)page/10+0.9))-1)*10+1;
           //현재 페이지에 보여질 마지막 페이지
           int endpage=maxpage;
           if(endpage>startpage+10-1) endpage=startpage+10-1;
           
           List<BoardVO> blist=null;
           
           if((sort==null)||(sort.equals("id"))) {
              blist=this.boardService.getTagList(b);//목록보기
              sort="id";
           }else if(sort.equals("voteCount")) {
              blist=this.boardService.getTagListVote(b);//추천순으로 정렬
           }else if(sort.equals("noteCount")) {
              blist=this.boardService.getTagListNote(b);//댓글순으로 정렬
           }else if(sort.equals("scrapCount")) {
              blist=this.boardService.getTagListScrap(b);//스크랩순으로 정렬
           }else if(sort.equals("viewCount")) {
              blist=this.boardService.getTagListView(b);//조회순으로 정렬
           }
           
           listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
           listM.addAttribute("totalCount",totalCount);
           listM.addAttribute("startpage",startpage);
           listM.addAttribute("endpage",endpage);
           listM.addAttribute("maxpage",maxpage);
           listM.addAttribute("page",page);
           listM.addAttribute("find_field", find_field);//검색필드
           listM.addAttribute("find_name",find_name);//검색어
           listM.addAttribute("blank_find_name",blank_find_name);//공백 포함 검색어
           listM.addAttribute("sort",sort);//정렬
           listM.addAttribute("find_tag",find_tag);//정렬
           if(login!=null) {
           MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
           listM.addAttribute("m", m);}
           
           return "board/b_tag";
        }//b_tag
      
      @RequestMapping("/b_my")//get or post로 접근하는 매핑주소를 처리
      public String b_my(Model listM, HttpServletRequest request, HttpSession session, BoardVO b, String mem_id) {
       
         String login=(String)session.getAttribute("id");//세션 가져오기
         /* 페이징 관련 소스 추가 */
         int page=1;//현재 페이지 번호
         int limit=10;//한페이지에 보여지는 목록 개수

         if(request.getParameter("page") != null) {//get으로 전달된 쪽번호가 있는 경우 실행
            page=Integer.parseInt(request.getParameter("page"));//페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
         }
         b.setStartrow((page-1)*10+1);//시작행 번호 1, 11 ,21 
         b.setEndrow(b.getStartrow()+limit-1);//끝행 번호
         int totalCount=this.boardService.getMyBCount(b);//게시글 개수
//         int totalRCount=this.boardService.getMyRCount(b);//댓글 개수
//         int totalCount=totalBCount+totalRCount; //게시글 + 댓글
         //총페이지
         int maxpage=(int)((double)totalCount/limit+0.95);
         //현재 페이지에 보여질 시작페이지
         int startpage=(((int)((double)page/10+0.9))-1)*10+1;
         //현재 페이지에 보여질 마지막 페이지
         int endpage=maxpage;
         if(endpage>startpage+10-1) endpage=startpage+10-1;

         List<BoardVO> blist=null;

         blist=this.boardService.getMyList(b);//목록보기
         //int mem_point=this.boardService.getMemPoint(mem_id);//mem_id를 통해서 mem_point를 불러옴
         MemberVO mlist=this.memberService.getMember(mem_id);
         
         listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
         listM.addAttribute("mlist",mlist);
         listM.addAttribute("totalCount",totalCount);
         listM.addAttribute("startpage",startpage);
         listM.addAttribute("endpage",endpage);
         listM.addAttribute("maxpage",maxpage);
         listM.addAttribute("page",page);
         
         if(login!=null) {
          MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
          listM.addAttribute("m", m);
          }

         return "board/b_my";
      }
      
      @RequestMapping(value="/recommend_plus/{b_no}",method=RequestMethod.POST)//게시물 추천  좋아요!
      public ResponseEntity<String> recommend_plus (@PathVariable("b_no")int b_no,HttpSession session){         

         String login=(String)session.getAttribute("id");//세션으로부터 로그인 된 아이디 가져옴
         BoardVO rcm = new BoardVO(); //보드보 타입의 rcm객체 생성
         rcm.setB_no(b_no); //rcm객체에 b_no를 현재 게시글로 지정
         rcm.setMem_id(login);//rcm객체에 mem_id를 로그인된 아이디로 지정
         
         ResponseEntity<String> entity=null;
         try {
           List<String> mem_id=this.boardService.getMemId(b_no);//b_no에 추천을 누른 아이디 값들을 불러옴
           if(!mem_id.contains(login)) {//아이디 값 리스트 중에서 로그인 된 아이디가 포함되어 있나 확인함.
            this.boardService.b_recommendp(rcm);//추천 테이블에 아이디와 게시글번호 등록
            this.boardService.setRecCount(rcm);//추천수 업데이트
            
            
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);

           }
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
            //예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
         }
         
         return entity;
      }
      
//      @RequestMapping(value="/recommend_minus/{b_no}",method=RequestMethod.POST)//게시물 반대
//      public ResponseEntity<String> recommend_minus (@PathVariable("b_no") int b_no) {
//      
//         ResponseEntity<String> entity=null;
//         try {
//            
//            this.boardService.b_recommendm(b_no);
//            
//            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
//            // 저장 성공시 SUCCESS문자가 반환되고 200정상상태 코드가 반환
//         }catch(Exception e) {
//            e.printStackTrace();
//            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
//            //예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
//         }
//         
//         return entity;
//      }
      
      //댓글 
      
      //게시물 번호에 해당하는 댓글 목록
      @RequestMapping(value="all/{b_no}",produces="application/json")
      public ResponseEntity<List<BoardVO>> list(@PathVariable("b_no") int b_no){
         //@PathVariable("b_no")는 매핑주소의 게시물 번호값을 추출하는 용도
         
         ResponseEntity<List<BoardVO>> entity=null;
         
         try {
            entity=new ResponseEntity<>(this.boardService.listReply(b_no),HttpStatus.OK);
            //게시물 번호에 해당하는 댓글 목록을 가져옴.
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
         }
         
         return entity;
      }//list()
      
      //댓글등록
      //@PostMapping //post로 접근하는 매핑주소를 처리
      @RequestMapping(value="replies",method=RequestMethod.POST)//post로 접근하는 매핑주소를 처리
      public ResponseEntity<String> register(@RequestBody BoardVO vo){
         //@RequestBody ReplyVO vo는 전송된 JSON 데이터를 ReplyVO 객체 타입으로 변환해준다.
         //데이터 전송방식은 JSON을 이용한다.
         ResponseEntity<String> entity=null;
         
         try {
            this.boardService.addReply(vo);//댓글 추가
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
            //댓글 저장 성공시 SUCCESS문자가 반환되고 200정상상태 코드가 반환
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
            //예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
         }
         return entity;
      }//register()
      
      //댓글 수정
      @RequestMapping(value="replies/{r_no}", method= {RequestMethod.PUT, RequestMethod.PATCH})
      //PUT은 전체자료를 수정, PATCH는 일부 자료만 수정
      public ResponseEntity<String> update(@PathVariable("r_no") int r_no, @RequestBody BoardVO vo){
         ResponseEntity<String> entity=null;
         try {
            vo.setR_no(r_no);//댓글 번호를 저장
            boardService.updateReply(vo);//댓글 수정, this.이 생략됨
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
         }
         return entity;
      }//update()
      
      //댓글 삭제
      @RequestMapping(value="replies/{r_no}", method=RequestMethod.DELETE)// "/"생략 가능
      public ResponseEntity<String> remove(@PathVariable("r_no") int r_no){
         ResponseEntity<String> entity=null;
         
         try {
            this.boardService.remove(r_no);//댓글삭제
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
         }catch(Exception e) {
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
         }
         return entity;
      }//remove()
      
      @RequestMapping(value="/recommend_plus_r/{r_no}",method=RequestMethod.POST)//댓글 추천 
      public ResponseEntity<String> recommend_plus_r (@PathVariable("r_no") int r_no) {

         ResponseEntity<String> entity=null;
         try {
            
            this.boardService.r_recommendp(r_no);
            
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
            // 저장 성공시 SUCCESS문자가 반환되고 200정상상태 코드가 반환
            
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
            //예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
         }
         
         return entity;
      }
      
      @RequestMapping(value="/recommend_minus_r/{r_no}",method=RequestMethod.POST)//댓글 반대
      public ResponseEntity<String> recommend_minus_r (@PathVariable("r_no") int r_no) {
      
         ResponseEntity<String> entity=null;
         try {
            
            this.boardService.r_recommendm(r_no);
            
            entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
            // 저장 성공시 SUCCESS문자가 반환되고 200정상상태 코드가 반환
         }catch(Exception e) {
            e.printStackTrace();
            entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
            //예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
         }
         
         return entity;
      }
}