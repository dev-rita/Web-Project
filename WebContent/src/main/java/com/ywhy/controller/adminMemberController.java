package com.ywhy.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ywhy.service.AdminMemberService;
import com.ywhy.vo.MemberVO;

@Controller
public class adminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;
	
	/*관리자 페이지 폼*/
	@GetMapping("/admin")
	public ModelAndView admin(HttpServletResponse response,HttpSession session,@ModelAttribute MemberVO m)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			int listcount=this.adminMemberService.getListCount(m);
			//관리자 회원을 제외한 전체 회원 수
			
			ModelAndView listM=new ModelAndView();
			listM.addObject("listcount",listcount);
			
			listM.setViewName("admin/manager");
			
			return listM;
		}
		return null;
	}
	
	/*관리자 회원 목록*/
	@GetMapping("/admin_usermanagement")
	public ModelAndView admin_usermanagement(HttpServletResponse response,HttpServletRequest request,HttpSession session,@ModelAttribute MemberVO m) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요!');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			int page=1;//쪽번호
			int limit=10;//한 페이지에 보여지는 목록 개수
			if(request.getParameter("page") != null) {
				page=Integer.parseInt(request.getParameter("page"));
			}
			
			String find_name=request.getParameter("find_name");//검색어
			String find_field=request.getParameter("find_field");//검색필드
			
			m.setFind_field(find_field);
			m.setFind_name("%"+find_name+"%");
			//%는 쿼리문 검색기능에서 하나이상의 임의의 모르는 문자와 매핑 대응한다.	
			
			int allListcount=this.adminMemberService.getAllListCount(m);//검색 전후 모든 회원 수
			
			m.setStartrow((page-1)*10+1);//시작 행 번호
			m.setEndrow(m.getStartrow()+limit-1);//끝행번호
			
			List<MemberVO> blist=this.adminMemberService.getMemberList(m);//검색 전후 회원 목록
			
			int maxpage=(int)((double)allListcount/limit+0.95);//총페이지수
			int startpage=(((int)((double)page/10+0.9))-1)*10+1;//현재 페이지에 보여줄 마지막 페이지 수(10,20,30)
			int endpage=maxpage;
			if(endpage > startpage+10-1) endpage=startpage+10-1;
			
			ModelAndView listM=new ModelAndView();
			
			listM.addObject("blist", blist);
			listM.addObject("page",page);
			listM.addObject("startpage",startpage);
			listM.addObject("endpage",endpage);
			listM.addObject("maxpage",maxpage);
			listM.addObject("allListcount",allListcount);   
			listM.addObject("find_field",find_field);
			listM.addObject("find_name", find_name);
			
			listM.setViewName("admin/usermanagement");
			return listM;
		}
		return null;
	}
	
	/*회원 탈퇴*/
	@RequestMapping("/admin_member_del")
	public ModelAndView admin_member_del(int page,String mem_id,HttpServletResponse response,HttpSession session) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요!');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			this.adminMemberService.delMember(mem_id);
			
			return new ModelAndView("redirect:/admin_usermanagement").addObject("page",page);
		}
		return null;
	}
	
	/*관리자 전환*/
	/*일반사용자 전환*/
}
