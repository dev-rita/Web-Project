package com.ywhy.service;

import java.util.List;
import java.util.Map;

import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

public interface MemberService {

	MemberVO idCheck(String id);
	
	MemberVO emailCheck(String email);
	
	void insertMember(MemberVO m);
	
	void updateAuthKey(Map<String, String> map);
	
	void updatefinalKey(Map<String, String> map);
	
	MemberVO idFind(String find_email);
	
	MemberVO pwdFind(MemberVO m);
	
	void updatePwd(MemberVO m);
	
	MemberVO loginCheck(String login_id);
	
	MemberVO getMember(String login);
	
	void editMember(MemberVO m);

	void delMem(MemberVO dm);

	List<BoardVO> getBList(BoardVO b);

	List<BoardVO> getQList(BoardVO b);

	List<BoardVO> getPList(BoardVO b);

	List<NoticeVO> getNList(NoticeVO n);























}
