package com.ywhy.controller;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ywhy.service.MailSendService;
import com.ywhy.service.MemberService;
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.HistoryVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

import pwdconv.PwdChange;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendService mailSendService;

	/*회원가입 폼*/
	@GetMapping("/signup")
	public String signup(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		 
		 if(login == null) {
			 return "signup/signup";
		 }
		 else{
			 out.println("<script>");
             out.println("location='/controller';");
             out.println("</script>");
             return null;
		 }
	}
	
	/*회원가입 약관 폼*/
	@GetMapping("/user_membershipTermsandConditions")
	public String user_membershipTermsandConditions() {
		return "/user/MembershipTermsandConditions";
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
	
	/*회원가입 이메일 유효성 검증*/
	@PostMapping("/mem_mailcheck")
	public String mem_mailcheck(String email,HttpServletResponse response)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		MemberVO db_id=this.memberService.emailCheck(email);//db로부터 이메일 중복 검색
		
		int re=-1;//중복 이메일이 없을 때 반환된 값
		
		if(db_id != null) {//중복 이메일이 있는 경우
			re=1;
		}
		
		out.println(re);//값 반환
		
		return null;
	}
	/*회원가입 닉네임 유효성 검증*/
	   @PostMapping("/mem_nickcheck")
	   public String mem_nickcheck(String nick,HttpServletResponse response) throws Exception {
	      response.setContentType("text/html;charset=utf-8");
	      PrintWriter out=response.getWriter();
	      
	      MemberVO db_id=this.memberService.nickCheck(nick);
	      
	      int re=-1;
	      
	      if(db_id != null) {//중복 닉네임이 있는 경우
	         re=1;
	      }
	      
	      out.println(re);
	      
	      return null;
	   }
	
	/*일반 사용자 회원 저장*/
	@PostMapping("/signup_ok")
	public String signup_ok(MemberVO m,Model model,HttpServletRequest request) {
		//MemberVO 빈클래스의 변수명과 member_join.jsp의 네임 파라미터 이름이 동일하면 m에 입력한 회원정보가 저장된다.
		//sqlException 1111 부적합한 열 유형 or nullpointException -> VO빈클래스의 변수명과 뷰페이지의 네임 파라미터가 같지 않아서 생긴 에러
		
		System.out.println("비밀번호 암호화 전: "+m.getMem_pwd());
		m.setMem_pwd(PwdChange.getPassWordToXEMD5String(m.getMem_pwd()));//비밀번호 암호화
		System.out.println("비밀번호 암호화 후: "+m.getMem_pwd());
		System.out.println("입력된 아이디: "+m.getMem_id());
		System.out.println("입력된 메일: "+m.getMem_mail());
		System.out.println("입력된 이름: "+m.getMem_name());
		System.out.println("입력된 닉네임: "+m.getMem_nick());

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
		
		model.addAttribute("mem_mail",m.getMem_mail());
		
		return "redirect:/signup_complete";

	}
	
	/*회원가입 완료 후 메일 확인하라는 안내 페이지*/
	@GetMapping("/signup_complete")
	public String signup_complete(HttpServletResponse response,
			HttpSession session, Model model,MemberVO m) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		 
		 if(login == null) {
			 model.addAttribute("signup", m);
			return "signup/complete";
		 }else{
			 out.println("<script>");
             out.println("location='/controller';");
             out.println("</script>");
             return null;
		 }
	}
	
	/*회원 이메일 인증 후 회원가입 최종 성공*/
	@GetMapping("/signup_confirm")
	public ModelAndView signup_confirm(HttpServletResponse response, HttpSession session,
			@RequestParam Map<String,String> map,ModelAndView mav) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		
		if(login == null) {	
			try {
				System.out.println(map);
				//email,key가 일치할 경우 mem_key 업데이트
				this.memberService.updatefinalKey(map);
				
				mav.setViewName("signup/confirm");
				return mav;
			}catch(Exception e) {
				out.println("<script>");
		        out.println("location='/controller';");
		        out.println("</script>");
		        return null;
			}
		}else{
			 out.println("<script>");
             out.println("location='/controller';");
             out.println("</script>");
             return null;
		 }
		
	}
	
	/*아이디 찾기*/
	@GetMapping("/findId")
	public String findId(HttpServletResponse response, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		
		if(login==null) {
			return "user/find/findid";
		}else {
			out.println("<script>");
            out.println("location='/controller';");
            out.println("</script>");
			return null;
		}
	}
	
	/*아이디,비번 찾기 메일 작성 후 메일 확인하라는 안내 페이지*/
	@GetMapping("/find_lookmail")
	public String find_lookmail(HttpServletResponse response, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		if(login==null) {
			return "user/find/lookmail";
		}else {
			out.println("<script>");
            out.println("location='/controller';");
            out.println("</script>");
			return null;
		}
	}
	
	/*아이디 찾기 이메일 입력 후 메일보내기*/
	@PostMapping("/findId_ok")
	public String findId_ok(String find_email,HttpServletRequest request,HttpServletResponse response)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		MemberVO m=this.memberService.idFind(find_email); //메일 검색
		
		int re=1;
		if(m == null) {
			re=0;
		}else {
			this.mailSendService.sendFindId(m.getMem_mail(),m.getMem_id(),request);
		}
		out.println(re);
		
		return null;
	}
	
	/*비번 찾기*/
	@GetMapping("/findPwd")
	public String findPwd(HttpServletResponse response, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		if(login==null) {
			return "user/find/findpwd";
		}else {
			out.println("<script>");
            out.println("location='/controller';");
            out.println("</script>");
			return null;
		}
	}
	
	/*비번 찾기 아이디,이메일 입력 후 메일 보내기*/
	@PostMapping("/findPwd_ok")
	public String findPwd_ok(String find_id2,String find_email2,MemberVO m,HttpServletRequest request,HttpServletResponse response)throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	
		m.setMem_id(find_id2); m.setMem_mail(find_email2);//아이디와 이메일을 입력받음
		MemberVO pwd=this.memberService.pwdFind(m);//입력받은 회원 아이디와 이름을 기준으로 오라클로부터 회원정보 검색
		
		int re=1;
		if(pwd == null) {
			re=0;
		}else {
			Random r=new Random();
			int pwd_random=r.nextInt(100000);//임의의 정수 숫자 난수를 발생시킴
			String ran_pwd=Integer.toString(pwd_random);//임시 정수 비번을 문자열로 변경
			m.setMem_pwd(PwdChange.getPassWordToXEMD5String(ran_pwd));//임시 비번을 암호화
			
			this.memberService.updatePwd(m);//임시 비밀번호를 수정
			
			this.mailSendService.sendFindPwd(m.getMem_mail(),ran_pwd,request);//임시 비밀번호 메일로 발송
		}
		out.println(re);
		
		return null;
	}
	
	/*로그인 폼 - 관리자,일반 사용자*/
	@GetMapping("/login")
	public String login(HttpServletResponse response, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String login=(String)session.getAttribute("id");
		if(login==null) {
			return "signup/login";
		}
		else {
			out.println("<script>");
            out.println("location='/controller';");
            out.println("</script>");
			return null;
		}
	}
	
	/*관리자 생성 + 일반 사용자,관리자 로그인 인증*/
	@PostMapping("/login_ok")
	public String login_ok(/*AdminVO a,*/String login_id,String login_pwd,HttpSession session,HttpServletResponse response,Model model) throws Exception {
		//java.sql.SQLException: 부적합한 열 유형: 1111 - 매개변수와 뷰페이지의 네임 파라미터가 같지 않아서 생긴 에러
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out= response.getWriter();
		
		MemberVO m=this.memberService.loginCheck(login_id);
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
		int re=1;//로그인이 성공일 때
		if(m == null) {//일치하는 아이디가 없는 경우
			re=0;		
		}else {
			if(!m.getMem_pwd().equals(PwdChange.getPassWordToXEMD5String(login_pwd))) {
				re=0;	
			}else {
				session.setAttribute("id",login_id);
//				if(request.getParameter("useCookie") != null) {
//					//쿠키 생성
//					//7일 기간 사이에 접속한 적이 있다는 것을 확인한 뒤 과거의 로그인 시점에 기록된 정보를 이용해 다시 HttpSession에 m이라는 이름으로 MemberVO객체를 보관한다.
//					Cookie loginCookie=new Cookie("loginCookie",session.getId());
//					loginCookie.setPath(".");
//					loginCookie.setMaxAge(60*60*24*7);
//					//쿠키 전송
//					response.addCookie(loginCookie);
//				}
//				
//				if(l.isUseCookie()) {
//					int amount=60*60*24*7;//7일
//					Date sessionLimit=new Date(System.currentTimeMillis()+(1000*amount));//로그인 유지기간 설정
//					this.memberService.keepLogin(m,session.getId(),sessionLimit)
//				}
//				Object destination=session.getAttribute("destination");
//				response.sendRedirect(destination!=null ? (String)destination : ".");
			}
		}
		out.print(re);
		
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
	
	/*시작페이지(로그인 전,후)*/
	   @RequestMapping("/")//get or post로 접근하는 매핑주소를 처리
	   public ModelAndView index(Model listM, HttpServletRequest request, HttpSession session, BoardVO b, HttpServletResponse response, NoticeVO n) throws Exception{
	      response.setContentType("text/html;charset=utf-8");
	      
	      List<BoardVO> blist=this.memberService.getBList(b);
	      List<BoardVO> qlist=this.memberService.getQList(b);
	      List<BoardVO> plist=this.memberService.getPList(b);
	      List<NoticeVO> nlist=this.memberService.getNList(n);   

	      listM.addAttribute("blist", blist);//blist속성 키이름에 목록을 저장
	      listM.addAttribute("qlist", qlist);//blist속성 키이름에 목록을 저장
	      listM.addAttribute("plist", plist);//blist속성 키이름에 목록을 저장
	      listM.addAttribute("nlist", nlist);//blist속성 키이름에 목록을 저장
	      
	      String login=(String)session.getAttribute("id");
	      ModelAndView mav=new ModelAndView("index");
	      
	      if(login == null) {
	         
	      }else {
	         MemberVO m=this.memberService.getMember(login);
	         mav.addObject("m",m);
	      }
	      
	      return mav;
	   }
	
    /*footer의 About*/
    @GetMapping("/intro_about")
    public String about(Model model,HttpServletResponse response,HttpSession session) throws Exception {
       response.setContentType("text/html;charset=utf-8");
       
       String login=(String)session.getAttribute("id");
       if(login!=null) {
          MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
          
          model.addAttribute("m",m);
       }
          List<HistoryVO> hlist=this.memberService.getHistory();
          model.addAttribute("hlist", hlist);
          return "intro/about";
     }
    
	
	/*footer의 개인정보보호*/
	@GetMapping("/user_privacy")
	public ModelAndView privacy() {
		return new ModelAndView("user/privacy"); //뷰페이지 경로가 /WEB-INF/views/user/privacy.jsp
	}
	
	/*정보수정 페이지*/
	@GetMapping("/editinfo")
	public ModelAndView editinfo(HttpServletResponse response,HttpSession session)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
			
			ModelAndView em=new ModelAndView("signup/editinfo");
			em.addObject("m",m);
			
			return em;
		}
		return null;
	}
	
	/*정보수정 완료*/
	@PostMapping("/editinfo_ok")
	public String editinfo_ok(MemberVO m,HttpServletResponse response,HttpSession session) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			m.setMem_id(login);
			
			this.memberService.editMember(m);//정보수정
			//아이디를 기준으로 이름,닉네임 변경
			
			out.println("<script>");
			out.println("alert('정보 수정을 완료했습니다.');");
			out.println("location='editinfo';");
			out.println("</script>");
		}
		return null;
	}
	
	/*비밀번호 변경 폼*/
	@GetMapping("/passwordChange")
	public ModelAndView passwordChange(HttpServletResponse response,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
			
			ModelAndView em=new ModelAndView("user/find/passwordchange");
			em.addObject("m",m);
			
			return em;
		}
		return null;
	}
	
	/*비밀번호 변경 완료 폼*/
	@PostMapping("/passwordChange_ok")
	public String passwordChange_ok(MemberVO m,String changepwd,HttpServletResponse response,HttpSession session)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			m.setMem_id(login);
			m.setMem_pwd(PwdChange.getPassWordToXEMD5String(changepwd));
			
			this.memberService.updatePwd(m);//아이디를 기준으로 비밀번호 변경
			
			out.println("<script>");
			out.println("alert('비밀번호 변경이 완료되었습니다.)';");
			out.println("</script>");
		}

		return "redirect:/editinfo";
	}
	
	/*로그아웃*/
	@PostMapping("/logout")
	public String logout(HttpSession session) throws Exception{

		session.invalidate();//세션 만료 즉 로그아웃 처리
		return "redirect:/";
	}
	
	/*회원 탈퇴 폼*/
	@GetMapping("/withdrawal")
	public ModelAndView withdrawal(HttpServletResponse response,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			MemberVO m=this.memberService.getMember(login);//아이디에 해당하는 회원정보 가져옴
			
			ModelAndView em=new ModelAndView("signup/withdrawal");
			em.addObject("m",m);
			
			return em;
		}
		return null;
	}
	
	/*회원 탈퇴 완료*/
	@PostMapping("/withdrawal_ok")
	public String withdrawal_ok(HttpServletResponse response,HttpSession session) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String login=(String)session.getAttribute("id");
		
		if(login == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='login';");
			out.println("</script>");
		}else {
			MemberVO dm=new MemberVO();
			dm.setMem_id(login);
			this.memberService.delMem(dm); //회원 삭제
			
			session.invalidate();
			
			out.println("<script>");
			out.println("alert('회원 탈퇴 했습니다. 이용해 주셔서 감사합니다.');");
			out.println("location='.';");
			out.println("</script>");
		}
		return null;
	}
	
	@RequestMapping(value="/login.do")
	public String loginview(Model model, HttpSession session) {
		String kakaoUrl = "";
				
		return "login";		
	}

}
