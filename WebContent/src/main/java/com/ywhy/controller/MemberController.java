package com.ywhy.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ywhy.service.MemberService;
import com.ywhy.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	/*정보수정 페이지*/
	@GetMapping("/editinfo")
	public String editinfo(HttpServletResponse response,HttpSession session)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		MemberVO m=(MemberVO)session.getAttribute("m");
		
		if(m == null) {
			out.println("<script>");
			out.println("alert('세션이 만료되었습니다. 다시 로그인 하세요.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			return "signup/editinfo";
		}
		return null;
	}
}
