package com.ywhy.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ywhy.service.AdminService;
import com.ywhy.service.MailSendService;
import com.ywhy.service.MemberService;
import com.ywhy.vo.MemberVO;

import pwdconv.PwdChange;

@Controller
public class LoginController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendService mailSendService;
	
	/*로그인 폼 - 관리자,일반 사용자*/
	@GetMapping("/login")
	public String login() {
		return "signup/login";
	}

	/*회원가입 폼*/
	@GetMapping("/signup")
	public String signup() {
		return "signup/signup";
	}
	
	/*회원가입 약관 폼*/
	@GetMapping("/user_membershipTermsandConditions")
	public String user_membershipTermsandConditions() {
		return "/user/MembershipTermsandConditions";
	}
	
	/*회원가입 완료 후 메일 확인하라는 안내 페이지*/
	@GetMapping("/signup_complete")
	public String signup_complete(@ModelAttribute("m") MemberVO m) {
		return "signup/complete";
	}
	
	/*아이디 중복 체크*/
	@PostMapping("/mem_idcheck")
	public String member_idcheck(String id,HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		MemberVO db_id=this.memberService.idCheck(id);//db로부터 아이디 중복 검색
		
		int re=-1;//중복 아이디가 없을 때 반환된 값
		
		if(db_id != null) {//중복 아이디가 있는 경우
			re=1;
		}
		
		out.println(re);//값 반환
		
		return null;
	}
	
	/*일반 사용자 회원 저장*/
	@PostMapping("/signup_ok")
	public String signup_ok(MemberVO m,Model model,HttpServletRequest request) {
		//MemberVO 빈클래스의 변수명과 member_join.jsp의 네임 파라미터 이름이 동일하면 m에 입력한 회원정보가 저장된다.
	
		System.out.println("비밀번호 암호화 전: "+m.getMem_pwd());
		m.setMem_pwd(PwdChange.getPassWordToXEMD5String(m.getMem_pwd()));//비밀번호 암호화
		System.out.println("비밀번호 암호화 후: "+m.getMem_pwd());
		System.out.println("입력된 아이디: "+m.getMem_id());
		System.out.println("입력된 메일: "+m.getMem_mail());
		System.out.println("입력된 이름: "+m.getMem_name());
		System.out.println("입력된 닉네임: "+m.getMem_nick());
		//sqlException 1111 부적합한 열 유형 -> VO빈클래스의 변수명과 뷰페이지의 네임 파라미터가 같지 않아서 생긴 에러
		this.memberService.insertMember(m);//회원저장
		
		//임이의 authKey 생성 & 이메일 발송
		String authKey=this.mailSendService.sendAuthMail(m.getMem_mail(),request);
		m.setMem_key(authKey);//키 저장
		
		Map<String,String> map=new HashMap<>();
		map.put("id",m.getMem_id());
		map.put("key",m.getMem_key());
		System.out.println(map);
		
		//db에 authKey 업데이트 (회원을 먼저 저장 후 mem_key값이 null인 상태에서 저장해주는 것이기 때문에 update)
		this.memberService.updateAuthKey(map);
		
		model.addAttribute("mem_mail", m.getMem_mail());
		
		return "redirect:/signup_complete";

	}
	
	/*회원 이메일 인증 후 회원가입 최종 성공*/
	@GetMapping("/signup_confirm")
	public ModelAndView signup_confirm(@RequestParam Map<String,String> map,ModelAndView mav) {
		System.out.println(map);
		
		//email,key가 일치할 경우 mem_key 업데이트
		this.memberService.updatefinalKey(map);
		
		//mav.addObject("display","view/signup/confirm.jsp");
		mav.setViewName("signup/confirm");
		
		return mav;
	}
	
	/*관리자 생성 + 일반 사용자, 관리자 로그인 인증*/
	@RequestMapping("/login_ok")
	public String login_ok(/*AdminVO a,*/String login_id,String login_pwd,HttpSession session,HttpServletResponse response) throws Exception {
		//java.sql.SQLException: 부적합한 열 유형: 1111 - 매개변수와 뷰페이지의 네임 파라미터가 같지 않아서 생긴 에러
		response.setContentType("test/html;charset=utf-8");
		PrintWriter out= response.getWriter();
		
		MemberVO mem_pwd=this.memberService.loginCheck(login_id);
		//가입회원 1인 경우, 9인 경우 로그인 인증 처리
		//1은 일반사용자 / 9는 최고관리자가 지정한 관리자
		
//		a.setAdmin_pwd(PwdChange.getPassWordToXEMD5String(a.getAdmin_pwd()));//관리자 비밀번호 암호화
//		a.setAdmin_name("관리자");
//		a.setAdmin_nick("YWHY");//nullpointException
//		System.out.println("관리자 아이디: "+a.getAdmin_id());
//		System.out.println("관리자 암호화 된 비번: "+a.getAdmin_pwd());
//		System.out.println("관리자 이름: "+a.getAdmin_name());
//		System.out.println("관리자 별명: "+a.getAdmin_nick());
//		this.adminService.insertAdmin(a);//관리자 아이디,암호화된 비번,관리자 이름,관리자 별명을 저장
//		
//		//AdminVO admin_pwd=this.adminService.adminLiginCheck(a.getAdmin_id());//관리자 로그인 체크

		//일반 사용자 로그인
		if(mem_pwd == null) {//가입이 안된 회원이거나 비밀번호가 틀리면 아래의 코드 내용이 파일로 저장이 된다?
			out.println("<script>");
			out.println("alert('가입 안된 회원입니다.');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			if(!mem_pwd.getMem_pwd().equals(PwdChange.getPassWordToXEMD5String(login_pwd))) {
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
			}else {
				session.setAttribute("id", login_id);
				return "redirect:/";
			}
		}
//		
//		//관리자 로그인
//		if(admin_pwd == null) {
//			out.println("<script>");
//			out.println("alert('관리자 정보가 없습니다');");
//			out.println("history.go(-1);");//history.back()과 같다. 이전 주소 즉 이전 창으로 이동
//			out.println("</script>");
//		}else {
//			if(!admin_pwd.getAdmin_pwd().equals(a.getAdmin_pwd())) {
//				out.println("<script>");
//				out.println("alert('관리자 비번이 다릅니다!');");
//				out.println("history.back();");
//				out.println("</script>");
//			}else {
//				session.setAttribute("admin_id", a.getAdmin_id());//세선 키이름 admin_id에 관리자 아이디 저장
//				session.setAttribute("admin_nick", admin_pwd.getAdmin_nick());//세션 키이름 admin_name에 관리자 이름 저장
//				
//				return "redirect:/login_manager";//관리자 메인화면으로 이동
//			}
//		}
		return null;
	}
}
