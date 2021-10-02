package com.ywhy.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.MemberDAO;
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.MemberVO;
import com.ywhy.vo.NoticeVO;

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

	 @Override
	   public List<BoardVO> getBList(BoardVO b) {
	      return this.memberDao.getBList(b);
	   }

	   @Override
	   public List<BoardVO> getQList(BoardVO b) {
	      return this.memberDao.getQList(b);
	   }

	   @Override
	   public List<BoardVO> getPList(BoardVO b) {
	      return this.memberDao.getPList(b);
	   }

	   @Override
	   public List<NoticeVO> getNList(NoticeVO n) {
	      return this.memberDao.getNList(n);
	   }	



}
