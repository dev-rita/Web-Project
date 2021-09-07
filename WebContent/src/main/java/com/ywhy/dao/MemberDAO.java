package com.ywhy.dao;


import java.util.Map;

import com.ywhy.vo.MemberVO;

public interface MemberDAO {

	MemberVO idCheck(String id);
	
	void insertMember(MemberVO m);
	
	void updateAuthKey(Map<String, String> map);
	
	void updatefinalKey(Map<String, String> map);
	
	MemberVO loginCheck(String login_id);











}
