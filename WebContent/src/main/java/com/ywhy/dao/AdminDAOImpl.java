package com.ywhy.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertAdmin(AdminVO a) {
		this.sqlSession.insert("admin_in",a);
	}
}
