package com.ywhy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ywhy.service.NoticeService;
import com.ywhy.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	//공지 목록
	@RequestMapping("/b_notice")//get or post로 접근하는 매핑주소를 처리
	public String b_notice(Model listM, HttpServletRequest request, NoticeVO n ,String sort) {
		
		
		/* 페이징 관련 소스 추가 */
		int page=1;//현재 페이지 번호
		int limit=10;//한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {//get으로 전달된 쪽번호가 있는 경우 실행
			page=Integer.parseInt(request.getParameter("page"));//페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
		}
		
		//검색기능
		String find_field = request.getParameter("find_field");//검색 필드
		String find_name = request.getParameter("find_name");//검색어
		n.setFind_field(find_field);
		
		n.setFind_name("%"+find_name+"%");//%는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.
		
		String blank_find_name=n.getFind_name().replace("%", "").replace(" ", "+");
		
		n.setStartrow((page-1)*10+1);//시작행 번호 1, 11 ,21 
		n.setEndrow(n.getStartrow()+limit-1);//끝행 번호
		
		int totalCount=this.noticeService.getNoticeListCount(n);//총 레코드 개수
		
		
		//총페이지
		int maxpage=(int)((double)totalCount/limit+0.95);
		//현재 페이지에 보여질 시작페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//현재 페이지에 보여질 마지막 페이지
		int endpage=maxpage;
		if(endpage>startpage+10-1) endpage=startpage+10-1;
		
		List<NoticeVO> nlist=null;
		
		if((sort==null)||(sort.equals("id"))) {
			nlist=this.noticeService.getNoticeList(n);//목록보기
			sort="id";
		}else if(sort.equals("voteCount")) {
			nlist=this.noticeService.getNoticeListVote(n);//추천순으로 정렬
		}else if(sort.equals("viewCount")) {
			nlist=this.noticeService.getNoticeListView(n);//조회순으로 정렬
		}
		
		listM.addAttribute("nlist", nlist);//nlist속성 키이름에 목록을 저장
		listM.addAttribute("totalCount",totalCount);
		listM.addAttribute("startpage",startpage);
		listM.addAttribute("endpage",endpage);
		listM.addAttribute("maxpage",maxpage);
		listM.addAttribute("page",page);
		listM.addAttribute("find_field", find_field);//검색필드
		listM.addAttribute("find_name",find_name);//검색어
		listM.addAttribute("blank_find_name",blank_find_name);//공백 포함 검색어
		listM.addAttribute("sort",sort);//정렬
		
		
		return "board/b_notice";
	}//b_notice
	
	@RequestMapping("/b_notice_cont")//get or post로 접근하는 매핑주소를 처리
	public ModelAndView b_notice_cont(@RequestParam("n_no") int n_no,int page,@ModelAttribute NoticeVO n,
			HttpServletResponse response) {
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		n=this.noticeService.getNoticeCont(n_no);//번호에 해당하는 레코드값을 가져오고,조회수 증가
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("n",n);//b키이름에 b객체를 저장
		cm.addObject("page",page);//책갈피 기능을 구현하기 위해서 쪽번호를 저장
		cm.setViewName("board/b_notice_cont");
		
		return cm;
	}//b_notice_cont
	
	@RequestMapping(value="/n_recommend_plus/{n_no}",method=RequestMethod.POST)//게시물 추천 
	public ResponseEntity<String> n_recommend_plus (@PathVariable("n_no") int n_no) {

		ResponseEntity<String> entity=null;
		try {
			
			this.noticeService.n_recommendp(n_no);
			
			entity=new ResponseEntity<>("SUCCESS",HttpStatus.OK);
			// 저장 성공시 SUCCESS문자가 반환되고 200정상상태 코드가 반환
			
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
			//예외 에러가 발생하면 예외 에러 메시지와 나쁜 상태 코드가 반환
		}
		
		return entity;
	}
	
	@RequestMapping(value="/n_recommend_minus/{n_no}",method=RequestMethod.POST)//게시물 반대
	public ResponseEntity<String> n_recommend_minus (@PathVariable("n_no") int n_no) {
	
		ResponseEntity<String> entity=null;
		try {
			
			this.noticeService.n_recommendm(n_no);
			
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
