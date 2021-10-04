package com.ywhy.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.ywhy.service.AdminNoticeService;
import com.ywhy.service.MemberService;
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

@Controller
public class AdminNoticeController {

	@Autowired
	private AdminNoticeService adminNoticeService;
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/a_notice") // get or post로 접근하는 매핑주소를 처리
	public String a_notice(HttpSession session,Model listM, HttpServletRequest request,
			HttpServletResponse response,NoticeVO b) throws Exception {
		 
		 response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   String member="관리자";
		   String login=(String)session.getAttribute("id");//세션 가져오기
			
		   if(login == null) {
		  		out.println("<script>");
		  		out.println("alert('관리자 로그인이 필요합니다.');");
		  		out.println("location='login';");
		  		out.println("</script>");
		  		}else {
		  		  MemberVO id=this.memberService.getMember(login);
		  		  if(id.getMem_class().equals(member)) {
					/* 페이징 관련 소스 추가 */
					int page = 1;// 현재 페이지 번호
					int limit = 10;// 한페이지에 보여지는 목록 개수
					if (request.getParameter("page") != null) {// get으로 전달된 쪽번호가 있는 경우 실행
						page = Integer.parseInt(request.getParameter("page"));// 페이지 번호(쪽번호)를 정수 숫자로 변경해서 저장
					}
			
					b.setStartrow((page - 1) * 10 + 1);// 시작행 번호 1, 11 ,21
					b.setEndrow(b.getStartrow() + limit - 1);// 끝행 번호
			
					String find_field = request.getParameter("find_field");// 검색 필드
					String find_name = request.getParameter("find_name");// 검색어
					b.setFind_field(find_field);
					b.setFind_name("%" + find_name + "%");// %는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.
					
					int totalCount = this.adminNoticeService.getNoticeListCount(b);// 총 레코드 개수
			
					int maxpage = (int) ((double) totalCount / limit + 0.95); // 현재 페이지에 보여질 시작페이지
					int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1; // 현재 페이지에 보여질 마지막 페이지
					int endpage = maxpage;
					if (endpage > startpage + 10 - 1)
						endpage = startpage + 10 - 1;
			
					List<NoticeVO> blist = null;
			
					blist = this.adminNoticeService.getNoticeList(b);// 목록보기
					listM.addAttribute("blist", blist);// blist속성 키이름에 목록을 저장
					listM.addAttribute("totalCount", totalCount);
					listM.addAttribute("startpage", startpage);
					listM.addAttribute("endpage", endpage);
					listM.addAttribute("maxpage", maxpage);
					listM.addAttribute("page", page);
					listM.addAttribute("page", page);
					listM.addAttribute("find_field", find_field);// 검색필드
					listM.addAttribute("find_name", find_name);// 검색어
					listM.addAttribute("m",id);
					return "admin/adminNotice";
		  		  }else {
					  out.println("<script>");
					  out.println("alert('접근 권한이 없습니다.');");
					  out.println("location='/controller';");
					  out.println("</script>");
				  }
		  		}
			return null;
	}

	@GetMapping("/n_create") // get으로 접근하는 매핑주소 처리 스프링 4.3에서 추가, bbs_write라는 매핑주소 등록
	public ModelAndView n_create(HttpSession session,HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out=response.getWriter();
		 String member="관리자";
		 String login=(String)session.getAttribute("id");//세션 가져오기
			
		 if(login == null) {
		  	out.println("<script>");
		  	out.println("alert('관리자 로그인이 필요합니다.');");
		  	out.println("location='login';");
		  	out.println("</script>");
		  }else {
		  		 MemberVO id=this.memberService.getMember(login);
		  		 if(id.getMem_class().equals(member)) {		
		  			int page = 1;
		  	
					if (request.getParameter("page") != null) {
						page = Integer.parseInt(request.getParameter("page"));// 쪽번호를 정수 숫자로 변경해서 저장시킴.
					}
					ModelAndView bc = new ModelAndView();
					bc.addObject("page", page);// page 속성 키이름에 페이지 번호 저장 ->페이징에서 책갈피 기능 구현 목적
					bc.addObject("m", id);
					bc.setViewName("admin/n_create"); // 뷰 리졸브 경로 > /WEB-INF/views/bbs/bbs_write.jsp
			
					return bc;
		  		 }else {
					  out.println("<script>");
					  out.println("alert('접근 권한이 없습니다.');");
					  out.println("location='/controller';");
					  out.println("</script>");
				  }
		  		}
			return null;
	}// bbs_write()

