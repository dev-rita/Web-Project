package com.ywhy.service;

import java.util.Map;

import com.ywhy.vo.MemberVO;

public interface MemberService {

	MemberVO idCheck(String id);
	
	void insertMember(MemberVO m);
	
	void updateAuthKey(Map<String, String> map);
	
	void updatefinalKey(Map<String, String> map);
	
	MemberVO loginCheck(String login_id);







}
