package com.ywhy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.AdminMemberDAO;
import com.ywhy.vo.AdminVO;
import com.ywhy.vo.MemberVO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDAO adminMemberDao;

	@Override
	public int getListCount(MemberVO m) {
		return this.adminMemberDao.getListCount(m);
	}

	@Override
	public int getAllListCount(MemberVO m) {
		return this.adminMemberDao.getAllListCount(m);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO m) {
		return this.adminMemberDao.getMemberList(m);
	}

	@Override
	public void delMember(String mem_id) {
		this.adminMemberDao.delMember(mem_id);
	}
	
	@Override
	public void upgrade(String mem_id) {
	    this.adminMemberDao.upgrade(mem_id);
	}

	@Override
	public void downgrade(String mem_id) {
	    this.adminMemberDao.downgrade(mem_id);
	      
	}
}
