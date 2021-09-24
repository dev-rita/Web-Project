package com.ywhy.service;


import javax.servlet.http.HttpServletRequest;

public interface MailSendService {

	String sendAuthMail(String mem_mail, HttpServletRequest request);

	void sendFindId(String mem_mail, String mem_id, HttpServletRequest request);

	void sendFindPwd(String mem_mail, String ran_pwd, HttpServletRequest request);

}
