package com.ywhy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	/*의존성 추가해주기*/
	
	/*시작페이지 로그인 전*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main() {
		return new ModelAndView("index"); //뷰페이지 경로가 /WEB-INF/views/ywhy_loginbefore_index.jsp
	}
	
	/*footer의 About 로그인 전*/
	@GetMapping("/intro_about")
	public ModelAndView about() {
		return new ModelAndView("intro/about"); //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	
	/*로그인 후 사용자 계정*/
	@GetMapping("/login_user")
	public ModelAndView login_user() {
		return new ModelAndView("login_user"); //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	/*footer의 About 로그인 후 사용자*/
	@GetMapping("/intro_user_about")
	public ModelAndView u_about() {
		return new ModelAndView("intro/user_about"); //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	
	/*로그인 후 관리자 계정*/
	@GetMapping("/login_manager")
	public ModelAndView login_manager() {
		return new ModelAndView("login_manager"); //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	/*footer의 About 로그인 후 관리자*/
	@GetMapping("/intro_manager_about")
	public ModelAndView m_about() {
		return new ModelAndView("intro/manager_about"); //뷰페이지 경로가 /WEB-INF/views/intro/loginbefore_about.jsp
	}
	
	
	/*footer의 개인정보보호*/
	@GetMapping("/user_privacy")
	public ModelAndView privacy() {
		return new ModelAndView("user/privacy"); //뷰페이지 경로가 /WEB-INF/views/user/privacy.jsp
	}
	
	

}
