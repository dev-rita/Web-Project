package com.ywhy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	/*의존성 추가해주기*/
	
	/*시작페이지*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "index"; //뷰페이지 경로가 /WEB-INF/views/ywhy_loginbefore_index.jsp
	}
	
	/*footer의 About 로그인 전*/
	@GetMapping("/intro_about")
	public String about() {
		return "intro/about"; //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	/*footer의 개인정보보호*/
	@GetMapping("/user_privacy")
	public ModelAndView privacy() {
		return new ModelAndView("user/privacy"); //뷰페이지 경로가 /WEB-INF/views/user/privacy.jsp
	}
}
