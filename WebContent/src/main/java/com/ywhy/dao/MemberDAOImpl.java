package com.ywhy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

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
	
	@Override
	public MemberVO getMember(String login) {
		return this.sqlSession.selectOne("mem_get", login);
	}//id세션에 해당하는 정보 불러오기
	
	@Override
	public void editMember(MemberVO m) {
		this.sqlSession.update("mem_edit", m);
	}//아이디를 기준으로 이름,닉네임 정보 수정

	@Override
	public void delMem(MemberVO dm) {
		this.sqlSession.delete("mem_del", dm);
	}//회원 탈퇴

	@Override
	public List<BoardVO> getBList(BoardVO b) {
	    return this.sqlSession.selectList("BList", b);
	}

    @Override
    public List<BoardVO> getQList(BoardVO b) {
       return this.sqlSession.selectList("QList", b);
    }

    @Override
    public List<BoardVO> getPList(BoardVO b) {
       return this.sqlSession.selectList("PList", b);
    }

    @Override
    public List<NoticeVO> getNList(NoticeVO n) {
       return this.sqlSession.selectList("NList", n);
    }

























}
