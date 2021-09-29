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
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

@Controller
public class AdminNoticeController {

	@Autowired
	private AdminNoticeService adminNoticeService;

	@RequestMapping("/a_notice") // get or post로 접근하는 매핑주소를 처리
	public String a_notice(Model listM, HttpServletRequest request, NoticeVO b) {

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
		return "admin/adminNotice";
	}

	@GetMapping("/n_create") // get으로 접근하는 매핑주소 처리 스프링 4.3에서 추가, bbs_write라는 매핑주소 등록
	public ModelAndView n_create(HttpServletRequest request) {
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));// 쪽번호를 정수 숫자로 변경해서 저장시킴.
		}
		ModelAndView bc = new ModelAndView();
		bc.addObject("page", page);// page 속성 키이름에 페이지 번호 저장 ->페이징에서 책갈피 기능 구현 목적
		bc.setViewName("admin/n_create"); // 뷰 리졸브 경로 > /WEB-INF/views/bbs/bbs_write.jsp

		return bc;
	}// bbs_write()

	@PostMapping("/n_create_ok") // post로 접근하는 매핑주소 처리
	public String n_create_ok(NoticeVO b, HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		PrintWriter out = response.getWriter();

		MemberVO m = (MemberVO) session.getAttribute("m");

		String saveFolder = request.getRealPath("resources/upload");// 톰캣에 인식하는 실제 이진 파일 업로드 서버 경로
		int fileSize = 5 * 1024 * 1024;// 이진파일 최대크기
		MultipartRequest multi = null;// 이진파일을 받을 변수 선언

		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");

		String n_name = multi.getParameter("n_name");
		// String admin_id=(String)session.getAttribute("admin_id");로 아이디 받아서 저장시켜야 하는지
		// 의문?
		String n_title = multi.getParameter("n_title");
		String n_cont = multi.getParameter("n_cont");
		String n_cate = multi.getParameter("n_cate");
		String n_tag = multi.getParameter("n_tag");

		b.setN_name(n_name);
		b.setN_title(n_title);
		b.setN_cont(n_cont);
		b.setN_cate(n_cate);
		b.setN_tag(n_tag);

		if (m == null) {
			out.println("<script>");
			out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요.');");
			out.println("location='login';");
			out.println("</script>");
		} else {

			this.adminNoticeService.insertNotice(b);// 자료실 저장

			return "redirect:/a_notice";

		}

		return null;
	}

	 @RequestMapping("/n_cont")//get or post로 접근하는 매핑주소를 처리
		public ModelAndView a_cont(int n_no, int page, String state, HttpServletResponse response, 
				HttpSession session) throws Exception{
			
			response.setContentType("text/html;charset=UTF-8");
			
			NoticeVO b=this.adminNoticeService.getAdminNoticeCont(n_no);
			
			ModelAndView cm=new ModelAndView();
			cm.addObject("b",b);//b키이름에 b객체를 저장
			cm.addObject("page",page);//책갈피 기능을 구현하기 위해서 쪽번호를 저장
			
			if(state.equals("cont")) {
				cm.setViewName("admin/n_cont");
			}else if(state.contentEquals("edit")){//수정폼
				cm.setViewName("admin/n_edit");
			}
			
			return cm;
		}//n_cont
	   
	 @RequestMapping("/n_edit_ok")//get or post로 접근하는 매핑주소를 처리
	   public String n_edit_ok(@ModelAttribute NoticeVO eb,HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
	      response.setContentType("text/html;charset=UTF-8");
	      
	      PrintWriter out=response.getWriter();
	      
	      MemberVO m=(MemberVO)session.getAttribute("m");
	      
	      int page=1;
	      if(request.getParameter("page") != null) {
	         page=Integer.parseInt(request.getParameter("page"));         
	      }
	      
	      /*if(m == null) {
	         out.println("<script>");
	         out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요.');");
	         out.println("location='login';");
	         out.println("</script>");
	      }else {*/
	         this.adminNoticeService.editAdminNotice(eb);//게시물 수정            
	         return    "redirect:/n_cont?n_no="+eb.getN_no()+"&page="+page+"&state=cont";//?뒤에 3개의 인자값이 get방식으로
	   /*   }
	      
	      return null;*/
	   }//b_edit
	   
	   
	   @RequestMapping(value="/delete_notice")
	     public String ajaxDelete_notice(HttpServletRequest request) throws Exception{
	      
	     String[] ajaxMsg=request.getParameterValues("valueArr");
	     int size=ajaxMsg.length;
	     for(int i=0; i<size ;i++) {
	        this.adminNoticeService.deleteAdminNotice(ajaxMsg[i]);
	     }
	     return "redirect:/a_notice";
	     
	  }
}
