package com.ywhy.service;

import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import pwdconv.PwdChange;

@Service("mailSendService")
public class MailSendServiceImpl implements MailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;

	//난수만드는 메서드를 이용해서 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck,int size) {
		this.lowerCheck=lowerCheck;
		this.size = size;
		return init();
	}
	
	//이메일 난수 만드는 메서드
	private String init() {
		Random r=new Random();
		StringBuffer sb=new StringBuffer();
		int num=0;
		
		do {
			num = r.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}
	
	@Override
	public String sendAuthMail(String mem_mail,HttpServletRequest request) {
		String authKey=getKey(false,20);
		MimeMessage mail=this.mailSender.createMimeMessage();
		String mailContent="<h1>[YWHY - 회원가입 이메일 인증]</h1><br>"
				+ "<h3>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</h3>"
                + "<a href='http://localhost:8088"+request.getContextPath()+"/signup_confirm?"
                + "email="+ mem_mail + "&key=" + authKey + "' target='_blenk'>이메일 인증 확인</a>";
		try {
			mail.setSubject("YWHY - 회원가입 이메일 인증", "utf-8");
			mail.setText(mailContent, "utf-8", "html");
			mail.addRecipient(Message.RecipientType.TO, new InternetAddress(mem_mail));
			this.mailSender.send(mail);
		}catch(Exception e){
			e.printStackTrace();
		}
		return authKey;
	}

	@Override
	public void sendFindId(String mem_mail, String mem_id, HttpServletRequest request) {
		MimeMessage mail=this.mailSender.createMimeMessage();
		String mailContent="<h1>아이디 찾기</h1><br>"
				+ "<font color='black' size='4'>회원님의 아이디는 <b>" + mem_id + "</b> 입니다.</font><br><br>";
		try {
			mail.setSubject("YWHY - 문의하신 계정 정보", "utf-8");
			mail.setText(mailContent, "utf-8", "html");
			mail.addRecipient(Message.RecipientType.TO, new InternetAddress(mem_mail));
			this.mailSender.send(mail);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void sendFindPwd(String mem_mail, String ran_pwd, HttpServletRequest request) {
		MimeMessage mail=this.mailSender.createMimeMessage();
		String mailContent="<h1>임시 비밀번호</h1><br>"
				+ "<font color='black' size='4'>회원님의 임시 비밀번호는 <b>" + ran_pwd + "</b> 입니다.</font><br><br>"
				+ "<font color='black' size='4'>**타인에게 노출을 권장하지 않습니다.**</font>";
		try {
			mail.setSubject("YWHY - 문의하신 계정 정보", "utf-8");
			mail.setText(mailContent, "utf-8", "html");
			mail.addRecipient(Message.RecipientType.TO, new InternetAddress(mem_mail));
			this.mailSender.send(mail);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
