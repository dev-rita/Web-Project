package com.ywhy.service;

import javax.servlet.http.HttpServletRequest;

public interface MailSendService {

	String sendAuthMail(String mem_mail, HttpServletRequest request);

}
