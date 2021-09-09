package com.ywhy.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO idCheck(String id) {
		return this.sqlSession.selectOne("m_check", id);
	}//아이디 중복확인
	
	@Override
	public void insertMember(MemberVO m) {
		this.sqlSession.insert("mem_insert", m);
	}//회원가입
	
	@Override
	public void updateAuthKey(Map<String, String> map) {
		this.sqlSession.update("mem_key", map);
	}//회원가입 이메일 인증 키 저장
	
	@Override
	public void updatefinalKey(Map<String, String> map) {
		this.sqlSession.update("up_mem_key", map);
	}//회원가입 이메일 인증 후 키 변경
	
	@Override
	public MemberVO loginCheck(String login_id) {
		return this.sqlSession.selectOne("login_check", login_id);
	}//로그인 인증











}
