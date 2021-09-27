package com.ywhy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.AdminVO;
import com.ywhy.vo.MemberVO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount(MemberVO m) {
		return this.sqlSession.selectOne("m_count", m);
	}//관리자 회원을 제외한 일반 회원 수

	@Override
	public int getAllListCount(MemberVO m) {
		return this.sqlSession.selectOne("m_allcount", m);
	}//관리자 회원을 포함한 일반 회원 검색 전,후 수

	@Override
	public List<MemberVO> getMemberList(MemberVO m) {
		return this.sqlSession.selectList("m_allList",m);
	}//관리자 회원을 포함한 일반 회원 검색 전,후 목록

	@Override
	public void delMember(String mem_id) {
		this.sqlSession.delete("m_del", mem_id);
	}//관리자가 회원 탈퇴시키기
}
