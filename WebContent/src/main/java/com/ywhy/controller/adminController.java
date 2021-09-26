package com.ywhy.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.ywhy.service.MemberService;
import com.ywhy.vo.MemberVO;

@Controller
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	/*관리자 페이지 폼*/
	@GetMapping("/admin")
	public String admin(HttpServletResponse response,HttpSession session,@ModelAttribute MemberVO m)throws Exception {
		//response.setContentType("text/html;charset=utf-8");
		//PrintWriter out=response.getWriter();
		
		return "admin/manager";
	}
}
