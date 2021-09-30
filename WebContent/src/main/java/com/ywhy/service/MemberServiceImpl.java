package com.ywhy.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.MemberDAO;
import com.ywhy.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDao;
	
	
	@Override
	public MemberVO idCheck(String id) {
		return this.memberDao.idCheck(id);
	}
	
	@Override
	public MemberVO emailCheck(String email) {
		return this.memberDao.emailCheck(email);
	}

	@Override
	public void insertMember(MemberVO m) {
		this.memberDao.insertMember(m);
	}
	
	@Override
	public void updateAuthKey(Map<String, String> map) {
		this.memberDao.updateAuthKey(map);
	}
	
	@Override
	public void updatefinalKey(Map<String, String> map) {
		this.memberDao.updatefinalKey(map);
	}
	
	@Override
	public MemberVO idFind(String find_email) {
		return this.memberDao.idFind(find_email);
	}
	
	@Override
	public MemberVO pwdFind(MemberVO m) {
		return this.memberDao.pwdFind(m);
	}
	
	@Override
	public void updatePwd(MemberVO m) {
		this.memberDao.updatePwd(m);
	}

	@Override
	public MemberVO loginCheck(String login_id) {
		return this.memberDao.loginCheck(login_id);
	}
	
	@Override
	public MemberVO getMember(String login) {
		return this.memberDao.getMember(login);
	}
	
	@Override
	public void editMember(MemberVO m) {
		this.memberDao.editMember(m);
	}

	@Override
	public void delMem(MemberVO dm) {
		this.memberDao.delMem(dm);
	}


























}
