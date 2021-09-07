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
	public MemberVO loginCheck(String login_id) {
		return this.memberDao.loginCheck(login_id);
	}










}
