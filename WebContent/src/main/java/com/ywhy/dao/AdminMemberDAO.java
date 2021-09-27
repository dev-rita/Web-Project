package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.MemberVO;

public interface AdminMemberDAO {

	int getListCount(MemberVO m);

	int getAllListCount(MemberVO m);

	List<MemberVO> getMemberList(MemberVO m);

	void delMember(String mem_id);

}
