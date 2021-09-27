package com.ywhy.dao;


import java.util.Map;

import com.ywhy.vo.MemberVO;

public interface MemberDAO {

	MemberVO idCheck(String id);
	
	MemberVO emailCheck(String email);
	
	void insertMember(MemberVO m);
	
	void updateAuthKey(Map<String, String> map);
	
	void updatefinalKey(Map<String, String> map);
	
	MemberVO idFind(String find_email);
	
	MemberVO pwdFind(MemberVO m);
	
	MemberVO loginCheck(String login_id);

	void updatePwd(MemberVO m);

	void delMem(MemberVO login);





















}
