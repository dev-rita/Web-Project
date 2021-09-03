package com.ywhy.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.ywhy.service.BoardService;
import com.ywhy.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	//자료실 목록
		@RequestMapping("/b_community")//get or post로 접근하는 매핑주소를 처리
		public String community(Model listM, HttpServletRequest request, BoardVO b) {
			
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
			
			List<BoardVO> blist=this.boardService.getBoardList(b);//목록 보기
			
			//총페이지
			int maxpage=(int)((double)totalCount/limit+0.95);
			//현재 페이지에 보여질 시작페이지
			int startpage=(((int)((double)page/10+0.9))-1)*10+1;
			//현재 페이지에 보여질 마지막 페이지
			int endpage=maxpage;
			if(endpage>startpage+10-1) endpage=startpage+10-1;
			
			listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
			listM.addAttribute("totalCount",totalCount);
			listM.addAttribute("startpage",startpage);
			listM.addAttribute("endpage",endpage);
			listM.addAttribute("maxpage",maxpage);
			listM.addAttribute("page",page);
			listM.addAttribute("find_field", find_field);//검색필드
			listM.addAttribute("find_name",find_name);//검색어
			listM.addAttribute("blank_find_name",blank_find_name);//공백 포함 검색어
			return "board/b_community";
		}//b_community
		
		
		@RequestMapping("/b_questions")//get or post로 접근하는 매핑주소를 처리
		public String questions(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/b_questions";
		}//b_questions
		
		//글쓰기
		@GetMapping("/b_create")//get으로 접근하는 매핑주소 처리 스프링 4.3에서 추가, bbs_write라는 매핑주소 등록
		public ModelAndView b_create(HttpServletRequest request) {
			int page=1;
			if(request.getParameter("page")!=null) {
				page=Integer.parseInt(request.getParameter("page"));//쪽번호를 정수 숫자로 변경해서 저장시킴.
			}
			ModelAndView bc=new ModelAndView();
			bc.addObject("page",page);//page 속성 키이름에 페이지 번호 저장 ->페이징에서 책갈피 기능 구현 목적
			bc.setViewName("board/b_create"); // 뷰 리졸브 경로 > /WEB-INF/views/bbs/bbs_write.jsp
			
			return bc;
		}//bbs_write()
		
		//자료실 저장
		@PostMapping("/b_create_ok")//post로 접근하는 매핑주소 처리
		public String bbs_write_ok(BoardVO b,HttpServletRequest request)throws Exception{
			String saveFolder=request.getRealPath("resources/upload");//톰캣에 인식하는 실제 이진 파일 업로드 서버 경로
			int fileSize=5*1024*1024;//이진파일 최대크기
			MultipartRequest multi=null;//이진파일을 받을 변수 선언
			
			multi=new MultipartRequest(request, saveFolder,fileSize,"UTF-8");
			
			String b_name=multi.getParameter("b_name");
			//String admin_id=(String)session.getAttribute("admin_id");로 아이디 받아서 저장시켜야 하는지 의문?
			String b_title=multi.getParameter("b_title");
			String b_pwd=multi.getParameter("b_pwd");
			String b_cont=multi.getParameter("b_cont");
			
			File upFile=multi.getFile("b_file");//첨부한 이진파일을 가져옴.
			
			if(upFile != null) {//첨부한 이진파일이 있는 경우
				String fileName=upFile.getName();//첨부한 파일명을 구함.
				Calendar c=Calendar.getInstance();//추상클래스로 new로 객체생성 못함.
				int year=c.get(Calendar.YEAR);//년도값
				int month=c.get(Calendar.MONTH)+1;//월값, +1을 한 이유는 1월이 0으로 반환되기 때문
				int date=c.get(Calendar.DATE);
				
				String homedir=saveFolder+"/"+year+"-"+month+"-"+date;//오늘날짜 폴더경로를 저장
				File path01=new File(homedir);
				
				if(!(path01.exists())) {//폴더경로가 존재하지 않는다면
					path01.mkdir();//폴더 생성
				}
				Random r=new Random();
				int random=r.nextInt(100000000);//0이상 1억 미만 사이의 정수숫자 난수 발생
				
				/*첨부파일 확장자*/
				int index=fileName.lastIndexOf(".");//.의 위치 번호를 구함
				String fileExtendsion=fileName.substring(index+1);//.이후 부터 마지막 문자 까지 구함. 즉 첨부파일 확장자를 구함.
				String refileName="b"+year+month+date+random+"."+fileExtendsion;//새로운 이진파일명
				String fileDBName="/"+year+"-"+month+"-"+date+"/"+refileName;//오라클에 저장할 레코드값
				upFile.renameTo(new File(homedir+"/"+refileName));//실제 업로드
				b.setB_file(fileDBName);
			}else {
				String fileDBName="";
				b.setB_file(fileDBName);
			}
			
			b.setB_name(b_name); b.setB_title(b_title); b.setB_pwd(b_pwd); b.setB_cont(b_cont);
			
			this.boardService.insertBoard(b);//자료실 저장
			return "redirect:/b_community";//목록보기로 이동
		}//b_create_ok
		
		@RequestMapping("/b_edit")//get or post로 접근하는 매핑주소를 처리
		public String b_edit(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/b_edit";
		}//b_edit
		
		@RequestMapping("/b_cont")//get or post로 접근하는 매핑주소를 처리
		public String b_cont(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/b_cont";
		}//b_cont
		
		@RequestMapping("/b_my")//get or post로 접근하는 매핑주소를 처리
		public String myboard(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/b_my";
		}//b_my
		
		@RequestMapping("/b_tag")//get or post로 접근하는 매핑주소를 처리
		public String tag(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/tagged/b_tag";
		}//b_tag
}
