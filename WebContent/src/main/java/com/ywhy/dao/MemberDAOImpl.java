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
	public MemberVO emailCheck(String email) {
		return this.sqlSession.selectOne("m_check2", email);
	}//이메일 중복확인
	
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
	public MemberVO idFind(String find_email) {
		return this.sqlSession.selectOne("mail_check", find_email);
	}//아이디 찾기 이메일
	
	@Override
	public MemberVO pwdFind(MemberVO m) {
		return this.sqlSession.selectOne("idmail_check", m);
	}//비번 찾기 아이디,이메일
	
	@Override
	public void updatePwd(MemberVO m) {
		this.sqlSession.update("edit_pwd", m);
	}//비밀번호 변경
	
	@Override
	public MemberVO loginCheck(String login_id) {
		return this.sqlSession.selectOne("login_check", login_id);
	}//로그인 인증























}