	@PostMapping("/n_create_ok") // post로 접근하는 매핑주소 처리
	public String n_create_ok(NoticeVO b, HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {		
		 response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out=response.getWriter();
		 String member="관리자";
		 String login=(String)session.getAttribute("id");//세션 가져오기
			
		 if(login == null) {
		  	out.println("<script>");
		  	out.println("alert('관리자 로그인이 필요합니다.');");
		  	out.println("location='login';");
		  	out.println("</script>");
		  }else {
		  		 MemberVO id=this.memberService.getMember(login);
		  		 if(id.getMem_class().equals(member)) {		
		  			 b.setMem_id(login);
					this.adminNoticeService.insertNotice(b);// 자료실 저장
			
					return "redirect:/a_notice";
		  		 }else {
					  out.println("<script>");
					  out.println("alert('접근 권한이 없습니다.');");
					  out.println("location='/controller';");
					  out.println("</script>");
				  }
		  		}
			return null;
	}//n_create_ok

	 @RequestMapping("/n_cont")//get or post로 접근하는 매핑주소를 처리
		public ModelAndView a_cont(int n_no, int page, String state, HttpServletResponse response, 
				HttpSession session) throws Exception{
		 response.setContentType("text/html;charset=UTF-8");
			//웹브라우저로 출력되는 파일형태와 언어코딩 타입을 설정
			
			PrintWriter out=response.getWriter();
			String member="관리자";
			String login=(String)session.getAttribute("id");//세션 가져오기
				
			if(login == null) {
			  out.println("<script>");
			  out.println("alert('관리자 로그인이 필요합니다.');");
			  out.println("location='login';");
			  out.println("</script>");
			 }else {
			  		 MemberVO id=this.memberService.getMember(login);
			  		 if(id.getMem_class().equals(member)) {
			
						NoticeVO b=this.adminNoticeService.getAdminNoticeCont(n_no);
						
						ModelAndView cm=new ModelAndView();
						cm.addObject("b",b);//b키이름에 b객체를 저장
						cm.addObject("m",id);
						cm.addObject("page",page);//책갈피 기능을 구현하기 위해서 쪽번호를 저장
						
						if(state.equals("cont")) {
							cm.setViewName("admin/n_cont");
						}else if(state.contentEquals("edit")){//수정폼
							cm.setViewName("admin/n_edit");
						}
						
						return cm;
			  		 }else {
						  out.println("<script>");
						  out.println("alert('접근 권한이 없습니다.');");
						  out.println("location='/controller';");
						  out.println("</script>");
					  }
			 }
			return null;
		}//n_cont
	   
	 @RequestMapping("/n_edit_ok")//get or post로 접근하는 매핑주소를 처리
	   public String n_edit_ok(@ModelAttribute NoticeVO eb,HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
	      response.setContentType("text/html;charset=UTF-8");
			//웹브라우저로 출력되는 파일형태와 언어코딩 타입을 설정
			
			PrintWriter out=response.getWriter();
			String member="관리자";
			String login=(String)session.getAttribute("id");//세션 가져오기
				
			if(login == null) {
			  out.println("<script>");
			  out.println("alert('관리자 로그인이 필요합니다.');");
			  out.println("location='login';");
			  out.println("</script>");
			 }else {
			  		 MemberVO id=this.memberService.getMember(login);
			  		 if(id.getMem_class().equals(member)) {
				      int page=1;
				      if(request.getParameter("page") != null) {
				         page=Integer.parseInt(request.getParameter("page"));         
				      }
				        
				      this.adminNoticeService.editAdminNotice(eb);//게시물 수정            
				      return "redirect:/n_cont?n_no="+eb.getN_no()+"&page="+page+"&state=cont";//?뒤에 3개의 인자값이 get방식으로
			  		 }else {
						  out.println("<script>");
						  out.println("alert('접근 권한이 없습니다.');");
						  out.println("location='/controller';");
						  out.println("</script>");
					  }
			 }
			return null;
	   }//n_edit_ok
	   
	   
	   @RequestMapping(value="/delete_notice")
	     public String ajaxDelete_notice(HttpServletRequest request) throws Exception{
	      
	     String[] ajaxMsg=request.getParameterValues("valueArr");
	     int size=ajaxMsg.length;
	     for(int i=0; i<size ;i++) {
	        this.adminNoticeService.deleteAdminNotice(ajaxMsg[i]);
	     }
	     return "redirect:/a_notice";
	     
	  }
	   
	   @RequestMapping(value="/pick_notice")
		public String ajaxPick(HttpServletRequest request) throws Exception{
		   
		  String[] ajaxMsg=request.getParameterValues("valueArr");	 
		  int size=ajaxMsg.length;
		  for(int i=0; i<size ;i++) {
			   	this.adminNoticeService.pickAdminNotice(ajaxMsg[i]);

		  }
		  return "redirect:/a_questions";
		  
	   }
}
