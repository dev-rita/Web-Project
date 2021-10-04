package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.MemberVO;

public interface AdminMemberService {

	int getListCount(MemberVO m);

	int getAllListCount(MemberVO m);

	List<MemberVO> getMemberList(MemberVO m);

	void delMember(String mem_id);

	void upgrade(String mem_id);

	void downgrade(String mem_id);

}
